# da

WRFVAR_OBJS = da_par_util.o \
   da_par_util1.o \
   da_setup_structures.o \
   da_transfer_model.o \
   da_minimisation.o \
   da_vtox_transforms.o \
   da_obs.o \
   da_obs_io.o \
   da_metar.o \
   da_geoamv.o \
   da_polaramv.o \
   da_ships.o \
   da_synop.o \
   da_sound.o \
   da_mtgirs.o \
   da_bogus.o \
   da_airep.o \
   da_pilot.o \
   da_radar.o \
   da_gpspw.o \
   da_gpsref.o \
   da_ssmi.o \
   module_ssmi.o \
   da_satem.o \
   da_qscat.o \
   da_pseudo.o \
   da_profiler.o \
   da_buoy.o \
   da_dynamics.o \
   da_physics.o \
   f_qv_from_rh.o \
   da_ffts.o \
   module_ffts.o \
   da_test.o \
   da_tools.o \
   da_tools_serial.o \
   da_wrf_interfaces.o \
   da_rsl_interfaces.o \
   da_recursive_filter.o \
   da_interpolation.o \
   da_grid_definitions.o \
   da_statistics.o \
   da_define_structures.o \
   da_control.o \
   gamma1.o \
   da_spectral.o \
   da_radiance.o \
   da_radiance1.o \
   da_rttov.o \
   da_crtm.o \
   da_varbc.o \
   module_radiance.o \
   da_tracing.o \
   gsi_kinds.o \
   gsi_constants.o \
   gsi_thinning.o \
   da_wrfvar_io.o \
   da_airsr.o \
   da_wrfvar_top.o \
   da_reporting.o \
   module_wrf_error.o \
   module_configure.o \
   module_state_description.o \
   module_timing.o \
   module_driver_constants.o \
   module_domain.o \
   module_machine.o \
   module_utility.o \
   module_symbols_util.o \
   module_date_time.o \
   module_io_wrf.o \
   module_io.o \
   module_io_domain.o \
   module_io_quilt.o \
   module_dm.o \
   module_comm_dm.o \
   module_bc.o \
   module_model_constants.o \
   module_internal_header_util.o \
   module_integrate.o \
   module_nesting.o \
   module_tiles.o \
   module_quilt_outbuf_ops.o \
   module_get_file_names.o \
   module_bc_time_utilities.o \
   solve_interface.o \
   mediation_feedback_domain.o \
   mediation_force_domain.o \
   mediation_interp_domain.o \
   nest_init_utils.o \
   wrf_fddaobs_in.o \
   landread.o \
   wrf_io.o \
   io_int.o \
   da_memory.o \
   wrf_debug.o \
   set_timekeeping.o \
   wrf_shutdown.o \
   init_modules.o \
   mediation_wrfmain.o \
   mediation_integrate.o \
   pack_utils.o \
   Meat.o \
   wrf_num_bytes_between.o \
   input_wrf.o \
   wrf_auxhist1in.o \
   wrf_auxhist2in.o \
   wrf_auxhist3in.o \
   wrf_auxhist4in.o \
   wrf_auxhist5in.o \
   wrf_auxhist6in.o \
   wrf_auxhist7in.o \
   wrf_auxhist8in.o \
   wrf_auxhist9in.o \
   wrf_auxhist10in.o \
   wrf_auxhist11in.o \
   wrf_auxhist1out.o \
   wrf_auxhist2out.o \
   wrf_auxhist3out.o \
   wrf_auxhist4out.o \
   wrf_auxhist5out.o \
   wrf_auxhist6out.o \
   wrf_auxhist7out.o \
   wrf_auxhist8out.o \
   wrf_auxhist9out.o \
   wrf_auxhist10out.o \
   wrf_auxhist11out.o \
   wrf_auxinput1in.o \
   wrf_auxinput2in.o \
   wrf_auxinput3in.o \
   wrf_auxinput4in.o \
   wrf_auxinput5in.o \
   wrf_auxinput6in.o \
   wrf_auxinput7in.o \
   wrf_auxinput8in.o \
   wrf_auxinput9in.o \
   wrf_auxinput10in.o \
   wrf_auxinput11in.o \
   wrf_auxinput1out.o \
   wrf_auxinput2out.o \
   wrf_auxinput3out.o \
   wrf_auxinput4out.o \
   wrf_auxinput5out.o \
   wrf_auxinput6out.o \
   wrf_auxinput7out.o \
   wrf_auxinput8out.o \
   wrf_auxinput9out.o \
   wrf_auxinput10out.o \
   wrf_auxinput11out.o \
   wrf_fddaobs_in.o \
   wrf_bdyin.o \
   wrf_bdyout.o \
   wrf_restartin.o \
   wrf_restartout.o \
   output_wrf.o \
   wrf_restartin.o \
   wrf_histin.o \
   wrf_histout.o \
   wrf_inputout.o \
   wrf_inputin.o \
   wrf_ext_read_field.o \
   wrf_ext_write_field.o \
   collect_on_comm.o \
   field_routines.o \
   start_domain.o \
   interp_fcn.o \
   couple_or_uncouple_em.o 

