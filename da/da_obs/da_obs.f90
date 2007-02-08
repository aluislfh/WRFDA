module da_obs

   use da_define_structures, only : multi_level_type, y_type, ob_type, &
      model_loc_type, field_type, each_level_type,da_allocate_y
   use module_domain, only : xb_type, x_type, xpose_type

   use da_control, only : use_shipsobs, use_synopobs, use_ssmt2obs, &
      use_soundobs,use_satemobs, use_profilerobs, use_pilotobs, &
      use_qscatobs,use_metarobs, use_polaramvobs, use_geoamvobs, &
      use_bogusobs,use_buoyobs, use_AIRSRETObs, trace_use, num_procs, &
      missing_r, missing, use_airepobs,use_gpspwobs,use_gpsrefobs, &
      use_ssmt1obs,filtered_obs_unit,fmt_each,fmt_info,fmt_srfc, ide, jde, &
      pseudo_x, fg_format, fg_format_kma, fg_format_wrf, missing_data, &
      pseudo_var, pseudo_val,stdout, num_pseudo, pseudo_y, pseudo_z, &
      pseudo_err,obs_qc_pointer,myproc,rtm_option,rtm_option_rttov, &
      use_crtm_kmatrix,use_crtm_kmatrix_fast, rtm_option_crtm,use_radiance, &
      ob_format,ob_format_ascii,filename_len
   use da_tracing, only : da_trace_entry, da_trace_exit   
   use da_reporting, only : da_error, message, da_warning
   use da_radiance, only : da_transform_xtoy_rad,da_transform_xtoy_rad_adj
   use da_crtm, only : da_transform_xtoy_crtmk_f,da_transform_xtoy_rad_crtm, &
      da_transform_xtoy_rad_crtmk,da_transform_xtoy_rad_crtm_adj, &
      da_transform_xtoy_crtmk_f_adj, da_transform_xtoy_rad_crtmk_adj
   use da_physics, only : da_tp_to_qs
   use da_buoy, only : da_transform_xtoy_buoy,da_transform_xtoy_buoy_adj
   use da_gpsref, only : da_transform_xtoy_gpsref,da_transform_xtoy_gpsref_adj
   use da_qscat, only : da_transform_xtoy_qscat,da_transform_xtoy_qscat_adj
   use da_radar, only : da_transform_xtoy_radar,da_transform_xtoy_radar_adj
   use da_synop, only : da_transform_xtoy_synop,da_transform_xtoy_synop_adj
   use da_profiler, only : da_transform_xtoy_profiler, &
      da_transform_xtoy_profiler_adj
   use da_bogus, only : da_transform_xtoy_bogus, da_transform_xtoy_bogus_adj
   use da_satem, only : da_transform_xtoy_satem, da_transform_xtoy_satem_adj
   use da_pilot, only : da_transform_xtoy_pilot,da_transform_xtoy_pilot_adj
   use da_ssmi, only : da_transform_xtoy_ssmt1, da_transform_xtoy_ssmt2, &
      da_transform_xtoy_ssmi, da_transform_xtoy_ssmt1_adj, &
      da_transform_xtoy_ssmt2_adj, da_transform_xtoy_ssmi_adj
   use da_pseudo, only : da_transform_xtoy_pseudo, da_transform_xtoy_pseudo_adj
   use da_airep, only : da_transform_xtoy_airep,da_transform_xtoy_airep_adj 
   use da_ships, only : da_transform_xtoy_ships, da_transform_xtoy_ships_adj
   use da_metar, only : da_transform_xtoy_metar, da_transform_xtoy_metar_adj
   use da_polaramv, only : da_transform_xtoy_polaramv, &
      da_transform_xtoy_polaramv_adj
   use da_geoamv, only : da_transform_xtoy_geoamv, da_transform_xtoy_geoamv_adj
   use da_gpspw, only : da_transform_xtoy_gpspw,da_transform_xtoy_gpspw_adj
   use da_sound, only : da_transform_xtoy_sound, da_transform_xtoy_sonde_sfc, &
      da_transform_xtoy_sound_adj, da_transform_xtoy_sonde_sfc_adj
   use da_airsr, only : da_transform_xtoy_airsr,da_transform_xtoy_airsr_adj 
   use da_tools1, only : da_free_unit, da_get_unit
   use da_tools, only : da_add_noise, da_add_noise_new,da_random_omb, &
      da_random_seed
   use da_physics, only : da_get_q_error

   implicit none

contains

#include "da_obs_proc_station.inc"
#include "da_transform_xtoy.inc"
#include "da_transform_xtoy_adj.inc"
#include "da_add_noise_to_ob.inc"
#include "da_check_missing.inc"
#include "da_fill_obs_structures.inc"
#include "da_random_omb_all.inc"
#include "da_setup_pseudo_obs.inc"
#include "da_store_obs_grid_info.inc"
#include "da_store_obs_grid_info_new.inc"
#include "da_count_filtered_obs.inc"

end module da_obs