#

LN      =       ln -sf
MAKE    =       make -i -r
RM      =       rm -f


MODULES = \
	module_bl_ysu.o \
	module_bl_mrf.o \
	module_bl_gfs.o \
	module_bl_myjpbl.o \
	module_cu_kf.o  \
	module_cu_bmj.o \
	module_cu_kfeta.o \
	module_cu_gd.o \
	module_cu_sas.o \
	module_mp_kessler.o \
	module_mp_lin.o  \
	module_mp_wsm3.o \
	module_mp_wsm5.o \
	module_mp_wsm6.o \
	module_mp_etanew.o \
	module_mp_thompson.o \
        module_mp_morr_two_moment.o \
	module_ra_sw.o  \
	module_ra_gsfcsw.o \
	module_ra_rrtm.o  \
	module_ra_cam.o  \
	module_ra_gfdleta.o \
	module_ra_hs.o  \
	module_sf_sfclay.o \
	module_sf_gfs.o \
	module_sf_slab.o  \
	module_sf_noahlsm.o  \
        module_sf_urban.o  \
	module_sf_lsm_nmm.o  \
	module_sf_ruclsm.o \
	module_sf_sfcdiags.o \
	module_sf_myjsfc.o \
	module_physics_addtendc.o \
	module_physics_init.o \
	module_gfs_machine.o \
	module_gfs_funcphys.o \
	module_gfs_physcons.o \
	module_progtm.o \
	module_pbl_driver.o \
	module_cumulus_driver.o \
	module_microphysics_driver.o \
	module_microphysics_zero_out.o \
	module_mixactivate.o \
	module_radiation_driver.o \
	module_surface_driver.o \
	module_diagnostics.o \
	module_fdda_psufddagd.o \
	module_fddagd_driver.o  \
        module_fddaobs_rtfdda.o \
	module_fddaobs_driver.o
  
OBJS    =

NMM_MODULES =  

LIBTARGET    =  physics
TARGETDIR    =  ./

$(LIBTARGET) :
		if [ $(WRF_NMM_CORE) -eq 1 ] ; then \
                  $(MAKE) nmm_contrib                                      ; \
                  $(AR) ../main/$(LIBWRFLIB) $(MODULES) $(OBJS) $(NMM_OBJS) $(NMM_MODULES) ; \
                else                                                         \
                  $(MAKE) non_nmm                                          ; \
                  $(AR) ../main/$(LIBWRFLIB) $(MODULES) $(OBJS)             ; \
                fi

include ../configure.wrf

nmm_contrib : $(NMM_OBJS) $(NMM_MODULES) $(MODULES) $(OBJS)

non_nmm : $(MODULES) $(OBJS)

clean:
	@ echo 'use the clean script'

# DEPENDENCIES : only dependencies after this line (don't remove the word DEPENDENCIES)

module_bl_myjpbl.o: ../share/module_model_constants.o

module_bl_gfs.o: module_gfs_machine.o \
		 module_gfs_physcons.o

module_cu_bmj.o: ../share/module_model_constants.o

module_cu_kf.o:  ../frame/module_wrf_error.o

module_cu_kfeta.o: ../frame/module_wrf_error.o

module_cu_gd.o:

module_gfs_physcons.o: module_gfs_machine.o

module_gfs_funcphys.o: module_gfs_machine.o \
		       module_gfs_physcons.o

module_cu_sas.o: module_gfs_machine.o \
		 module_gfs_funcphys.o \
		 module_gfs_physcons.o

module_ra_gfdleta.o:  ../frame/module_dm.o

module_ra_rrtm.o: ../frame/module_wrf_error.o \
		../frame/module_dm.o

module_ra_cam.o: ../frame/module_wrf_error.o \
		../frame/module_dm.o

module_mp_lin.o : ../frame/module_wrf_error.o

module_sf_lsm_nmm.o: ../share/module_model_constants.o \
		../share/module_MPP.o

module_sf_myjsfc.o: ../share/module_model_constants.o 

module_sf_gfs.o: module_gfs_machine.o \
		 module_gfs_funcphys.o \
		 module_gfs_physcons.o \
		 module_progtm.o