# Aliases
var : wrfvar
var_esmf : wrfvar_esmf

wrfvar : setup da_wrfvar.exe da_advance_time.exe da_update_bc.exe

wrfvar_esmf : setup da_wrfvar_esmf.exe da_advance_time.exe da_update_bc.exe

da_wrfvar.exe : $(WRFVAR_LIBS) da_wrfvar_main.o
	$(LD) -o $@ $(LDFLAGS) da_wrfvar_main.o $(WRFVAR_LIB)
	(cd ../da; $(LN) ../build/$@ .)

da_wrfvar_esmf.exe : $(WRFVAR_LIBS) da_wrfvar_esmf.o da_wrfvar_esmf_super.o
	$(LD) -o $@ $(LDFLAGS) da_wrfvar_esmf.o $(WRFVAR_LIB) \
          da_wrfvar_esmf_super.o
	(cd ../da; $(LN) ../build/$@.exe .)

da_advance_time.exe : da_advance_time.o
	$(RM) $@
	$(SFC) $(LDFLAGS) -o $@ da_advance_time.o
	(cd ../da; $(LN) ../build/$@ .)

inc/da_generic_boilerplate.inc: da_generic_boilerplate.m4
	@ $(RM) inc/da_generic_boilerplate.inc
	  $(M4) da_generic_boilerplate.m4 > inc/da_generic_boilerplate.inc

da_utils : setup \
           da_tune_obs_hollingsworth1.exe \
           da_tune_obs_hollingsworth2.exe \
           da_tune_obs_desroziers.exe \
           da_update_bc.exe \
           da_advance_time.exe \
           da_verif_obs.exe \
           da_verif_anal.exe \
           da_bias_airmass.exe \
           da_bias_sele.exe \
           da_bias_scan.exe \
           da_bias_scan.exe \
           da_bias_verif.exe \
           da_rad_diags.exe

da_verif_obs.exe : da_verif_obs.o da_verif_obs_control.o da_verif_obs_init.o
	$(SFC) -o $@ da_verif_obs.o da_verif_obs_control.o da_verif_obs_init.o
	(cd ../da; $(LN) ../build/$@ .)

da_verif_anal.exe : da_verif_anal.o da_verif_anal_control.o da_netcdf_interface.o $(NETCDF_LIBS)
	$(SFC) $(LDFLAGS) -o $@ da_verif_anal.o da_netcdf_interface.o \
           da_verif_anal_control.o $(NETCDF_LIB) $(LOCAL_LIB)
	(cd ../da; $(LN) ../build/$@ .)

da_tune_obs_hollingsworth1.exe: da_tune_obs_hollingsworth1.o
	$(SFC) -o $@ da_tune_obs_hollingsworth1.o da_control.o \
	   module_driver_constants.o
	(cd ../da; $(LN) ../build/$@ .)

da_tune_obs_hollingsworth2.exe: da_tune_obs_hollingsworth2.o
	$(SFC) -o $@ da_tune_obs_hollingsworth2.o da_control.o \
	    module_driver_constants.o
	(cd ../da; $(LN) ../build/$@ .)

da_tune_obs_desroziers.exe: da_tune_obs_desroziers.o
	$(SFC) -o $@ da_tune_obs_desroziers.o
	(cd ../da; $(LN) ../build/$@ .)

da_update_bc.exe : da_update_bc.o libwrfio_nf.a
	$(SFC) $(LDFLAGS) -L$(NETCDF_PATH)/lib -o $@ da_update_bc.o \
           da_netcdf_interface.o \
           da_module_couple_uv.o $(NETCDF_LIB) $(LOCAL_LIB)
	(cd ../da; $(LN) ../build/$@ .)

da_bias_airmass.exe : da_bias_airmass.o  rad_bias.o pythag.o tqli.o tred2.o regress_one.o
	$(FFC) -o  da_bias_airmass.exe da_bias_airmass.o rad_bias.o pythag.o tqli.o tred2.o regress_one.o
	(cd ../da; $(LN) ../build/$@ .)

