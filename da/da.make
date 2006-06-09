DA_OBJS        =	da_solve_v3d.o		\
			da_par_util.o           \
			da_par_util1.o          \
			da_setup_structures.o	\
			da_minimisation.o	\
			da_vtox_transforms.o	\
			da_obs.o		\
			da_metar.o		\
			da_geoamv.o	        \
			da_polaramv.o	        \
			da_ships.o		\
			da_synop.o		\
			da_sound.o		\
			da_bogus.o		\
			da_airep.o		\
			da_pilot.o		\
			da_radar.o		\
			da_gpspw.o		\
			da_gpsref.o		\
			da_ssmi.o		\
			da_satem.o		\
			da_qscat.o		\
			da_pseudo.o		\
			da_profiler.o		\
			da_buoy.o   		\
			da_dynamics.o		\
			da_physics.o		\
			da_ffts.o		\
			da_test.o		\
			da_tools.o		\
			da_recursive_filter.o	\
			da_interpolation.o	\
			da_grid_definitions.o	\
			da_statistics.o		\
			da_define_structures.o	\
			da_constants.o		\
			da_spectral.o           \
			da_radiance.o		\
                        da_tracing.o            \
                        da_memory.o             \
			rttov_const.o		\
			rttov_global.o		\
			rttov_types.o		\
			parkind1.o	        \
			gsi_kinds.o		\
			gsi_constants.o		\
                        da_wrfvar_io.o      \
	   		da_wrfvar_top.o

libwrfvar.a : $(DA_OBJS)
	$(AR) libwrfvar.a $(DA_OBJS)
	$(RANLIB) libwrfvar.a

##########################################################################

wrfvar.o : da_wrfvar_top.o

da_wrfvar_top.o : da_wrfvar_top.f90         \
                  da_wrfvar_init.inc        \
                  da_wrfvar_run.inc         \
                  da_wrfvar_finalize.inc    \
                  da_wrfvar_interface.inc   \
                  module_integrate.o        \
                  module_timing.o           \
                  module_wrf_error.o        \
                  module_configure.o        \
                  module_dm.o               \
                  module_driver_constants.o \
                  module_domain.o           \
                  module_machine.o          \
                  module_tiles.o            \
                  da_wrfvar_io.o

da_wrfvar_esmf_super.o : da_wrfvar_esmf_super.f90    \
                             da_esmf_init.inc        \
                             da_esmf_run.inc         \
                             da_esmf_finalize.inc    \
                             da_wrfvar_interface.inc

da_wrfvar_io.o : module_io_domain.o  \
                     da_med_initialdata_input.inc \
                     da_med_initialdata_output.inc \
                     da_tracing.o

da_generic_boilerplate.inc: da_generic_boilerplate.m4
			$(RM) da_generic_boilerplate.inc
			$(M4) da_generic_boilerplate.m4 > da_generic_boilerplate.inc

da_par_util.o:		da_par_util.f90                   \
			da_alloc_and_copy_be_arrays.inc   \
			da_be_local_copy.inc              \
			da_copy_dims.inc                  \
			da_copy_tile_dims.inc             \
			da_cv_to_vv.inc                   \
			da_local_to_global.inc            \
			da_pack_count_obs.inc             \
			da_proc_maxmin_combine.inc        \
			da_proc_stats_combine.inc         \
			da_proc_sum_count_obs.inc         \
			da_transpose.inc                  \
			da_unpack_count_obs.inc           \
			da_vv_to_cv.inc                   \
			da_wrf_dm_interface.inc           \
			da_cv_to_global.inc               \
			da_generic_typedefs.inc           \
			da_generic_methods.inc            \
			da_specific_methods.inc           \
			da_generic_boilerplate.inc        \
			da_y_facade_to_global.inc         \
                        da_define_structures.o	          \
                        da_par_util1.o                    \
			da_constants.o

da_par_util1.o:		da_par_util1.f90                  \
			da_proc_sum_int.inc               \
			da_proc_sum_real.inc              \
                        module_wrf_error.o

da_solve_v3d.o:		da_constants.o			\
			da_define_structures.o		\
			da_setup_structures.o		\
			da_test.o			\
			da_tools.o			\
			da_minimisation.o		\
			da_par_util.o			\
			da_init_wrfvar.inc              \
			da_solve_v3d.f90

