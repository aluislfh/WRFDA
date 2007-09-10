module da_minimisation

   !---------------------------------------------------------------------------
   ! Purpose: Collection of routines associated with minimisation. 
   !---------------------------------------------------------------------------

   use module_configure, only : grid_config_rec_type,nl_set_dyn_opt
   use module_dm, only : wrf_dm_sum_real
   use module_domain, only : domain, xpose_type, x_type, ep_type, vp_type, &
      xb_type
   use module_state_description, only : dyn_em,dyn_em_tl

!#ifdef DM_PARALLEL
!   use mpi, only : mpi_barrier
!#endif

   use da_airep, only : da_calculate_grady_airep, da_ao_stats_airep, &
      da_oi_stats_airep, da_get_innov_vector_airep, da_residual_airep, &
      da_jo_and_grady_airep
   use da_airsr , only : da_calculate_grady_airsr, da_ao_stats_airsr, &
      da_oi_stats_airsr, da_get_innov_vector_airsr, da_residual_airsr, &
      da_jo_and_grady_airsr
   use da_bogus, only : da_calculate_grady_bogus, da_ao_stats_bogus, &
      da_oi_stats_bogus, da_get_innov_vector_bogus, da_residual_bogus, &
      da_jo_and_grady_bogus
   use da_buoy , only : da_calculate_grady_buoy, da_ao_stats_buoy, &
      da_oi_stats_buoy,da_get_innov_vector_buoy, da_residual_buoy, &
      da_jo_and_grady_buoy
   use da_control, only : trace_use,var4d_coupling_disk_simul, &
      var4d, rootproc,jcdfi_use,var4d_coupling,ierr,comm,num_fgat_time, &
      stdout, eps, stats_unit, testing_dm_exact, global, &
      calculate_cg_cost_fn,anal_type_randomcv,cv_size_domain,je_factor, &
      jb_factor,ntmax,omb_add_noise,write_iv_rad_ascii,use_obs_errfac, &
      rtm_option,rtm_option_rttov, rtm_option_crtm, use_crtm_kmatrix_fast, &
      write_filtered_rad,omb_set_rand, num_airsr_tot,jo_unit,num_airep_tot, &
      num_buoy_tot,num_geoamv_tot,num_gpsref_tot,num_pilot_tot, &
      num_polaramv_tot,num_radiance_tot,num_qscat_tot,num_profiler_tot, &
      num_metar_tot,num_gpspw_tot,num_bogus_tot,num_sound_tot,num_ssmi_tot, &
      num_ships_tot,num_ssmt2_tot,use_radiance,var_scaling2,var_scaling1, &
      num_synop_tot,var_scaling4,var_scaling5,var_scaling3,num_ssmt1_tot, &
      num_satem_tot,print_detail_grad,omb_set_rand,grad_unit,cost_unit, &
      cv_size_domain_je,cv_size_domain_jb,nsave,ftol,gtol,xtol,maxfev,stpmin,stpmax,lp,mp
   use da_crtm, only : da_get_innov_vector_crtmk, da_get_innov_vector_crtm
   use da_define_structures, only : ob_type, y_type, j_type, be_type, &
      xbx_type, jo_type, da_allocate_y,da_zero_x,da_deallocate_y
   use da_obs, only : da_transform_xtoy_adj,da_transform_xtoy, &
      da_add_noise_to_ob,da_random_omb_all
   use da_geoamv, only : da_calculate_grady_geoamv, da_ao_stats_geoamv, &
      da_oi_stats_geoamv, da_get_innov_vector_geoamv,da_residual_geoamv, &
      da_jo_and_grady_geoamv
   use da_gpspw, only : da_calculate_grady_gpspw, da_ao_stats_gpspw, &
      da_oi_stats_gpspw, da_get_innov_vector_gpspw, da_residual_gpspw, &
      da_jo_and_grady_gpspw
   use da_gpsref, only : da_calculate_grady_gpsref, da_ao_stats_gpsref, &
      da_oi_stats_gpsref, da_get_innov_vector_gpsref, da_residual_gpsref, &
      da_jo_and_grady_gpsref
   use da_obs_io, only : da_final_write_y, da_write_y, da_final_write_obs, &
      da_write_obs,da_write_noise_to_ob, da_use_obs_errfac
   use da_metar, only : da_calculate_grady_metar, da_ao_stats_metar, &
      da_oi_stats_metar, da_get_innov_vector_metar, da_residual_metar, &
      da_jo_and_grady_metar
   use da_pilot, only : da_calculate_grady_pilot, da_ao_stats_pilot, &
      da_oi_stats_pilot, da_get_innov_vector_pilot, da_residual_pilot, &
      da_jo_and_grady_pilot
   use da_par_util, only : da_system,da_cv_to_global
   use da_par_util1, only : da_proc_sum_real,da_proc_sum_ints
   use da_polaramv, only : da_calculate_grady_polaramv, da_ao_stats_polaramv, &
      da_oi_stats_polaramv, da_get_innov_vector_polaramv, da_residual_polaramv, &
      da_jo_and_grady_polaramv
   use da_profiler, only : da_calculate_grady_profiler, da_ao_stats_profiler, &
      da_oi_stats_profiler,da_get_innov_vector_profiler, da_residual_profiler, &
      da_jo_and_grady_profiler
   use da_pseudo, only : da_calculate_grady_pseudo, da_ao_stats_pseudo, &
      da_oi_stats_pseudo, da_get_innov_vector_pseudo, da_residual_pseudo, &
      da_jo_and_grady_pseudo
   use da_qscat, only : da_calculate_grady_qscat, da_ao_stats_qscat, &
      da_oi_stats_qscat, da_get_innov_vector_qscat, da_residual_qscat, &
      da_jo_and_grady_qscat
   use da_radiance, only : da_calculate_grady_rad, da_write_filtered_rad
   use da_radiance1, only : da_oma_stats_rad,da_omb_stats_rad, &
      da_write_iv_rad_ascii,da_residual_rad,da_jo_and_grady_rad
   use da_radar, only :  da_calculate_grady_radar, da_ao_stats_radar, &
      da_oi_stats_radar, da_get_innov_vector_radar, da_residual_radar, &
      da_jo_and_grady_radar
   use da_reporting, only : da_message, da_warning
   use da_rttov, only : da_get_innov_vector_rttov
   use da_satem, only : da_calculate_grady_satem, da_ao_stats_satem, &
      da_oi_stats_satem, da_get_innov_vector_satem, da_residual_satem, &
      da_jo_and_grady_satem
   use da_ships, only : da_calculate_grady_ships, da_ao_stats_ships, &
      da_oi_stats_ships, da_get_innov_vector_ships, da_residual_ships, &
      da_jo_and_grady_ships
   use da_sound, only : da_calculate_grady_sound,da_calculate_grady_sonde_sfc, &
      da_ao_stats_sound, da_oi_stats_sound,da_oi_stats_sound, &
      da_oi_stats_sonde_sfc,da_ao_stats_sonde_sfc,da_get_innov_vector_sound, &
      da_get_innov_vector_sonde_sfc,da_jo_and_grady_sound, da_residual_sound, &
      da_jo_and_grady_sound,da_jo_and_grady_sonde_sfc,da_residual_sonde_sfc
   use da_ssmi, only : da_calculate_grady_ssmi,da_calculate_grady_ssmt1, &
      da_calculate_grady_ssmt2, da_ao_stats_ssmi,da_ao_stats_ssmt2, &
      da_ao_stats_ssmt2, da_oi_stats_ssmt1, da_oi_stats_ssmt2, &
      da_oi_stats_ssmi,da_ao_stats_ssmt1,da_get_innov_vector_ssmi, &
      da_get_innov_vector_ssmt1,da_get_innov_vector_ssmt2, da_residual_ssmi, &
      da_jo_and_grady_ssmt1, da_jo_and_grady_ssmt2,da_jo_and_grady_ssmi, &
      da_residual_ssmt1,da_residual_ssmt2
   use da_synop, only : da_calculate_grady_synop, da_ao_stats_synop, &
      da_oi_stats_synop, da_get_innov_vector_synop, da_residual_synop, &
      da_jo_and_grady_synop
   use da_statistics, only : da_analysis_stats
   use da_tools1, only : da_get_unit,da_free_unit
   use da_tracing, only : da_trace_entry, da_trace_exit,da_trace
   use da_transfer_model, only : da_transfer_wrftltoxa,da_transfer_xatowrftl, &
      da_transfer_xatowrftl_adj,da_setup_firstguess,da_transfer_wrftltoxa_adj
   use da_vtox_transforms, only : da_transform_vtox,da_transform_vtox_adj
   use da_wrf_interfaces, only : wrf_dm_bcast_real
   use da_wrfvar_io, only : da_med_initialdata_input,da_med_initialdata_output

   implicit none

   private :: da_dot, da_dot_cv


contains
      
#include "da_calculate_j.inc"
#include "da_jo_and_grady.inc"
#include "da_calculate_residual.inc"
#include "da_get_var_diagnostics.inc"
#include "da_get_innov_vector.inc"
#include "da_lmdir.inc"
#include "da_minimisation_warning.inc"
#include "da_va15bd.inc"
#include "da_vd05ad.inc"
#include "da_vd05bd.inc"
#include "da_dot.inc"
#include "da_dot_cv.inc"
#include "da_write_diagnostics.inc"
#include "da_minimise_cg.inc"
#include "da_minimise_qn.inc"
#include "da_calculate_grady.inc"
#include "da_transform_vtoy.inc"
#include "da_transform_vtoy_adj.inc"

end module da_minimisation