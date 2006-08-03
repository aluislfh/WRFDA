subroutine da_wrfvar_init( no_init1 )

   !<DESCRIPTION>
   !     WRF initialization routine.
   !</DESCRIPTION>

   LOGICAL, OPTIONAL, INTENT(IN) :: no_init1

   !<DESCRIPTION>
   ! Program_name, a global variable defined in frame/module_domain.F, is
   ! set, then a routine <a href=init_modules.html>init_modules</a> is
   ! called. This calls all the init programs that are provided by the
   ! modules that are linked into WRF.  These include initialization of
   ! external I/O packages.   Also, some key initializations for
   ! distributed-memory parallelism occur here if DM_PARALLEL is specified
   ! in the compile: setting up I/O quilt processes to act as I/O servers
   ! and dividing up MPI communicators among those as well as initializing
   ! external communication packages such as RSL or RSL_LITE.
   !
   !</DESCRIPTION>

   program_name = wrfvar_version//" (COMPATIBLE WITH "//wrf_version//") MODEL"

   ! Initialize WRF modules:  
   ! Phase 1 returns after MPI_INIT() (if it is called)
   IF (.NOT. PRESENT(no_init1)) THEN
      call init_modules(1)
      ! Initialize utilities (time manager, etc.)
      call wrfu_initialize(defaultCalendar=WRFU_CAL_GREGORIAN)
   ENDIF
   ! Phase 2 resumes after MPI_INIT() (if it is called)
   call init_modules(2)

   IF (print_detail_timing) THEN
      call start_timing ! end_timing call in wrfvar_finalize
   END IF

   !<DESCRIPTION>
   ! The wrf namelist.input file is read and stored in the USE associated
   ! structure model_config_rec, defined in frame/module_configure.F, by the
   ! call to <a href=initial_config.html>initial_config</a>.  On distributed
   ! memory parallel runs this is done only on one processor, and then
   ! broadcast as a buffer.  For distributed-memory, the broadcast of the
   ! configuration information is accomplished by first putting the
   ! configuration information into a buffer (<a
   ! href=get_config_as_buffer.html>get_config_as_buffer</a>), broadcasting
   ! the buffer, then setting the configuration information (<a
   ! href=set_config_as_buffer.html>set_config_as_buffer</a>).
   !
   !</DESCRIPTION>

#ifdef DM_PARALLEL
   IF ( wrf_dm_on_monitor() ) THEN
      call initial_config
   ENDIF
   call get_config_as_buffer( configbuf, configbuflen, nbytes )
   call wrf_dm_bcast_bytes( configbuf, nbytes )
   call set_config_as_buffer( configbuf, configbuflen )
   call wrf_dm_initialize
#else
   call initial_config
#endif

   ! Copy namelist variables to DA_Constants

#define SOURCE_RECORD model_config_rec%
#define DEST_RECORD

#include "config_assigns.inc"

   IF (trace_use) call da_trace_init
   IF (trace_use) call da_trace_entry("da_wrfvar_init")

   !<DESCRIPTION>
   ! Among the configuration variables read from the namelist is
   ! debug_level. This is retrieved using nl_get_debug_level (Registry
   ! generated and defined in frame/module_configure.F).  The value is then
   ! used to set the debug-print information level for use by <a
   ! href=wrf_debug.html>wrf_debug</a> throughout the code. Debug_level
   ! of zero (the default) causes no information to be printed when the
   ! model runs. The higher the number (up to 1000) the more information is
   ! printed.
   ! 
   !</DESCRIPTION>

   CALL nl_get_debug_level ( 1, debug_level )
   CALL set_wrf_debug_level ( debug_level )

   NULLIFY( null_domain )

   !<DESCRIPTION>
   ! RSL is required for WRF nesting options.
   ! The non-MPI build that allows nesting is only supported on machines
   ! with the -DSTUBMPI option.  Check to see if the WRF model is being asked 
   ! for a for a multi-domain run (max_dom > 1, from the namelist).  If so,
   ! then we check to make sure that we are under the parallel
   ! run option or we are on an acceptable machine.
   !</DESCRIPTION>

   ! JRB This is the way we will use namelist variables once module_namelists goes
   ! call nl_get_max_dom( 1, max_dom )
   IF ( max_dom > 1 ) THEN
