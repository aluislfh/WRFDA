subroutine da_unpack_count_obs (num_obs, offset, value)

   !---------------------------------------------------------------------------
   ! Purpose: Unpack the 4 integer values starting at value(offset) into the
   !          num_obs structure.
   !---------------------------------------------------------------------------

   implicit none

   type (count_obs_number_type), intent(out)    :: num_obs
   integer                     , intent(inout)  :: offset
   integer                     , intent(in)     :: value(*)

   num_obs % num_used         = value(offset)
   num_obs % num_outside_iyjx = value(offset+1)
   num_obs % num_max_err_chk  = value(offset+2)
   num_obs % num_missing      = value(offset+3)
   offset = offset + 4

end subroutine da_unpack_count_obs