da_minimisation.o:	da_minimisation.f90           \
                        da_wrfvar_io.o                \
                        module_get_file_names.o       \
			da_constants.o                \
			da_define_structures.o        \
			da_vtox_transforms.o          \
			da_obs.o                      \
			da_metar.o                    \
			da_geoamv.o                   \
			da_polaramv.o                 \
			da_ships.o                    \
			da_synop.o                    \
			da_sound.o                    \
			da_bogus.o                    \
			da_airep.o                    \
			da_pilot.o                    \
			da_radar.o                    \
			da_gpspw.o                    \
			da_gpsref.o                   \
			da_ssmi.o                     \
			da_satem.o                    \
			da_pseudo.o                   \
			da_qscat.o                    \
			da_profiler.o                 \
			da_buoy.o                     \
			da_setup_structures.o	      \
			da_radiance.o                 \
			da_calculate_j.inc            \
			da_calculate_jo_and_grady.inc \
			da_calculate_residual.inc     \
			da_get_var_diagnostics.inc    \
			da_get_innov_vector.inc       \
			da_dot.inc                    \
			da_dot_cv.inc                 \
			da_minimisation_warning.inc   \
			da_sum_reals.inc              \
			da_vd05bd.inc                 \
			da_write_diagnostics.inc      \
			da_calculate_grady.inc        \
			da_minimise_cg.inc

da_setup_structures.o:	da_setup_structures.f90           \
                        da_wrfvar_io.o                    \
			da_define_structures.o            \
			da_constants.o                    \
			da_grid_definitions.o             \
			da_obs.o                          \
			da_ssmi.o                         \
			da_vtox_transforms.o              \
			da_physics.o                      \
	                libbufr.a                         \
	                da_spectral.o                     \
			da_radiance.o                     \
			da_add_increments.inc             \
			da_add_pbl_and_sfc_info.inc       \
			da_chgvres.inc                    \
			da_get_vertical_truncation.inc    \
			da_interpolate_regcoeff.inc       \
			da_interpolate_stats.inc          \
			da_rescale_background_errors.inc  \
			da_setup_background_errors.inc    \
			da_get_bins_info.inc              \
			da_setup_be_global.inc            \
			da_setup_be_regional.inc          \
			da_setup_firstguess.inc           \
			da_setup_firstguess_wrf.inc       \
			da_setup_firstguess_kma.inc       \
			da_setup_obs_structures.inc       \
			da_setup_obs_structures_ascii.inc \
			da_setup_obs_structures_bufr.inc  \
			da_setup_obs_interp_wts.inc       \
			da_setup_runconstants.inc         \
			da_transfer_wrftoxb.inc           \
			da_transfer_kmatoxb.inc           \
			da_transfer_xatowrf.inc           \
			da_transfer_xatokma.inc           \
			da_write_kma_increments.inc       \
			da_transfer_xatowrftl.inc         \
			da_transfer_xatowrftl_adj.inc     \
			da_transfer_wrftltoxa.inc         \
			da_transfer_wrftltoxa_adj.inc     \
			da_transfer_xatoanalysis.inc      \
			da_write_increments.inc           \
                        da_setup_cv.inc

da_vtox_transforms.o:	da_vtox_transforms.f90            \
                        module_tiles.o                    \
			da_par_util.o                     \
			da_define_structures.o            \
			da_tools.o                        \
			da_recursive_filter.o             \
			da_constants.o                    \
			da_dynamics.o                     \
			da_physics.o                      \
			libfftpack5.a                        \
			da_spectral.o                     \
			da_ssmi.o                         \
                        da_tracing.o                      \
			da_transform_vtovv.inc            \
			da_transform_vtovv_adj.inc        \
			da_transform_vtovv_global.inc     \
			da_transform_vtovv_global_adj.inc \
			da_transform_vtox.inc             \
			da_transform_vtox_adj.inc         \
			da_transform_vptovv.inc           \
			da_transform_vptox.inc            \
			da_transform_vptox_adj.inc        \
			da_transform_vvtovp.inc           \
			da_transform_vvtovp_adj.inc       \
			da_get_vpoles.inc                 \
			da_get_spoles.inc                 \
			da_get_avpoles.inc                \
			da_get_aspoles.inc                \
			da_vertical_transform.inc         \
                        da_check_eof_decomposition.inc

da_obs.o:		da_obs.f90                 \
			da_constants.o             \
			da_define_structures.o     \
			da_airep.o                 \
			da_gpspw.o                 \
			da_gpsref.o                \
			da_metar.o                 \
			da_pilot.o                 \
			da_radar.o                 \
			da_ssmi.o                  \
			da_geoamv.o                \
			da_polaramv.o              \
			da_satem.o                 \
			da_ships.o                 \
			da_synop.o                 \
			da_sound.o                 \
			da_bogus.o                 \
			da_pseudo.o                \
			da_qscat.o                 \
			da_radiance.o              \
			da_profiler.o              \
			da_buoy.o                  \
			da_par_util.o              \
	                da_obs_proc_station.inc    \
			da_read_obs.inc            \
			da_scan_obs.inc            \
			da_read_bufr_obs.inc       \
			da_scan_bufr_obs.inc       \
			da_read_radar.inc          \
			da_scan_radar.inc          \
			da_transform_xtoy.inc      \
			da_transform_xtoy_adj.inc  \
			da_add_noise_to_ob.inc     \
			da_check_missing.inc       \
			da_fill_obs_structures.inc \
			da_random_omb_all.inc      \
			da_read_errfac.inc         \
			da_setup_pseudo_obs.inc    \
			da_store_obs_grid_info.inc \
			da_use_obs_errfac.inc      \
			da_write_obs.inc           \
			da_write_filtered_obs.inc  \
			da_write_y.inc             \
                        da_deallocate_obs.inc

