subroutine da_transform_xtoy_sound (grid, iv, y)

   !-----------------------------------------------------------------------
   ! Purpose: TBD
   !-----------------------------------------------------------------------

   implicit none

   type (domain),     intent(in)    :: grid
   type (iv_type),    intent(in)    :: iv       ! Innovation vector (O-B).
   type (y_type),     intent(inout) :: y        ! y = h (grid%xa) (linear)

   real, allocatable :: u(:,:)
   real, allocatable :: v(:,:)
   real, allocatable :: t(:,:)
   real, allocatable :: q(:,:)

   integer :: n

   if (trace_use_dull) call da_trace_entry("da_transform_xtoy_sound")

   allocate (u(iv%info(sound)%max_lev,iv%info(sound)%n1:iv%info(sound)%n2))
   allocate (v(iv%info(sound)%max_lev,iv%info(sound)%n1:iv%info(sound)%n2))
   allocate (t(iv%info(sound)%max_lev,iv%info(sound)%n1:iv%info(sound)%n2))
   allocate (q(iv%info(sound)%max_lev,iv%info(sound)%n1:iv%info(sound)%n2))
  
   call da_interp_lin_3d (grid%xa%u, iv%info(sound), u)
   call da_interp_lin_3d (grid%xa%v, iv%info(sound), v)
   call da_interp_lin_3d (grid%xa%t, iv%info(sound), t)
   call da_interp_lin_3d (grid%xa%q, iv%info(sound), q)

   do n=iv%info(sound)%n1,iv%info(sound)%n2
      y%sound(n)%u(:) = u(1:size(y%sound(n)%u),n)
      y%sound(n)%v(:) = v(1:size(y%sound(n)%v),n)
      y%sound(n)%t(:) = t(1:size(y%sound(n)%t),n)
      y%sound(n)%q(:) = q(1:size(y%sound(n)%q),n)
   end do

   deallocate (u)
   deallocate (v)
   deallocate (t)
   deallocate (q)

   if (trace_use_dull) call da_trace_exit("da_transform_xtoy_sound")

end subroutine da_transform_xtoy_sound


