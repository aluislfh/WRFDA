module da_radiance

   !---------------------------------------------------------------------------
   ! Purpose: module for radiance data assimilation. 
   !---------------------------------------------------------------------------

   use module_domain, only : xb_type, domain
   use module_radiance, only : satinfo, coefs_scatt_instname, &
      time_slots, &
      i_kind,r_kind, r_double, &
       one, zero, three,deg2rad,rad2deg, &
      n_scatt_coef,q2ppmv, &
      init_constants_derived, gsi_emiss
#ifdef RTTOV
   use module_radiance, only : coefs,coefs_scatt,profile_type,radiance_type, &
      rttov_coef,sensor_descriptor,platform_name,inst_name,transmission_type, &
      errorstatus_success,gas_id_watervapour
#endif
#ifdef CRTM
   use module_radiance, only : crtm_channelinfo_type, crtm_platform_name, &
      crtm_sensor_name, crtm_init
#endif

#ifdef DM_PARALLEL
   use mpi, only : mpi_integer, mpi_status_size
#endif

   use da_control, only : max_ob_levels,missing_r, &
      v_interp_p, v_interp_h, trace_use_dull, &
      missing, max_error_uv, max_error_t, rootproc, &
      max_error_p,max_error_q, radiance, &
      max_stheight_diff,missing_data,max_error_bq,max_error_slp, &
      max_error_bt, max_error_buv, rtminit_platform,rtminit_satid, &
      rtminit_nsensor,rtminit_sensor,filename_len,read_biascoef,analysis_date, &
      time_window_max,time_window_min,print_detail_obs,use_hsbobs,use_msuobs, &
      use_amsubobs,use_eos_amsuaobs,use_amsuaobs,use_hirs2obs,rtm_option, &
      rtm_option_rttov,rtm_option_crtm,use_airsobs,use_kma1dvar,use_hirs3obs, &
      use_ssmisobs, use_filtered_rad,print_detail_rad,stderr, mw_emis_sea, &
      rtminit_print, rttov_scatt,comm,ierr,biasprep, qc_rad, num_procs, &
      tovs_min_transfer,use_error_factor_rad,num_fgat_time,stdout,trace_use, &
      qc_good, qc_bad,myproc,biascorr,thinning,thinning_mesh, &
      rad_monitoring, monitor_on, kms,kme,&
      use_hirs4obs, use_mhsobs,bufr_year, bufr_month,bufr_day,bufr_hour, &
      bufr_minute, bufr_second,bufr_solzen, bufr_station_height, &
      bufr_landsea_mask,tovs_end, max_tovs_input, bufr_satzen, nchan_mhs, &
      nchan_msu, nchan_amsua,nchan_hirs2, nchan_hirs3, nchan_hirs4, bufr_lon, &
      bufr_satellite_id, bufr_ifov,nchan_amsub, tovs_start, bufr_lat
#ifdef CRTM
   use da_crtm, only : da_crtm_init
#endif
   use da_define_structures, only : maxmin_type, iv_type, y_type, jo_type, &
      bad_data_type, x_type, number_type, bad_data_type, &
      airsr_type,info_type, model_loc_type
   use da_interpolation, only : da_to_zk, da_to_zk_new
   use da_tools_serial, only : da_get_unit, da_free_unit
   use da_par_util1, only : da_proc_sum_int,da_proc_sum_ints
#ifdef DM_PARALLEL
   use da_par_util, only :  da_proc_stats_combine, true_mpi_real
#else
   use da_par_util, only :  da_proc_stats_combine
#endif
   use da_physics, only : da_sfc_pre, da_transform_xtopsfc, &
      da_transform_xtopsfc_adj,da_tpq_to_slp_lin,da_tpq_to_slp_adj
   use da_radiance1, only : num_tovs_before,num_tovs_after,tovs_copy_count, &
      tovs_send_pe, tovs_recv_pe, tovs_send_start, tovs_send_count, &
      tovs_recv_start,con_vars_type,aux_vars_type, datalink_type,da_qc_amsub, &
      da_qc_amsua,da_biascorr, da_detsurtyp,da_biasprep,da_get_time_slots, &
      da_get_julian_time,da_qc_rad
   use da_reporting, only : da_message, da_warning, message, da_error
   use da_rttov, only : da_rttov_init
   use da_statistics, only : da_stats_calculate
   use da_tools, only : da_max_error_qc, da_residual, da_obs_sfc_correction, &
      da_llxy, da_llxy_new, da_togrid_new
   use da_tracing, only : da_trace_entry, da_trace_exit, da_trace, &
      da_trace_int_sort
   use da_wrf_interfaces, only : wrf_dm_bcast_integer
   use gsi_thinning, only : r999,r360,rlat_min,rlat_max,rlon_min,rlon_max, &
                            dlat_grid,dlon_grid,thinning_grid, &
                            makegrids,map2grids, &
                            destroygrids
                            
   implicit none
   
contains

#include "da_calculate_grady_rad.inc"
#include "da_read_filtered_rad.inc"
#include "da_write_filtered_rad.inc"
#include "da_read_obs_bufrtovs.inc"
#include "da_read_obs_bufrairs.inc"
#include "da_read_obs_bufrssmis.inc"
#include "da_allocate_rad_iv.inc"
#include "da_initialize_rad_iv.inc"
#include "da_read_kma1dvar.inc"
#include "da_sort_rad.inc"
#include "da_setup_bufrtovs_structures.inc"

end module da_radiance