da_pseudo.o:		da_pseudo.f90                    \
			da_constants.o                   \
			da_par_util.o                    \
			da_define_structures.o           \
			da_interpolation.o               \
			da_statistics.o                  \
			da_tools.o                       \
			da_cal_jo_and_grady_pseudo.inc   \
			da_calculate_residual_pseudo.inc \
			da_get_innov_vector_pseudo.inc   \
			da_oa_stats_pseudo.inc           \
			da_ob_stats_pseudo.inc           \
			da_print_stats_pseudo.inc        \
			da_transform_xtoy_pseudo.inc     \
			da_transform_xtoy_pseudo_adj.inc

da_metar.o:		da_metar.f90                        \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_tools.o                          \
			da_physics.o                        \
			da_ao_stats_metar.inc               \
			da_calculate_jo_and_grady_metar.inc \
			da_calculate_residual_metar.inc     \
			da_oi_stats_metar.inc               \
			da_print_stats_metar.inc            \
			da_transform_xtoy_metar.inc         \
			da_transform_xtoy_metar_adj.inc     \
			da_check_max_iv_metar.inc           \
			da_get_innov_vector_metar.inc

da_geoamv.o:		da_geoamv.f90                    \
			da_constants.o                   \
			da_par_util.o                    \
			da_define_structures.o           \
			da_interpolation.o               \
			da_statistics.o                  \
			da_tools.o                       \
			da_ao_stats_geoamv.inc           \
			da_get_jo_and_grady_geoamv.inc   \
			da_calculate_residual_geoamv.inc \
			da_oi_stats_geoamv.inc           \
			da_print_stats_geoamv.inc        \
			da_transform_xtoy_geoamv.inc     \
			da_transform_xtoy_geoamv.inc     \
			da_check_max_iv_geoamv.inc       \
			da_get_innov_vector_geoamv.inc

da_polaramv.o:		da_polaramv.f90                    \
			da_constants.o                     \
			da_par_util.o                      \
			da_define_structures.o             \
			da_interpolation.o                 \
			da_statistics.o                    \
			da_tools.o                         \
			da_ao_stats_polaramv.inc           \
			da_get_jo_and_grady_polaramv.inc   \
			da_calculate_residual_polaramv.inc \
			da_oi_stats_polaramv.inc           \
			da_print_stats_polaramv.inc        \
			da_transform_xtoy_polaramv.inc     \
			da_transform_xtoy_polaramv.inc     \
			da_check_max_iv_polaramv.inc       \
			da_get_innov_vector_polaramv.inc

da_satem.o:		da_satem.f90                        \
			da_physics.o                        \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_tools.o                          \
			da_ao_stats_satem.inc               \
			da_calculate_jo_and_grady_satem.inc \
			da_calculate_residual_satem.inc     \
			da_oi_stats_satem.inc               \
			da_print_stats_satem.inc            \
			da_transform_xtoy_satem.inc         \
			da_transform_xtoy_satem_adj.inc     \
			da_check_max_iv_satem.inc           \
			da_get_innov_vector_satem.inc

da_ships.o:		da_ships.f90                        \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_tools.o                          \
			da_physics.o                        \
			da_ao_stats_ships.inc               \
			da_calculate_jo_and_grady_ships.inc \
			da_calculate_residual_ships.inc     \
			da_oi_stats_ships.inc               \
			da_print_stats_ships.inc            \
			da_transform_xtoy_ships.inc         \
			da_transform_xtoy_ships_adj.inc     \
			da_check_max_iv_ships.inc           \
			da_get_innov_vector_ships.inc

da_synop.o:		da_synop.f90                        \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_tools.o                          \
			da_physics.o                        \
			da_check_max_iv_synop.inc           \
			da_get_innov_vector_synop.inc       \
			da_ao_stats_synop.inc               \
			da_calculate_jo_and_grady_synop.inc \
			da_compute_jo_synop_uvtq.inc        \
			da_calculate_residual_synop.inc     \
			da_oi_stats_synop.inc               \
			da_print_stats_synop.inc            \
			da_transform_xtoy_synop.inc         \
			da_transform_xtoy_synop_adj.inc

