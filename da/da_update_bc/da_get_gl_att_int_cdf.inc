subroutine da_get_gl_att_int_cdf(file, att_name, value, debug)
 
   !-----------------------------------------------------------------------
   ! Purpose: TBD
   !-----------------------------------------------------------------------
        
   implicit none

#include "netcdf.inc"

   character (len=80), intent(in) :: file
   character (len=*), intent(in) :: att_name
   logical, intent(in) :: debug
   integer, intent(out) :: value

   integer :: cdfid, rcode

   cdfid = ncopn(file, NCNOWRIT, rcode)

   if (rcode == 0) then
     if (debug) write(unit=stdout,fmt=*) ' open netcdf file ', trim(file)
   else
     write(unit=stdout,fmt=*) ' error openiing netcdf file ', trim(file)
     stop
   end if

   rcode = NF_GET_ATT_inT(cdfid, nf_global, att_name, value)

   call ncclos(cdfid,rcode)

   if (debug) write(unit=stdout,fmt=*) ' global attribute ',att_name,' is ',value

end subroutine da_get_gl_att_int_cdf

