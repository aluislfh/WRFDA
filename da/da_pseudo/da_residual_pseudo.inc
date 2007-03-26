subroutine da_residual_pseudo(oi, y, re,                        &
                                         np_missing, np_bad_data,          &
                                         np_obs_used, np_available)

   !-----------------------------------------------------------------------
   ! Purpose: Calculate residuals for pseudo obs
   !-----------------------------------------------------------------------

   implicit none

   type (ob_type), intent(in)        :: oi     ! Innovation vector (O-B).
   type (y_type) , intent(in)        :: y      ! y = H (xa)
   type (y_type) , intent(inout)     :: re     ! Residual vector (O-A).

   integer       , intent(inout)     :: np_available, np_obs_used,          &
                                        np_missing  , np_bad_data

   type (bad_data_type)              :: n_obs_bad
   integer                           :: n

   if (oi%num_pseudo > 0) then

      n_obs_bad % u % num = number_type(0, 0, 0)
      n_obs_bad % v % num = number_type(0, 0, 0)
      n_obs_bad % t % num = number_type(0, 0, 0)
      n_obs_bad % p % num = number_type(0, 0, 0)
      n_obs_bad % q % num = number_type(0, 0, 0)

      do n=1, oi%num_pseudo

       if (oi%pseudo(n)%loc%proc_domain) then

         np_available = np_available + 5

         re%pseudo(n)%u = da_residual(n, 0, y%pseudo(n)%u, &
                                      oi%pseudo(n)%u, n_obs_bad % u)
         re%pseudo(n)%v = da_residual(n, 0, y%pseudo(n)%v, &
                                   oi%pseudo(n)%v, n_obs_bad % v)
         re%pseudo(n)%t = da_residual(n, 0, y%pseudo(n)%t, &
                                      oi%pseudo(n)%t, n_obs_bad % t)
         re%pseudo(n)%p = da_residual(n, 0, y%pseudo(n)%p, &
                                      oi%pseudo(n)%p, n_obs_bad % p)
         re%pseudo(n)%q = da_residual(n, 0, y%pseudo(n)%q, &
                                      oi%pseudo(n)%q, n_obs_bad % q)
       end if

      end do
      
      np_missing = np_missing + n_obs_bad % u % num % miss + &
                   n_obs_bad % v % num % miss + n_obs_bad % t % num % miss + &
                   n_obs_bad % p % num % miss + n_obs_bad % q % num % miss 
      np_bad_data = np_bad_data + n_obs_bad % u % num % bad + &
                    n_obs_bad % v % num % bad + n_obs_bad % t % num % bad + &
                    n_obs_bad % p % num % bad + n_obs_bad % q % num % bad 
      np_obs_used = np_obs_used + n_obs_bad % u % num % use + &
                    n_obs_bad % v % num % use + n_obs_bad % t % num % use + &
                    n_obs_bad % p % num % use + n_obs_bad % q % num % use

   end if

end subroutine da_residual_pseudo

