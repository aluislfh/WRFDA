subroutine da_final_write_filtered_obs

   !---------------------------------------------------------------------------
   !  Purpose: Scans intermediate Filtered Obs files  
   !           and writes the data part on filtered_obs_unit
   !---------------------------------------------------------------------------
   implicit none        

   integer                    :: i,iost,iunit, files     
   type (multi_level_type)    :: platform
   real                       :: height_error
   character(len=filename_len) :: filename

   if (trace_use) call da_trace_entry("da_final_write_filtered_obs")

   call da_get_unit(iunit)

   ! Loop over all data files
   !--------------------------

   do files = 0, num_procs-1

      write(unit=filename, fmt='(a,i3.3)') 'filtered_obs.',files      
      open(unit=iunit, file= trim(filename),form='formatted', &
       status='old', iostat=iost)
      if(iost /= 0) &
      call da_error(__FILE__,__LINE__, (/"Cannot open "//trim(filename)/))

      !  loop over records
      !  -----------------
      reports: do
         !     read station general info
         !     =============================
         read (iunit, fmt = fmt_info, iostat = iost) &
                      platform%info%platform,    &
                      platform%info%date_char,   &
                      platform%info%name,        &
                      platform%info%levels,      &
                      platform%info%lat,         &
                      platform%info%lon,         &
                      platform%info%elv,         &
                      platform%info%id
         if (iost /= 0) then
             write (0,'(/A,I9)') ' end OF OBS unit: ',iunit
             write (0,'(/A,I9)') ' iostat:          ',iost
            exit reports
         end if
         write(filtered_obs_unit, fmt = fmt_info)           &
                      platform%info%platform,    &
                      platform%info%date_char,   &
                      platform%info%name,        &
                      platform%info%levels,      &
                      platform%info%lat,         &
                      platform%info%lon,         &
                      platform%info%elv,         &
                      platform%info%id

         !  Read surface Info
         !  -------------------
         read (iunit, fmt = fmt_srfc) platform%loc%slp, platform%loc%pw
         write(filtered_obs_unit, fmt = fmt_srfc) platform%loc%slp, platform%loc%pw

         ! == levels < 1 and not GPSPW, go back to reports

         if ((platform%info%levels < 1) .AND.            &
             (index(platform%info%platform, 'GPSPW') <= 0)) then
              cycle reports
         end if

         !     read EACH LEVELS
         !     ----------------
         do i = 1, platform%info%levels

            platform%each (i) = each_level_type(missing_r, missing, -1.0, & ! height
                          field_type(missing_r, missing, missing_r), & ! u
                          field_type(missing_r, missing, missing_r), & ! v
                          field_type(missing_r, missing, missing_r), & ! p
                          field_type(missing_r, missing, missing_r), & ! t
                          field_type(missing_r, missing, missing_r), & ! q
                          field_type(missing_r, missing, missing_r), & ! rh
                          field_type(missing_r, missing, missing_r), & ! td
                          field_type(missing_r, missing, missing_r))  ! speed 

            read (unit = iunit, fmt = trim (fmt_each)) &
                 platform%each (i)%p,            &
                 platform%each (i)%speed,        &
                 platform%each (i)%v,            &
                 platform%each (i)%height,       &
                 platform%each (i)%height_qc,    &
                 height_error,                   &
                 platform%each (i)%t,            &
                 platform%each (i)%td,           &
                 platform%each (i)%rh

            write (unit = filtered_obs_unit, fmt = trim (fmt_each)) &
                 platform%each (i)%p,            &
                 platform%each (i)%speed,        &
                 platform%each (i)%v,            &
                 platform%each (i)%height,       &
                 platform%each (i)%height_qc,    &
                 height_error,                   &
                 platform%each (i)%t,            &
                 platform%each (i)%td,           &
                 platform%each (i)%rh
         end do
      end do reports                  !  Loop over reports              
      close (iunit)
   end do !  Loop over all data files

   call da_free_unit (iunit)

   if (trace_use) call da_trace_exit("da_final_write_filtered_obs")

end subroutine da_final_write_filtered_obs 