module_sf_noahlsm.o: ../share/module_model_constants.o  \
                     module_sf_urban.o

module_sf_ruclsm.o: ../frame/module_wrf_error.o

module_physics_addtendc.o: \
		module_cu_kf.o			\
		module_cu_kfeta.o		\
		../frame/module_state_description.o \
		../frame/module_configure.o

module_physics_init.o : \
		module_ra_rrtm.o		\
		module_ra_cam.o		\
		module_ra_sw.o			\
		module_ra_gsfcsw.o		\
		module_ra_gfdleta.o		\
		module_ra_hs.o			\
		module_sf_sfclay.o		\
		module_sf_slab.o		\
		module_sf_myjsfc.o		\
		module_sf_noahlsm.o		\
		module_sf_ruclsm.o		\
		module_bl_ysu.o			\
		module_bl_mrf.o			\
		module_bl_gfs.o			\
		module_bl_myjpbl.o		\
		module_cu_kf.o			\
		module_cu_kfeta.o		\
		module_cu_bmj.o			\
		module_cu_gd.o			\
		module_cu_sas.o			\
		module_mp_wsm3.o		\
		module_mp_wsm5.o		\
		module_mp_wsm6.o		\
		module_mp_etanew.o		\
		module_fdda_psufddagd.o		\
		module_fddaobs_rtfdda.o		\
		module_mp_thompson.o            \
                module_mp_morr_two_moment.o     \
		../frame/module_state_description.o \
		../frame/module_configure.o \
		../frame/module_wrf_error.o \
		../frame/module_dm.o \
		../share/module_model_constants.o \
		module_sf_lsm_nmm.o	

module_microphysics_driver.o: \
                module_mixactivate.o \
                module_mp_kessler.o module_mp_lin.o \
		module_mp_wsm3.o module_mp_wsm5.o \
		module_mp_wsm6.o module_mp_etanew.o \
		module_mp_thompson.o            \
                module_mp_morr_two_moment.o     \
		../frame/module_driver_constants.o \
		../frame/module_state_description.o \
		../frame/module_wrf_error.o \
		../frame/module_configure.o \
		../share/module_model_constants.o 

module_cumulus_driver.o: \
                module_cu_kf.o \
		module_cu_kfeta.o \
		module_cu_bmj.o \
		module_cu_gd.o \
		module_cu_sas.o \
		../frame/module_state_description.o \
		../frame/module_configure.o \
		../share/module_model_constants.o

module_pbl_driver.o:  \
		module_bl_myjpbl.o \
		module_bl_ysu.o \
		module_bl_mrf.o \
		module_bl_gfs.o \
		../frame/module_state_description.o \
		../frame/module_configure.o \
		../share/module_model_constants.o 

module_mixactivate.o: \
		module_radiation_driver.o

module_radiation_driver.o: \
		module_ra_sw.o \
		module_ra_gsfcsw.o \
		module_ra_rrtm.o \
		module_ra_cam.o \
		module_ra_gfdleta.o \
		module_ra_hs.o \
		../frame/module_driver_constants.o \
		../frame/module_state_description.o \
		../frame/module_wrf_error.o \
		../frame/module_configure.o \
		../share/module_model_constants.o 

module_surface_driver.o: \
		module_sf_sfclay.o		\
		module_sf_slab.o		\
		module_sf_myjsfc.o		\
		module_sf_gfs.o  		\
		module_sf_noahlsm.o		\
		module_sf_ruclsm.o		\
		module_sf_sfcdiags.o		\
		../frame/module_state_description.o \
		../frame/module_configure.o \
		../share/module_model_constants.o  \
		module_sf_lsm_nmm.o

module_diagnostics.o: ../frame/module_dm.o

module_fddagd_driver.o: \
		../frame/module_state_description.o \
		../frame/module_configure.o \
		../share/module_model_constants.o  \
		module_fdda_psufddagd.o

module_fddaobs_driver.o: \
		../frame/module_domain.o \
		../share/module_bc.o  \
		../share/module_model_constants.o  \
		module_fddaobs_rtfdda.o

# DO NOT DELETE
