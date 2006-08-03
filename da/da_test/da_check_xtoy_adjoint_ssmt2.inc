subroutine da_check_xtoy_adjoint_ssmt2( iv, y, adjtest_lhs, pertile_lhs )

   IMPLICIT NONE

   TYPE (ob_type), INTENT(in)     :: iv            ! obs. inc. vector (o-b).
   TYPE (y_type) , INTENT(inout)  :: y             ! y = h (xa)
   REAL          , INTENT(inout)  :: adjtest_lhs, pertile_lhs   

   INTEGER                        :: n, k          ! Loop counter.

!----------------------------------------------------------------------------

   IF ( iv%num_ssmt2 > 0 ) THEN
   DO n=1, iv%num_ssmt2
      if( iv%ssmt2(n)%loc%proc_domain_with_halo ) then
         if( iv%ssmt2(n)%loc%proc_domain ) then
            do k=1, iv%ssmt2(n)%info%levels
               adjtest_lhs = adjtest_lhs + ( y%ssmt2(n)%rh(k)/typical_rh_rms )**2
            enddo
         endif

         do k=1, iv%ssmt2(n)%info%levels
            pertile_lhs = pertile_lhs + ( y%ssmt2(n)%rh(k)/typical_rh_rms )**2

            y%ssmt2(n)%rh(k) = y%ssmt2(n)%rh(k) / typical_rh_rms ** 2
         enddo
      endif
   ENDDO
   ENDIF

end subroutine da_check_xtoy_adjoint_ssmt2