da_sound.o:		da_sound.f90                        \
			da_physics.o                        \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_tools.o                          \
			da_ao_stats_sound.inc               \
			da_calculate_jo_and_grady_sound.inc \
			da_compute_jo_sound_uvtq.inc        \
			da_calculate_residual_sound.inc     \
			da_oi_stats_sound.inc               \
			da_print_stats_sound.inc            \
			da_transform_xtoy_sound.inc         \
			da_transform_xtoy_sound_adj.inc     \
			da_check_max_iv_sound.inc           \
			da_get_innov_vector_sound.inc       \
			da_obs_diagnostics.inc              \
			da_ao_stats_sonde_sfc.inc           \
			da_get_jo_and_grady_sonde_sfc.inc   \
			da_compute_jo_sonde_sfc_uvtq.inc    \
			da_calculate_residual_sonde_sfc.inc \
			da_oi_stats_sonde_sfc.inc           \
			da_print_stats_sonde_sfc.inc        \
			da_transform_xtoy_sonde_sfc.inc     \
			da_transform_xtoy_sonde_sfc_adj.inc \
			da_get_innov_vector_sonde_sfc.inc   \
			da_check_max_iv_sonde_sfc.inc       \
			da_calculate_grady_sonde_sfc.inc

da_airep.o:		da_airep.f90                        \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_tools.o                          \
			da_ao_stats_airep.inc               \
			da_calculate_jo_and_grady_airep.inc \
			da_calculate_residual_airep.inc     \
			da_oi_stats_airep.inc               \
			da_print_stats_airep.inc            \
			da_transform_xtoy_airep.inc         \
			da_transform_xtoy_airep_adj.inc     \
			da_check_max_iv_airep.inc           \
			da_get_innov_vector_airep.inc

da_pilot.o:		da_pilot.f90                        \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_tools.o                          \
			da_ao_stats_pilot.inc               \
			da_calculate_jo_and_grady_pilot.inc \
			da_calculate_residual_pilot.inc     \
			da_oi_stats_pilot.inc               \
			da_print_stats_pilot.inc            \
			da_transform_xtoy_pilot.inc         \
			da_transform_xtoy_pilot_adj.inc     \
			da_check_max_iv_pilot.inc           \
			da_get_innov_vector_pilot.inc

da_bogus.o:		da_bogus.f90                        \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_tools.o                          \
			da_physics.o                        \
			da_ao_stats_bogus.inc               \
			da_calculate_jo_and_grady_bogus.inc \
			da_calculate_residual_bogus.inc     \
			da_oi_stats_bogus.inc               \
			da_print_stats_bogus.inc            \
			da_transform_xtoy_bogus.inc         \
			da_transform_xtoy_bogus_adj.inc     \
			da_check_max_iv_bogus.inc           \
			da_get_innov_vector_bogus.inc

da_radar.o:		da_radar.f90                        \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_tools.o                          \
			da_ao_stats_radar.inc               \
			da_calculate_grady_radar.inc        \
			da_calculate_jo_and_grady_radar.inc \
			da_calculate_residual_radar.inc     \
			da_oi_stats_radar.inc               \
			da_print_stats_radar.inc            \
			da_transform_xtoy_radar.inc         \
			da_transform_xtoy_radar_adj.inc     \
			da_check_max_iv_radar.inc           \
			da_get_innov_vector_radar.inc       \
			da_reflectivity.inc                 \
			da_reflectivity_adj.inc             \
			da_reflectivity_lin.inc             \
			da_radial_velocity.inc              \
			da_radial_velocity_lin.inc          \
			da_radial_velocity_adj.inc          \
			da_max_error_qc_radar.inc

da_gpspw.o:		da_gpspw.f90                        \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_physics.o                        \
			da_tools.o                          \
			da_ao_stats_gpspw.inc               \
			da_calculate_jo_and_grady_gpspw.inc \
			da_calculate_residual_gpspw.inc     \
			da_oi_stats_gpspw.inc               \
			da_print_stats_gpspw.inc            \
			da_check_max_iv_gpspw.inc           \
			da_get_innov_vector_gpspw.inc       \
			da_transform_xtoy_gpspw.inc         \
			da_transform_xtoy_gpspw_adj.inc

da_gpsref.o:		da_gpsref.f90                       \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_tools.o                          \
			da_ao_stats_gpsref.inc              \
			da_calculate_grady_gpsref.inc       \
			da_get_jo_and_grady_gpsref.inc      \
			da_calculate_residual_gpsref.inc    \
			da_oi_stats_gpsref.inc              \
			da_print_stats_gpsref.inc           \
			da_transform_xtoy_gpsref.inc        \
			da_transform_xtoy_gpsref_adj.inc    \
			da_check_max_iv_gpsref.inc          \
			da_get_innov_vector_gpsref.inc