da_bias_sele.exe : da_bias_sele.o rad_bias.o
	$(FFC) -o da_bias_sele.exe da_bias_sele.o rad_bias.o
	(cd ../da; $(LN) ../build/$@ .)

da_bias_scan.exe : da_bias_scan.o rad_bias.o
	$(FFC) -o da_bias_scan.exe da_bias_scan.o rad_bias.o
	(cd ../da; $(LN) ../build/$@ .)

da_bias_verif.exe : da_bias_verif.o rad_bias.o
	$(FFC) -o da_bias_verif.exe da_bias_verif.o rad_bias.o
	(cd ../da; $(LN) ../build/$@ .)

da_rad_diags.exe : da_rad_diags.o $(NETCDF_LIBS)
	$(FFC) -o da_rad_diags.exe da_rad_diags.o -L. $(NETCDF_LIB) $(LOCAL_LIB)
	(cd ../da; $(LN) ../build/$@ .)


# Special cases, either needing special include files or too big to 
# optimise/debug

da_wrfvar_top.o da_wrfvar_io.o :
	@ $(RM) $@
	@ $(SED_FTN) $*.f90 > $*.b
	@ $(CPP) $(CPPFLAGS) $(FPPFLAGS) $*.b  > $*.f
	@ $(RM) $*.b
	  $(FC) -c $(FCFLAGS_SIMPLE) $*.f

da_netcdf_interface.o da_module_couple_uv.o gen_be_etkf.o netcdf_interface.o :
	@ $(RM) $@
	@ $(SED_FTN) $*.f90 > $*.b
	@ $(CPP) $(CPPFLAGS) $(FPPFLAGS) -I$(NETCDF_INC) $*.b  > $*.f
	@ $(RM) $*.b
	  $(SFC) -c $(FCFLAGS_SIMPLE) $*.f

da_gen_be.o :
	@ $(RM) $@
	@ $(SED_FTN) $*.f90 > $*.b
	@ $(CPP) $(CPPFLAGS) $(FPPFLAGS) -I$(NETCDF_INC) $*.b  > $*.f
	@ $(RM) $*.b
	  $(SFC) -c $(FCFLAGS) -I$(LAPACK_INC) $*.f

da_etkf.o :
	@ $(RM) $@
	@ $(SED_FTN) $*.f90 > $*.b
	@ $(CPP) $(CPPFLAGS) $(FPPFLAGS) $*.b  > $*.f
	@ $(RM) $*.b
	  $(FC) -c $(FCFLAGS) -I$(LAPACK_INC) $*.f

gen_be_ensmean.o :
	@ $(RM) $@
	@ $(SED_FTN) $*.f90 > $*.b
	@ $(CPP) $(CPPFLAGS) $(FPPFLAGS) -I$(NETCDF_INC) $*.b  > $*.f
	@ $(RM) $*.b
	  $(FC) -c $(FCFLAGS) $*.f

da_tools.o :
	@ $(RM) $@
	@ $(SED_FTN) $*.f90 > $*.b
	@ $(CPP) $(CPPFLAGS) $(FPPFLAGS) $*.b  > $*.f
	@ $(RM) $*.b
	  $(FC) -c $(FCFLAGS) $*.f

module_radiance.o da_radiance.o :
	@ $(RM) $@
	@ $(SED_FTN) $*.f90 > $*.b
	@ $(CPP) $(CPPFLAGS) $(FPPFLAGS) -I$(RTTOV_INC) -I$(CRTM_INC) $*.b  > $*.f
	@ $(RM) $*.b
	  $(FC) -c $(FCFLAGS_SIMPLE) -I$(RTTOV_INC) -I$(CRTM_INC) $*.f

da_rttov.o :
	@ $(RM) $@
	@ $(SED_FTN) $*.f90 > $*.b
	@ $(CPP) $(CPPFLAGS) $(FPPFLAGS) -I$(RTTOV_INC) $*.b  > $*.f
	@ $(RM) $*.b
	  $(FC) -c $(FCFLAGS) -I$(RTTOV_INC) $*.f

da_spectral.o da_be_spectral.o :
	@ $(RM) $@
	@ $(SED_FTN) $*.f90 > $*.b
	@ $(CPP) $(CPPFLAGS) $(FPPFLAGS) $*.b  > $*.f
	@ $(RM) $*.b
	  $(FC) -c $(FCFLAGS) -I$(FFTPACK_INC) $*.f
