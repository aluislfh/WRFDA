subroutine da_calculate_grady_satem( iv, re, jo_grad_y )

   !----------------------------------------------------------------------
   ! Purpose: Applies obs inverse on re-vector
   !----------------------------------------------------------------------

   IMPLICIT NONE


   TYPE (ob_type), INTENT(IN)     :: iv          ! Innovation vector.
   TYPE (y_type),  INTENT(INOUT)  :: re          ! Residual vector.
   TYPE (y_type),  INTENT(INOUT)  :: jo_grad_y   ! Grad_y(Jo)


   INTEGER                      :: n, k

   IF ( iv%num_Satem > 0 ) THEN
      DO n=1, iv%num_Satem
         if (iv%satem(n)%loc%proc_domain_with_halo) then
            do k=1, iv%satem(n)%info%levels
               if (iv%Satem(n)%thickness(k)%qc < obs_qc_pointer) THEN
                  re%Satem(n)%thickness(k) = 0.0
               END IF

               jo_grad_y%Satem(n)%thickness(k) = -re%Satem(n)%thickness(k) / &
                                         ( iv%Satem(n)%thickness(k)%error * &
                                           iv%Satem(n)%thickness(k)%error )
            end do
         endif
      END DO
   END IF

end subroutine da_calculate_grady_satem