da_ssmi.o:		da_ssmi.f90                         \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_grid_definitions.o               \
			da_physics.o                        \
			da_statistics.o                     \
			da_tools.o                          \
			da_ao_stats_ssmi.inc                \
			da_ao_stats_ssmi_rv.inc             \
			da_ao_stats_ssmi_tb.inc             \
			da_read_ssmi.inc                    \
			da_scan_ssmi.inc                    \
			da_cal_jo_and_grady_ssmi.inc        \
			da_cal_jo_and_grady_ssmi_rv.inc     \
			da_cal_jo_and_grady_ssmi_tb.inc     \
			da_cal_residual_ssmi.inc            \
			da_cal_residual_ssmi_rv.inc         \
			da_cal_residual_ssmi_tb.inc         \
			da_oi_stats_ssmi.inc                \
			da_oi_stats_ssmi_rv.inc             \
			da_oi_stats_ssmi_tb.inc             \
			da_transform_xtospeed.inc           \
			da_transform_xtospeed_lin.inc       \
			da_transform_xtospeed_adj.inc       \
			da_transform_xtoseasfcwind.inc      \
			da_transform_xtoseasfcwind_lin.inc  \
			da_transform_xtoseasfcwind_adj.inc  \
			da_transform_xtotb.inc              \
			da_transform_xtotb_lin.inc          \
			da_transform_xtotb_adj.inc          \
			da_transform_xtoy_ssmi.inc          \
			da_transform_xtoy_ssmi_adj.inc      \
			da_transform_xtoy_ssmi_rv.inc       \
			da_transform_xtoy_ssmi_rv_adj.inc   \
			da_transform_xtoy_ssmi_tb.inc       \
			da_transform_xtoy_ssmi_tb_adj.inc   \
			da_transform_xtozrhoq.inc           \
			da_transform_xtozrhoq_lin.inc       \
			da_transform_xtozrhoq_adj.inc       \
			da_cal_sigma_v.inc                  \
			da_cal_jo_and_grady_ssmt1.inc       \
			da_cal_jo_and_grady_ssmt2.inc       \
			da_cal_residual_ssmt1.inc           \
			da_cal_residual_ssmt2.inc           \
			da_check_max_iv_ssmi_rv.inc         \
			da_check_max_iv_ssmi_tb.inc         \
			da_check_max_iv_ssmt1.inc           \
			da_check_max_iv_ssmt2.inc           \
			da_get_innov_vector_ssmi.inc        \
			da_get_innov_vector_ssmi_rv.inc     \
			da_get_innov_vector_ssmi_tb.inc     \
			da_get_innov_vector_ssmt1.inc       \
			da_get_innov_vector_ssmt2.inc       \
			da_oa_stats_ssmt1.inc               \
			da_oa_stats_ssmt2.inc               \
			da_ob_stats_ssmt1.inc               \
			da_ob_stats_ssmt2.inc               \
			da_print_stats_ssmt1.inc            \
			da_print_stats_ssmt2.inc            \
			da_transform_xtoy_ssmt1.inc         \
			da_transform_xtoy_ssmt1_adj.inc     \
			da_transform_xtoy_ssmt2.inc         \
			da_transform_xtoy_ssmt2_adj.inc

da_qscat.o:		da_qscat.f90                        \
			da_constants.o                      \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_tools.o                          \
			da_par_util.o                       \
			da_calculate_jo_and_grady_qscat.inc \
			da_calculate_residual_qscat.inc     \
			da_check_max_iv_qscat.inc           \
			da_get_innov_vector_qscat.inc       \
			da_oa_stats_qscat.inc               \
			da_ob_stats_qscat.inc               \
			da_print_stats_qscat.inc            \
			da_transform_xtoy_qscat.inc         \
			da_transform_xtoy_qscat_adj.inc

da_profiler.o:		da_profiler.f90                     \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_tools.o                          \
			da_ao_stats_profiler.inc            \
			da_get_jo_and_grady_profiler.inc    \
			da_calculate_residual_profiler.inc  \
			da_oi_stats_profiler.inc            \
			da_print_stats_profiler.inc         \
			da_transform_xtoy_profiler.inc      \
			da_transform_xtoy_profiler_adj.inc  \
			da_check_max_iv_profiler.inc        \
			da_get_innov_vector_profiler.inc

da_buoy.o:		da_buoy.f90                         \
			da_constants.o                      \
			da_par_util.o                       \
			da_define_structures.o              \
			da_interpolation.o                  \
			da_statistics.o                     \
			da_tools.o                          \
			da_physics.o                        \
			da_ao_stats_buoy.inc                \
			da_calculate_jo_and_grady_buoy.inc  \
			da_calculate_residual_buoy.inc      \
			da_oi_stats_buoy.inc                \
			da_print_stats_buoy.inc             \
			da_transform_xtoy_buoy.inc          \
			da_transform_xtoy_buoy_adj.inc      \
			da_check_max_iv_buoy.inc            \
			da_get_innov_vector_buoy.inc

