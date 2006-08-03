subroutine da_ao_stats_profiler( stats_unit, oi, re )

   IMPLICIT NONE

   INTEGER,        INTENT (in)      :: stats_unit    ! Output unit for stats.
   TYPE (ob_type), INTENT (in)      :: oi            ! OI
   TYPE ( y_type), INTENT (in)      :: re            ! A - O

   TYPE (stats_profiler_type)       :: Profiler
   INTEGER                          :: nu, nv
   INTEGER                          :: n, k

   LOGICAL, EXTERNAL :: wrf_dm_on_monitor

   nu = 0
   nv = 0
   num_profiler_tot = 0

   Profiler%maximum%u = maxmin_type( missing_r, 0, 0)
   Profiler%maximum%v = maxmin_type( missing_r, 0, 0)
   Profiler%minimum%u = maxmin_type(-missing_r, 0, 0)
   Profiler%minimum%v = maxmin_type(-missing_r, 0, 0)
   Profiler%average = residual_profiler1_type(0.0, 0.0)
   Profiler%rms_err = Profiler%average

   IF ( oi%num_Profiler > 0 ) THEN

      DO n=1, oi%num_Profiler

      if( oi%profiler(n)%loc%proc_domain ) then

       do k=1, oi%Profiler(n)%info%levels
         call da_stats_calculate( n, k, oi%Profiler(n)%u(k)%qc, & 
                               re%Profiler(n)%u(k), nu, & 
                               profiler%minimum%u, Profiler%maximum%u, &
                               profiler%average%u, Profiler%rms_err%u )
         call da_stats_calculate( n, k, oi%Profiler(n)%v(k)%qc, & 
                               re%Profiler(n)%v(k), nv, & 
                               Profiler%minimum%v, Profiler%maximum%v, &
                               Profiler%average%v, Profiler%rms_err%v )
       end do
      endif    ! end if( oi%profiler(n)%loc%proc_domain )
      END DO
      
   END IF

! Do inter-processor communication to gather statistics.
   call da_proc_sum_int( nu )
   call da_proc_sum_int( nv )
   num_profiler_tot = nu + nv
   
   call da_proc_stats_combine(Profiler%average%u, Profiler%rms_err%u, &
                           Profiler%minimum%u%value, Profiler%maximum%u%value, &
                           Profiler%minimum%u%n, Profiler%maximum%u%n, &
                           Profiler%minimum%u%l, Profiler%maximum%u%l )
   call da_proc_stats_combine(Profiler%average%v, Profiler%rms_err%v, &
                           Profiler%minimum%v%value, Profiler%maximum%v%value, &
                           Profiler%minimum%v%n, Profiler%maximum%v%n, &
                           Profiler%minimum%v%l, Profiler%maximum%v%l )
   
   IF ( wrf_dm_on_monitor() ) THEN
   
    IF ( nu /= 0 .or. nv /= 0 ) THEN
   
      write(unit=stats_unit, fmt='(/a/)') ' Diagnostics of AO for Profiler'
   
      call da_print_stats_profiler(stats_unit, nu, nv, Profiler)
   
    END IF
   
   END IF

end subroutine da_ao_stats_profiler
