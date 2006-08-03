subroutine da_check_max_iv_sound(it, sound,  &
                itu,ituf,itvv,itvvf,itt,ittf,itqv,itqvf )

   IMPLICIT NONE

   INTEGER,           INTENT (IN)         :: it      ! Outer iteration
   TYPE (sound_type), INTENT(INOUT)       :: sound
   INTEGER, INTENT(INOUT) :: itu,ituf,itvv,itvvf,itt,ittf,itqv,itqvf

   INTEGER                                :: k
   LOGICAL                                :: failed

   !--------------------------------------------------------------------------- 
   ! [1.0] Open diagnostic file:
   !---------------------------------------------------------------------------

   IF ( check_max_iv_print )THEN
      WRITE (check_max_iv_unit,'(A)')  &
         '----------------------------------------------------------------'
      WRITE (UNIT = check_max_iv_unit, FMT = '(A,/)') 'MAX ERROR TEST QC:'

      WRITE (UNIT = check_max_iv_unit, FMT = '(/,9(A,F3.0,/))')  &
         'Error max test ratio for Sound_U   = ',max_error_uv, &
         'Error max test ratio for Sound_V   = ',max_error_uv, &
         'Error max test ratio for Sound_T   = ',max_error_t,  &
         'Error max test ratio for Sound_QV  = ',max_error_q
   ENDIF

   !---------------------------------------------------------------------------
   ! [2.0] Perform maximum innovation vector check:
   !---------------------------------------------------------------------------

   failed = .FALSE.

   DO k = 1, sound % info % levels
      ! U-wind

      if (sound % u(k) % qc >= obs_qc_pointer ) THEN
         call da_max_error_qc(it, sound % info, sound % u(k), &
                  max_error_uv, itu, ituf, check_max_iv_unit, 'U    ', &
                                failed, check_max_iv_print)
      END IF

      ! V-wind

      if (sound % v(k) % qc >= obs_qc_pointer ) THEN
         call da_max_error_qc (it, sound % info, sound % v(k),&
                  max_error_uv, itvv, itvvf, check_max_iv_unit, 'V    ', &
                                 failed, check_max_iv_print)                           
      END IF

      ! Temperature

      if (sound % t(k) % qc >= obs_qc_pointer ) THEN
         call da_max_error_qc (it, sound % info, sound % t(k),&
                  max_error_t, itt, ittf, check_max_iv_unit, 'TEMP ', &
                                 failed, check_max_iv_print)
      END IF

      ! Mixing ratio, same ratio as relative humidity

      if (sound % q(k) % qc >= obs_qc_pointer ) THEN
         call da_max_error_qc (it, sound % info, sound % q(k), &
                  max_error_q, itqv, itqvf, check_max_iv_unit, 'QV   ', &
                                 failed, check_max_iv_print)
      END IF
   END DO

end subroutine da_check_max_iv_sound