da_dynamics.o:		da_dynamics.f90                     \
			da_constants.o                      \
			da_define_structures.o              \
			da_statistics.o                     \
			da_ffts.o                           \
			da_interpolation.o                  \
			da_balance_cycloterm.inc            \
			da_balance_cycloterm_adj.inc        \
			da_balance_cycloterm_lin.inc        \
			da_balance_equation_adj.inc         \
			da_balance_equation_lin.inc         \
			da_balance_geoterm.inc              \
			da_balance_geoterm_adj.inc          \
			da_balance_geoterm_lin.inc          \
			da_hydrostaticp_to_rho_adj.inc      \
			da_hydrostaticp_to_rho_lin.inc      \
			da_psichi_to_uv.inc                 \
			da_psichi_to_uv_adj.inc             \
			da_uv_to_divergence.inc             \
			da_uv_to_divergence_adj.inc         \
			da_w_adjustment_lin.inc             \
			da_w_adjustment_adj.inc             \
			da_wz_base.inc                      \
			da_uv_to_vorticity.inc

da_physics.o:		da_physics.f90                      \
			da_constants.o                      \
			da_define_structures.o              \
			da_grid_definitions.o               \
			da_interpolation.o                  \
			da_dynamics.o                       \
			da_uvprho_to_w_adj.inc              \
			da_uvprho_to_w_lin.inc              \
			da_prho_to_t_adj.inc                \
			da_prho_to_t_lin.inc                \
			da_pt_to_rho_adj.inc                \
			da_pt_to_rho_lin.inc                \
			da_tpq_to_rh.inc                    \
			da_tpq_to_rh_lin.inc                \
			da_tpq_to_slp.inc                   \
			da_tpq_to_slp_lin.inc               \
			da_tpq_to_slp_adj.inc               \
			da_tpq_to_thickness.inc             \
			da_tprh_to_q_adj.inc                \
			da_tprh_to_q_lin.inc                \
			da_tp_to_qs.inc                     \
			da_tp_to_qs_adj.inc                 \
			da_tp_to_qs_lin.inc                 \
	                da_trh_to_td.inc                    \
			da_transform_xtogpsref.inc          \
			da_transform_xtogpsref_adj.inc      \
			da_transform_xtopsfc.inc            \
			da_transform_xtopsfc_adj.inc        \
			da_transform_xtotpw.inc             \
			da_transform_xtotpw_adj.inc         \
			da_transform_xtogpsref.inc          \
			da_transform_xtogpsref_adj.inc      \
			da_transform_xtogpsref_lin.inc      \
	                da_check_rh.inc                     \
	                da_check_rh_simple.inc              \
	                da_e_qv_from_rh.inc                 \
	                da_get_q_error.inc                  \
			da_roughness_from_lanu.inc          \
			da_sfc_wtq.inc                      \
			da_sfc_wtq_lin.inc                  \
			da_sfc_wtq_adj.inc                  \
			da_transform_xtowtq.inc             \
			da_transform_xtowtq_adj.inc         \
			da_sfc_pre.inc                      \
			da_sfc_pre_lin.inc                  \
			da_sfc_pre_adj.inc                  \
			da_filter.inc                       \
			da_filter_adj.inc                   \
			da_wdt.inc                          \
			da_moist_phys_adj.inc               \
			da_moist_phys_lin.inc

da_ffts.o:		da_ffts.f90                         \
			da_define_structures.o              \
			da_par_util.o                       \
			da_fast_cosine_transform.inc        \
			da_fast_sine_transform.inc          \
			da_qpassm.inc                       \
			da_solve_poissoneqn_fct.inc         \
			da_solve_poissoneqn_fct_adj.inc     \
			da_solve_poissoneqn_fst.inc         \
			da_solve_poissoneqn_fst_adj.inc

da_tools.o:		da_tools.f90                   \
                        module_bc.o                    \
			da_constants.o                 \
			liblapack.a                       \
			da_define_structures.o         \
                        da_map_utils_defines.inc       \
                        da_map_utils.inc               \
			da_1d_eigendecomposition.inc   \
			da_diff_seconds.inc            \
			da_obs_sfc_correction.inc      \
			da_global_ll_to_xy.inc         \
			da_ll_to_xy.inc                \
			da_residual.inc                \
			da_add_noise.inc               \
			da_eof_decomposition.inc       \
			da_eof_decomposition_test.inc  \
			da_max_error_qc.inc            \
			da_random_omb.inc              \
			da_random_seed.inc             \
			da_gaus_noise.inc              \
			da_llxy.inc                    \
			da_openfile.inc                \
			da_smooth_anl.inc              \
			da_togrid.inc                  \
			da_unifva.inc                  \
			da_set_boundary_xa.inc         \
			da_set_boundary_xb.inc         \
			da_get_2d_sum.inc              \
			da_get_3d_sum.inc              \
                        da_oi.inc                      \
			da_xyll.inc  

