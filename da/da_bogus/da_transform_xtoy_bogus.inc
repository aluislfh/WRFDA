subroutine da_transform_xtoy_bogus (xa, xb, iv, xp, y)

   !---------------------------------------------------------------------
   ! Purpose: the linearized bogus observation operators.
   !---------------------------------------------------------------------

   implicit none

   type (xb_type),    intent(in)    :: xb       ! first guess state.
   type (x_type),     intent(in)    :: xa       ! gridded analysis increment.
   type (ob_type),    intent(in)    :: iv       ! Innovation vector (O-B).
   type (xpose_type), intent(in)    :: xp       ! Domain decomposition vars.
   type (y_type),     intent(inout) :: y        ! y = h (xa) (linear)

   integer                        :: n        ! Loop counter.
   integer                        :: i, j, k  ! Index dimension.
   integer                        :: num_levs ! Number of obs levels.
   real                           :: dx, dxm  ! 
   real                           :: dy, dym  !
   real, dimension(xp%kts:xp%kte) :: model_t,model_t9
   real, dimension(xp%kts:xp%kte) :: model_q,model_q9
   real, dimension(xp%kts:xp%kte) :: model_p_c,model_p_c9
   real                           :: psfc_loc,terr_loc,psfc_loc9

   if (iv%num_bogus > 0) then
      do n = iv%ob_numb(iv%current_ob_time-1)%bogus+1, iv%ob_numb(iv%current_ob_time)%bogus

         !xyh         y%bogus(n)%slp  = 0.0
         !xyh         y%bogus(n)%u(:) = 0.0
         !xyh         y%bogus(n)%v(:) = 0.0
         !xyh         y%bogus(n)%t(:) = 0.0
         !xyh         y%bogus(n)%q(:) = 0.0

         num_levs = iv % bogus(n) % info % levels

         if (num_levs < 1) cycle

         ! [1.1] Get cross pt. horizontal interpolation weights:

         i = iv%bogus(n)%loc%i
         dy = iv%bogus(n)%loc%dy
         dym = iv%bogus(n)%loc%dym
         j = iv%bogus(n)%loc%j
         dx = iv%bogus(n)%loc%dx
         dxm = iv%bogus(n)%loc%dxm

         ! [1.2] Interpolate horizontally from cross points:

         do k = xp%kts, xp%kte
            model_t9(k) = dym*(dxm*xa%t(i,j,k) + dx*xa%t(i+1,j,k)) &
                           + dy *(dxm*xa%t(i,j+1,k) + dx*xa%t(i+1,j+1,k))
            model_t(k) = dym*(dxm*xb%t(i,j,k) + dx*xb%t(i+1,j,k)) &
                           + dy *(dxm*xb%t(i,j+1,k) + dx*xb%t(i+1,j+1,k))
            model_q9(k) = dym*(dxm*xa%q(i,j,k) + dx*xa%q(i+1,j,k)) &
                           + dy *(dxm*xa%q(i,j+1,k) + dx*xa%q(i+1,j+1,k))
            model_q(k) = dym*(dxm*xb%q(i,j,k) + dx*xb%q(i+1,j,k)) &
                           + dy *(dxm*xb%q(i,j+1,k) + dx*xb%q(i+1,j+1,k))
            model_p_c9(k) = dym*(dxm*xa%p(i,j,k) + dx*xa%p(i+1,j,k)) &
                           + dy *(dxm*xa%p(i,j+1,k) + dx*xa%p(i+1,j+1,k))
            model_p_c(k) = dym*(dxm*xb%p(i,j,k) + dx*xb%p(i+1,j,k)) &
                           + dy *(dxm*xb%p(i,j+1,k) + dx*xb%p(i+1,j+1,k))
         end do

         terr_loc = dym*(dxm*xb%terr(i,j)   + dx*xb%terr(i+1,j)) &
                    + dy *(dxm*xb%terr(i,j+1) + dx*xb%terr(i+1,j+1))
         psfc_loc = dym*(dxm*xb%psfc(i,j)   + dx*xb%psfc(i+1,j)) &
                    + dy *(dxm*xb%psfc(i,j+1) + dx*xb%psfc(i+1,j+1))
         psfc_loc9 = dym*(dxm*xa%psfc(i,j)   + dx*xa%psfc(i+1,j)) &
                    + dy *(dxm*xa%psfc(i,j+1) + dx*xa%psfc(i+1,j+1))

         call da_tpq_to_slp_lin (model_t, model_q, model_p_c,    &
                                terr_loc, psfc_loc,   &
                                model_t9, model_q9,  &
                                model_p_c9, psfc_loc9, y%bogus(n)%slp, xp) 

         ! [1.4] Interpolate horizontally from dot points:
         call da_interp_lin_3d(xa % u, xp, i, j, dx, dy, dxm, dym, &
                            y%bogus(n)%u, num_levs, iv%bogus(n)%zk, num_levs)
         call da_interp_lin_3d(xa % v, xp, i, j, dx, dy, dxm, dym, &
                            y%bogus(n)%v, num_levs, iv%bogus(n)%zk, num_levs)
         call da_interp_lin_3d(xa % t, xp, i, j, dx, dy, dxm, dym, &
                            y%bogus(n)%t, num_levs, iv%bogus(n)%zk, num_levs)
         call da_interp_lin_3d(xa % q, xp, i, j, dx, dy, dxm, dym, &
                            y%bogus(n)%q, num_levs, iv%bogus(n)%zk, num_levs) 
      end do
   end if

end subroutine da_transform_xtoy_bogus

