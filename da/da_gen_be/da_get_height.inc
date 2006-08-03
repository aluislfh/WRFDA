subroutine da_get_height( input_file, dim1, dim2, dim3, height )

!------------------------------------------------------------------------------
!  PURPOSE: Calculates T, RH from input WRF file.
!  
!  NOTE: 
!  
!  HISTORY: 08/09/2005 - Creation of F90 version.           Dale Barker
!------------------------------------------------------------------------------
   
   implicit none
   
   character (len=200), intent(in) :: input_file       ! NETCDF file nane.
   integer, intent(in)   :: dim1, dim2, dim3          ! Dimensions.
   real, intent(out)     :: height(1:dim1,1:dim2,1:dim3) ! Height.

   character (len=10)    :: var                       ! Variable to search for.
   integer               :: k                         ! Loop counter.
   real                  :: gravity_inv               ! 1/gravity.
   real                  :: phb(1:dim1,1:dim2)        ! Base state geopotential.
   real                  :: ph(1:dim1,1:dim2)         ! Perturbation geopotential.
   real                  :: phfull(1:dim1,1:dim2,1:dim3+1)! Geopotential.

   gravity_inv = 1.0 / gravity

   do k = 1, dim3+1
      var = "PHB"
      call da_get_field( input_file, var, 3, dim1, dim2, dim3+1, k, phb )
      var = "PH"
      call da_get_field( input_file, var, 3, dim1, dim2, dim3+1, k, ph )

      phfull(:,:,k) = phb + ph ! Calculate full geopotential on full (w) model levels:
   end do

   do k = 1, dim3
      height(:,:,k) = 0.5 * ( phfull(:,:,k+1) + phfull(:,:,k) ) * gravity_inv
   end do

end subroutine da_get_height
