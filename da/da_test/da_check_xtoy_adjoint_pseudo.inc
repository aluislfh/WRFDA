subroutine da_check_xtoy_adjoint_pseudo(iv, y, adjtest_lhs, pertile_lhs)

   !-----------------------------------------------------------------------
   ! Purpose: TBD
   !-----------------------------------------------------------------------

   implicit none

   type (iv_type), intent(in)     :: iv            ! obs. inc. vector (o-b).
   type (y_type) , intent(inout)  :: y             ! y = h (xa)
   real          , intent(inout)  :: adjtest_lhs, pertile_lhs   

   integer :: n             ! Loop counter.
   
   if (trace_use_dull) call da_trace_entry("da_check_xtoy_adjoint_pseudo")

   do n=1, iv%info(pseudo)%nlocal
      if (iv%info(synop)%proc_domain(1,n)) then
         adjtest_lhs = adjtest_lhs + (y%pseudo(n)%u/typical_u_rms)**2 + &
            (y%pseudo(n)%v/typical_v_rms)**2 + &
            (y%pseudo(n)%v/typical_t_rms)**2 + &
            (y%pseudo(n)%v/typical_p_rms)**2 + &
            (y%pseudo(n)%v/typical_q_rms)**2
      end if

      pertile_lhs = pertile_lhs + (y%pseudo(n)%u/typical_u_rms)**2 + &
         (y%pseudo(n)%v/typical_v_rms)**2 + &
         (y%pseudo(n)%v/typical_t_rms)**2 + &
         (y%pseudo(n)%v/typical_p_rms)**2 + &
         (y%pseudo(n)%v/typical_q_rms)**2

      y%pseudo(n)%u = y%pseudo(n)%u/typical_u_rms ** 2
      y%pseudo(n)%v = y%pseudo(n)%v/typical_v_rms ** 2
      y%pseudo(n)%t = y%pseudo(n)%p/typical_t_rms ** 2
      y%pseudo(n)%p = y%pseudo(n)%v/typical_p_rms ** 2
      y%pseudo(n)%q = y%pseudo(n)%p/typical_q_rms ** 2
   end do
   
   if (trace_use_dull) call da_trace_exit("da_check_xtoy_adjoint_pseudo")

end subroutine da_check_xtoy_adjoint_pseudo


