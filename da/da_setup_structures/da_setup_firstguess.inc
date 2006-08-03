subroutine da_setup_firstguess( xbx, grid, &
#include "em_dummy_args.inc"
                              )
   !---------------------------------------------------------------------------
   ! PURPOSE: Allocate and read in components of first guess state.
   !---------------------------------------------------------------------------

   IMPLICIT NONE

   TYPE (xbx_type),INTENT(OUT)  :: xbx   ! Header & non-gridded vars.

   TYPE(domain) , TARGET        :: grid

   ! Definitions of dummy arguments to solve
#include "em_dummy_decl.inc"

   integer :: is, ie, js, je
   real    :: ddx , ddy    

   IF (trace_use) call da_trace_entry("da_setup_firstguess")


   write(unit=stdout, fmt='(/a)') &
      '-----------------------------------'
   write(unit=stdout, fmt='(/a)') &
      '[2.0] Set up first guess field (xb)'
   write(unit=stdout, fmt='(a/a)') &
      '-----------------------------------'

   is = xp % its
   ie = xp % ite
   js = xp % jts
   je = xp % jte

   !---------------------------------------------------------------------------      
   ! [1.0] Setup and read in fields from first guess:
   !---------------------------------------------------------------------------      

   if ( fg_format == 1 ) then

      ! First guess is a WRF C-grid format file:

     call da_setup_firstguess_wrf( xbx, grid, &
#include "em_dummy_args.inc"
                                 )
   else if ( fg_format == 3 ) then

      ! First guess is an KMA format file:

     call da_setup_firstguess_kma( xbx, grid, &
#include "em_dummy_args.inc"
                                 )
   end if

   !---------------------------------------------------------------------------
   ! Exchange halo region for XB arrays.
   !---------------------------------------------------------------------------

   if ( fg_format == 1 .or. fg_format == 2) then
      ! Calculate multiplicative constants for PsiChi_TO_UV 
      xb%coefx(is:ie,js:je) = 0.5 * xb%map_factor(is:ie,js:je)/xb%ds
      xb%coefy(is:ie,js:je) = xb%coefx(is:ie,js:je)
      xb%coefz(is:ie,js:je) = 0.5 / (xb%map_factor(is:ie,js:je)*xb%ds)
   else if (fg_format == 3) then
      ! Calculate multiplicative constants for PsiChi_TO_UV 
      ddx =  earth_radius*1000 * 2.0 * pi / (xb%ide-xb%ids+1)
      ddy =  earth_radius*1000       * pi / (xb%jde-xb%jds  )
      xb% coefx(is:ie,js:je) = 0.5 / (ddx * cos(xlat(is:ie,js:je)*pi/180.))
      xb% coefy(is:ie,js:je) = 0.5 /  ddy
   else
      WRITE(UNIT=errmsg(1),FMT='(A,I5)') &
         "Wrong choice for fg_format = ",fg_format
      call da_error(__FILE__,__LINE__,errmsg(1:1))
   end if

   call wrf_dm_halo(xp%domdesc,xp%comms,xp%halo_id0)
   periodic_x = grid%periodic_x

   if (global) then     
      ! Set East-West boundary for Xb-array 
      call da_set_boundary_xb(xb)
   end if

   !---------------------------------------------------------------------------      
   ! [2.0] Setup grid-dependent constants used:
   !---------------------------------------------------------------------------

   ! [2.1] Set up fast Fourier & Legendre transform constants:

   call da_setup_runconstants( xp, xb, xbx)

   IF (trace_use) call da_trace_exit("da_setup_firstguess")

end subroutine da_setup_firstguess