#if (! defined(DM_PARALLEL) && ! defined(STUBMPI))
      call da_error(__FILE__,__LINE__, &
         (/'nesting requires either an MPI build or use of the -DSTUBMPI option'/)) 
#endif
   END IF

   !<DESCRIPTION>
   ! The top-most domain in the simulation is then allocated and configured
   ! by calling <a href=alloc_and_configure_domain.html>alloc_and_configure_domain</a>.
   ! Here, in the case of this root domain, the routine is passed the
   ! globally accessible pointer to TYPE(domain), head_grid, defined in
   ! frame/module_domain.F.  The parent is null and the child index is given
   ! as negative, signifying none.  Afterwards, because the call to
   ! alloc_and_configure_domain may modify the model configuration data
   ! stored in model_config_rec, the configuration information is again
   ! repacked into a buffer, broadcast, and unpacked on each task (for
   ! DM_PARALLEL compiles). The call to <a
   ! href=setup_timekeeping.html>setup_timekeeping</a> for head_grid relies
   ! on this configuration information, and it must occur after the second
   ! broadcast of the configuration information.
   ! 
   !</DESCRIPTION>

   call wrf_message ( program_name )
   call wrf_message ( "Subversion "//subversion_version)
   call wrf_debug ( 100 , 'wrf: calling alloc_and_configure_domain ' )
   call alloc_and_configure_domain ( domain_id  = 1 ,                  &
                                     grid       = head_grid ,          &
                                     parent     = null_domain ,        &
                                     kid        = -1                   )

   call wrf_debug ( 100 , 'wrf: calling model_to_grid_config_rec ' )
   call model_to_grid_config_rec ( head_grid%id , model_config_rec , config_flags )
   call wrf_debug ( 100 , 'wrf: calling set_scalar_indices_from_config ' )
   call set_scalar_indices_from_config ( head_grid%id , idum1, idum2 )
   call wrf_debug ( 100 , 'wrf: calling init_wrfio' )
   call init_wrfio

#ifdef DM_PARALLEL
   call get_config_as_buffer( configbuf, configbuflen, nbytes )
   call wrf_dm_bcast_bytes( configbuf, nbytes )
   call set_config_as_buffer( configbuf, configbuflen )
#endif

   call Setup_Timekeeping (head_grid)

   !<DESCRIPTION>
   ! The head grid is initialized with read-in data through the call to <a
   ! href=med_initialdata_input.html>med_initialdata_input</a>, which is
   ! passed the pointer head_grid and a locally declared configuration data
   ! structure, config_flags, that is set by a call to <a
   ! href=model_to_grid_config_rec.html>model_to_grid_config_rec</a>.  It is
   ! also necessary that the indices into the 4d tracer arrays such as
   ! moisture be set with a call to <a
   ! href=set_scalar_indices_from_config.html>set_scalar_indices_from_config</a>
   ! prior to the call to initialize the domain.  Both of these calls are
   ! told which domain they are setting up for by passing in the integer id
   ! of the head domain as <tt>head_grid%id</tt>, which is 1 for the
   ! top-most domain.
   ! 
   ! In the case that write_restart_at_0h is set to true in the namelist,
   ! the model simply generates a restart file using the just read-in data
   ! and then shuts down. This is used for ensemble breeding, and is not
   ! typically enabled.
   ! 
   !</DESCRIPTION>

   ! call med_initialdata_input( head_grid , config_flags )

   IF ((config_flags%real_data_init_type == 1) .or. &
       (config_flags%real_data_init_type == 3)) THEN
      call da_med_initialdata_input( head_grid , config_flags)
   END IF

   ! JRB
   CALL da_warning(__FILE__,__LINE__,(/"Fix me"/))
   !  head_grid%start_subtime = head_grid%start_time
   !  head_grid%stop_subtime = head_grid%stop_time

  IF (trace_use) call da_trace_exit("da_wrfvar_init")

end subroutine da_wrfvar_init
