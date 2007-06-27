subroutine da_llij_latlon(lat, lon, proj, i, j)

   !----------------------------------------------------------------------- 
   ! Purpose: Compute the i/j location of a lat/lon on a LATLON grid.
   !-----------------------------------------------------------------------

   implicit none

   real, intent(in)             :: lat
   real, intent(in)             :: lon
   type(proj_info), intent(in)  :: proj
   real, intent(out)            :: i
   real, intent(out)            :: j

   real                         :: deltalat
   real                         :: deltalon
   real                         :: lon360
   real                         :: latinc
   real                         :: loninc

   ! Extract the latitude and longitude increments for this grid
   ! (e.g., 2.5 deg for NCEP reanalysis) from the proj structure, where
   ! loninc is saved in the stdlon tag and latinc is saved in truelat1

   latinc = proj%truelat1
   loninc = proj%stdlon

   ! Compute deltalat and deltalon as the difference between the input 
   ! lat/lon and the origin lat/lon

   deltalat = lat - proj%lat1

   ! To account for issues around the dateline, convert the incoming
   ! longitudes to be 0->360.
   if (lon < 0) then 
      lon360 = lon + 360.0 
   else 
      lon360 = lon
   end if    
   deltalon = lon360 - proj%lon1      
    
   ! Compute i/j
   i = deltalon/loninc + 1.
   j = deltalat/latinc + 1.

end subroutine da_llij_latlon