da_recursive_filter.o:	da_recursive_filter.f90        \
			da_constants.o                 \
			da_define_structures.o         \
                        da_perform_2drf.inc            \
			da_calculate_rf_factors.inc    \
			da_rf_turning_conditions.inc   \
			da_recursive_filter_1d.inc     \
			da_recursive_filter_1d_adj.inc \
			da_transform_through_rf.inc    \
			da_transform_through_rf_adj.inc

da_interpolation.o:	da_interpolation.f90      \
			da_constants.o            \
			da_define_structures.o    \
			da_grid_definitions.o     \
			da_tools.o                \
			da_to_zk.inc                 \
			da_interp_obs_lin_2d.inc     \
			da_interp_obs_lin_2d_adj.inc \
			da_interp_lin_2d.inc         \
			da_interp_lin_2d_adj.inc     \
			da_interp_lin_3d.inc         \
			da_interp_lin_3d_adj.inc

da_grid_definitions.o:	da_grid_definitions.f90\
			da_constants.o         \
                        da_define_structures.o \
			da_ref_height.inc      \
			da_ref_pres.inc        \
			da_earth_2_model_wind.inc \
			da_ffdduv.inc             \
			da_set_map_para.inc

da_statistics.o:	da_statistics.f90          \
			da_define_structures.o     \
	                da_par_util.o              \
			da_analysis_stats.inc      \
			da_correlation_coeff1d.inc \
			da_correlation_coeff2d.inc \
			da_data_distribution.inc   \
			da_print_stats.inc         \
			da_stats_calculate.inc

da_define_structures.o:	da_define_structures.f90            \
			da_constants.o                      \
                        da_tracing.o                        \
			da_allocate_background_errors.inc   \
			da_allocate_observations.inc        \
			da_allocate_y.inc                   \
			da_deallocate_background_errors.inc \
			da_deallocate_observations.inc      \
			da_deallocate_y.inc                 \
			da_zero_x.inc                       \
			da_zero_vp_type.inc                 \
			da_allocate_cv.inc                  \
			da_deallocate_cv.inc                \
			da_gauss_noise.inc                  \
			da_zero_y.inc                       \
                        module_domain.o                     \
                        module_dm.o                 

da_constants.o:		da_constants.f90           \
			da_array_print.inc         \
			da_advance_cymdh.inc       \
			da_change_date.inc         \
			da_find_fft_factors.inc    \
			da_find_fft_trig_funcs.inc \
                        module_driver_constants.o 

da_test.o:	       da_test.f90                          \
			da_constants.o                      \
			da_minimisation.o                   \
			da_define_structures.o              \
			da_physics.o                        \
			da_vtox_transforms.o                \
			da_obs.o                            \
			da_airep.o                          \
			da_gpspw.o                          \
			da_metar.o                          \
			da_pilot.o                          \
			da_radar.o                          \
			da_ssmi.o                           \
			da_satem.o                          \
			da_geoamv.o                         \
			da_polaramv.o                       \
			da_ships.o                          \
			da_sound.o                          \
			da_bogus.o                          \
			da_synop.o                          \
			da_pseudo.o                         \
			da_profiler.o                       \
			da_buoy.o                           \
			da_setup_structures.o	            \
			da_tools.o                          \
			da_qscat.o                          \
			da_check_balance.inc                \
			da_check_cvtovv_adjoint.inc         \
			da_check_vtox_adjoint.inc           \
			da_check_vptox_adjoint.inc          \
			da_check_vp_errors.inc              \
			da_check_vvtovp_adjoint.inc         \
			da_check_xtovptox_errors.inc        \
			da_check_xtoy_adjoint.inc           \
			da_check_xtoy_adjoint_airep.inc     \
			da_check_xtoy_adjoint_gpspw.inc     \
			da_check_xtoy_adjoint_gpsref.inc    \
			da_check_xtoy_adjoint_metar.inc     \
			da_check_xtoy_adjoint_pilot.inc     \
			da_check_xtoy_adjoint_ssmi.inc      \
			da_check_xtoy_adjoint_ssmi_rv.inc   \
			da_check_xtoy_adjoint_ssmi_tb.inc   \
			da_check_xtoy_adjoint_geoamv.inc    \
			da_check_xtoy_adjoint_polaramv.inc  \
			da_check_xtoy_adjoint_ships.inc     \
			da_check_xtoy_adjoint_sound.inc     \
			da_check_xtoy_adjoint_sonde_sfc.inc \
			da_check_xtoy_adjoint_bogus.inc     \
			da_check_xtoy_adjoint_synop.inc     \
			da_check_xtoy_adjoint_radar.inc     \
			da_check_xtoy_adjoint_profiler.inc  \
			da_check_xtoy_adjoint_buoy.inc      \
			da_test_vxtransform.inc             \
			da_transform_xtovp.inc              \
			da_check.inc                        \
			da_check_xtoy_adjoint_pseudo.inc    \
			da_check_xtoy_adjoint_qscat.inc     \
			da_check_xtoy_adjoint_ssmt1.inc     \
			da_check_xtoy_adjoint_ssmt2.inc     \
			da_setup_testfield.inc              \
			da_set_tst_trnsf_fld.inc

