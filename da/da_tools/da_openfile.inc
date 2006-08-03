      subroutine da_openfile (KUNIT, CDFILE, CDACCESS, CDSTATUS, CDFORM)
!--------------------------------------------------------------------------!
!
!                       ROUTINE OPENFILE
!                     ********************
!
!  PURPOSE:
!  -------
!     OPEN AN FILE AND REWIND
!
!   METHOD:
!   ------
!
!   INPUT:
!   -----
!      KUNIT:          LOGICAL UNIT
!      CDFILE:         NAME OF FILE FOR OUTPUT OF DISCARED OBS.
!      CDA!ESS:       A!ESS (SEQUENTIAL OR ),
!      CDSTATUS:       STATUS (OLD, NEW OR UNKNOWN)
!      CDFORM:         FORM (FORMATTED OR UNFORMATTED)
!
!   OUTPUT:
!   ------
!      OPENED FILE
!
!   COMMON:                      NO
!   -------
!   EXTERNAL:                    NO
!   --------
!   REFERENCES:                  NO
!   ----------
!
!   MODIFICATIONS:
!   --------------
!       ORIGINAL :  98-07 (F. VANDENBERGHE)
!       ADDITIONS : 98-11 Norm DOCTOR (F. VANDENBERGHE)
!----------------------------------------------------------------------------!

!...ARGUMENTS FILE NAME AND LOGICAL UNIT

      INTEGER        KUNIT, iost
      CHARACTER*(*)  CDFILE, CDACCESS, CDSTATUS, CDFORM

!------------------------------------------------------------------------------C

! 1.  OPEN FILE
! -------------

      IOST = 0

      OPEN ( UNIT   = KUNIT, &
             FILE   = CDFILE, &
             ACCESS = CDACCESS, &
             STATUS = CDSTATUS, &
             FORM   = CDFORM, &
             ERR    =  2000, &
             IOSTAT = IOST        )
 
      REWIND (KUNIT)
 
      RETURN
 
! 2.  ERROR PROCESSING
! --------------------
 
 2000 CONTINUE
      call da_error(__FILE__,__LINE__, &
        (/"Cannot open file"//TRIM(CDFILE)/))

      end subroutine da_openfile
