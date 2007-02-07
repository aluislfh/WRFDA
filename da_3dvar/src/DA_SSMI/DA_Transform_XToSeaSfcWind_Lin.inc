SUBROUTINE DA_Transform_XToSeaSfcWind_Lin( xa, xb )

!------------------------------------------------------------------------------!
!  Convert (U-V in m/s) components into wind speed (Speed in m/s)
!------------------------------------------------------------------------------!

   IMPLICIT NONE

   type (x_type),  intent(inout) :: xa   ! model space analysis (local).
   type (xb_type), intent(in)    :: xb   ! first guess.

   real :: const, rgh_fac, height
   integer :: i, j, k

!------------------------------------------------------------------------------!

   const = log(10./0.0001)
   k = xb%kts
    
   do j=xb%jts,xb%jte
   do i=xb%its,xb%ite
        height = xb%h(i,j,k) - xb%terr(i,j)
        if( height <= 0.) then
          print*,i,j,' ht = ',xb%h(i,j,k) ,' terr =  ',xb%terr(i,j)
          stop
        endif

      rgh_fac = const/log(height/0.0001) ! roughness = 0.0001
      xa%speed(i,j) = (xa%u(i,j,k)*xb%u(i,j,k) &
                    +  xa%v(i,j,k)*xb%v(i,j,k)) &
                    *  rgh_fac*rgh_fac / xb%speed(i,j)
   enddo
   enddo

END SUBROUTINE DA_Transform_XToSeaSfcWind_Lin