da_gen_be.o:		da_gen_be.f90                    \
                        module_wrf_error.o               \
                        da_constants.o			 \
			liblapack.a			 \
			libblas.a				 \
                        da_tracing.o                     \
			da_transform_vptovv.inc	         \
			da_eof_decomposition.inc         \
			da_eof_decomposition_test.inc    \
                        da_perform_2drf.inc              \
                        da_recursive_filter_1d.inc       \
			da_create_bins.inc               \
                        da_filter_regcoeffs.inc          \
                        da_print_be_stats_h_global.inc   \
                        da_print_be_stats_h_regional.inc \
                        da_print_be_stats_p.inc          \
                        da_print_be_stats_v.inc          \
			da_readwrite_be_stage2.inc       \
			da_readwrite_be_stage3.inc       \
			da_readwrite_be_stage4.inc

da_spectral.o:		da_spectral.f90             \
			da_constants.o		    \
			da_define_structures.o	    \
			libfftpack5.a		    \
			da_asslegpol.inc            \
			da_calc_power.inc           \
			da_get_gausslats.inc        \
			da_get_reglats.inc          \
			da_initialize_h.inc         \
			da_legtra.inc               \
			da_legtra_inv.inc           \
			da_setlegpol.inc            \
			da_setlegpol_test.inc       \
			da_test_spectral.inc        \
			da_v_to_vv_spectral.inc     \
			da_vv_to_v_spectral.inc     \
			da_v_to_vv_spectral_adj.inc \
			da_legtra_inv_adj.inc       \
			da_apply_power.inc

da_be_spectral.o:	da_be_spectral.f90          \
			da_constants.o	            \
			libfftpack5.a		    \
			da_asslegpol.inc            \
			da_calc_power.inc           \
			da_get_gausslats.inc        \
			da_get_reglats.inc          \
			da_initialize_h.inc         \
			da_legtra.inc               \
			da_legtra_inv.inc           \
			da_setlegpol.inc            \
			da_setlegpol_test.inc       \
			da_vv_to_v_spectral.inc     \
			da_legtra_inv_adj.inc       \
			da_apply_power.inc

da_radiance.o:		da_radiance.f90                   \
                        da_constants.o                    \
			da_define_structures.o            \
			da_interpolation.o                \
			da_statistics.o                   \
			da_tools.o	                  \
			da_par_util.o		          \
			rttov_const.o	                  \
			rttov_types.o                     \
			gsi_kinds.o	                  \
			gsi_constants.o	                  \
			da_rtm_init.inc                   \
			da_rtm_direct.inc                 \
			da_rtm_tl.inc                     \
			da_rtm_ad.inc                     \
			da_calculate_grady_rad.inc        \
			da_calculate_jo_and_grady_rad.inc \
			da_calculate_residual_rad.inc     \
			da_transform_xtoy_rad.inc         \
			da_transform_xtoy_rad_adj.inc     \
			da_get_innov_vector_rad.inc       \
			da_biascorr_rad.inc               \
			da_qc_rad.inc                     \
			da_qc_amsua.inc                   \
			da_qc_amsub.inc                   \
			da_read_bufrtovs.inc              \
			da_read_bufrairs.inc              \
			da_read_kma1dvar.inc              \
			da_setup_bufrtovs_structures.inc  \
			da_oma_stats_rad.inc              \
			da_omb_stats_rad.inc              \
			da_print_stats_rad.inc            \
			da_detsurtyp.inc                  \
			gsi_emiss.inc                     \
			emiss_ssmi.inc                    \
			iceem_amsu.inc                    \
			landem.inc                        \
			snwem_amsu.inc                    \
			seaem.inc

da_tracing.o:           da_tracing.f90                    \
                        da_trace_init.inc                 \
                        da_trace_entry.inc                \
                        da_trace.inc                      \
                        da_trace_exit.inc                 \
                        da_trace_int_sort.inc             \
                        da_trace_real_sort.inc            \
                        da_trace_report.inc               \
                        da_constants.o                    \
                        da_memory.o                       \
                        module_wrf_error.o                \
                        da_par_util1.o

rttov_const.o:		parkind1.o	\
			rttov_const.f90

rttov_global.o:		parkind1.o	\
			rttov_const.o	\
			rttov_global.f90

rttov_types.o:		parkind1.o	\
			rttov_const.o	\
			rttov_types.f90

gsi_constants.o:	gsi_kinds.o      \
			gsi_constants.f90

##############################################################################

# DEPENDENCIES : only dependencies after this line (don't remove the word DEPENDENCIES)

