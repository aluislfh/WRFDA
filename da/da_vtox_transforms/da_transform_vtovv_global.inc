subroutine da_transform_vtovv_global ( cv_size, xbx, be, cv, vv, &
                                       ids, ide, jds, jde, kds, kde, &
                                       ims, ime, jms, jme, kms, kme, &
                                       its, ite, jts, jte, kts, kte )

   !--------------------------------------------------------------------------
   ! Purpose   : Control variable transform for global WRF-Var 
   !--------------------------------------------------------------------------

   implicit none

   integer, intent(in)          :: cv_size ! Size of cv array.
   type (xbx_type),intent(in)   :: xbx  ! For header & non-grid arrays.
   type (be_type), intent(in)   :: be   ! background errors.
   real, intent(in)             :: cv(1:cv_size)   ! control variables.
   type (vp_type),intent(out)   :: vv   ! grdipt/eof cv (local).
   integer, intent(in)          :: ids,ide, jds,jde, kds,kde ! domain dims.
   integer, intent(in)          :: ims,ime, jms,jme, kms,kme ! memory dims.
   integer, intent(in)          :: its,ite, jts,jte, kts,kte ! tile   dims

   integer                      :: k, m ! Loop counters.
   integer                      :: cv_s ! Counter.
   integer                      :: cv_e ! Counter.

   ! Stop compiler whinge

   IF (kms==0 .OR. kds==0 .OR. kde==0 .OR. kme==0) THEN
   END IF

   IF (trace_use) call da_trace_entry("da_transform_vtovv_global")

   !-------------------------------------------------------------------------
   ! [1] Spectral to grid transform for standard control variables:
   !-------------------------------------------------------------------------
  
   cv_s = 1        
   do k = 1, be%v1%mz
      cv_e = cv_s + 2 * be % cv % size1c - 1 
      call da_v_to_vv_spectral( be % v1 % max_wave, be % cv % size1c, &
         xbx % lenr, xbx % lenwrk, xbx % lensav, &
         xbx % inc, xbx % alp_size, xbx % alp, &
         xbx % wsave, be%v1%power(0:be % v1 % max_wave,k), &
         cv(cv_s:cv_e), vv%v1(its:ite,jts:jte,k), &
         ids, ide, jds, jde, &
         ims, ime, jms, jme, &
         its, ite, jts, jte )
      cv_s = cv_e + 1
   end do

   do k = 1, be%v2%mz
      cv_e = cv_s + 2 * be % cv % size2c - 1
      call da_v_to_vv_spectral( be % v2 % max_wave, be % cv % size2c, &
         xbx % lenr, xbx % lenwrk, xbx % lensav, &
         xbx % inc, xbx % alp_size, xbx % alp, &
         xbx % wsave, be%v2%power(0:be % v2 % max_wave,k), &
         cv(cv_s:cv_e), vv%v2(its:ite,jts:jte,k), &
         ids, ide, jds, jde, &
         ims, ime, jms, jme, &
         its, ite, jts, jte )
      cv_s = cv_e + 1
   end do

   do k = 1, be%v3%mz
      cv_e = cv_s + 2 * be % cv % size3c - 1
      call da_v_to_vv_spectral( be % v3 % max_wave, be % cv % size3c, &
         xbx % lenr, xbx % lenwrk, xbx % lensav, &
         xbx % inc, xbx % alp_size, xbx % alp, &
         xbx % wsave, be%v3%power(0:be % v3 % max_wave,k), &
         cv(cv_s:cv_e), vv%v3(its:ite,jts:jte,k), &
         ids, ide, jds, jde, &
         ims, ime, jms, jme, &
         its, ite, jts, jte )
      cv_s = cv_e + 1
   end do

   do k = 1, be%v4%mz
      cv_e = cv_s + 2 * be % cv % size4c - 1
      call da_v_to_vv_spectral( be % v4 % max_wave, be % cv % size4c, &
         xbx % lenr, xbx % lenwrk, xbx % lensav, &
         xbx % inc, xbx % alp_size, xbx % alp, &
         xbx % wsave, be%v4%power(0:be % v4 % max_wave,k), &
         cv(cv_s:cv_e), vv%v4(its:ite,jts:jte,k), &
         ids, ide, jds, jde, &
         ims, ime, jms, jme, &
         its, ite, jts, jte )
      cv_s = cv_e + 1
   end do

   do k = 1, be%v5%mz

     cv_e = cv_s + 2 * be % cv % size5c - 1
     call da_v_to_vv_spectral( be % v5 % max_wave, be % cv % size5c, &
        xbx % lenr, xbx % lenwrk, xbx % lensav, &
        xbx % inc, xbx % alp_size, xbx % alp, &
        xbx % wsave, be%v5%power(0:be % v5 % max_wave,k), &
        cv(cv_s:cv_e), vv%v5(its:ite,jts:jte,kts:kte), &
        ids, ide, jds, jde, &
        ims, ime, jms, jme, &
        its, ite, jts, jte )
     cv_s = cv_e + 1
   end do

   !-------------------------------------------------------------------------
   ! [2] Spectral to grid transform for flow-dependent control variables:
   !-------------------------------------------------------------------------
  
   do m = 1, be % ne
      cv_e = cv_s + 2 * be % cv % size_alphac - 1
      call da_v_to_vv_spectral( be % alpha % max_wave, be % cv % size_alphac, &
         xbx % lenr, xbx % lenwrk, xbx % lensav, &
         xbx % inc, xbx % alp_size, xbx % alp, &
         xbx % wsave, be % alpha % power(0:be%alpha%max_wave,1), &
         cv(cv_s:cv_e), vv%alpha(its:ite,jts:jte,m), &
         ids, ide, jds, jde, &
         ims, ime, jms, jme, &
         its, ite, jts, jte )
      cv_s = cv_e + 1
   end do

   IF (trace_use) call da_trace_exit("da_transform_vtovv_global")

end subroutine da_transform_vtovv_global
