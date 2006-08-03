subroutine da_get_2d_sum(var, name, &
                      ids, ide, jds, jde, &
                      ims, ime, jms, jme, &
                      its, ite, jts, jte )

   implicit none
   integer, intent(in) :: ids, ide, jds, jde, &
                          ims, ime, jms, jme, &
                          its, ite, jts, jte
   real, dimension(ims:ime, jms:jme), intent(in) :: var
   character(len=*), intent(in) :: name

   real :: partial, total

   ! JRB Use variables to stop compiler complaining
   IF (ids == 1 .OR. ide == 1 .OR. jds == 1 .OR. jde == 1) THEN
   END IF

   partial = SUM(var(its:ite,jts:jte)*var(its:ite,jts:jte))

   total = wrf_dm_sum_real( partial )
   WRITE(UNIT=stdout,FMT=*) 'TEST_COVERAGE_get_2d_sum:  total = ', total

   write(unit=stderr, fmt='(3a, e24.14)') &
        'Square sum of <', trim(name), '>=', total

end subroutine da_get_2d_sum
