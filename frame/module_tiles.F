!WRF:DRIVER_LAYER:TILING
!

MODULE module_tiles

  USE module_configure

  INTERFACE set_tiles
    MODULE PROCEDURE set_tiles1 , set_tiles2, set_tiles3
  END INTERFACE

CONTAINS

! CPP macro for error checking
#define ERROR_TEST(A,O,B) IF( A O B )THEN;WRITE(mess,'(3A4)')'A','O','B';CALL WRF_ERROR_FATAL(mess);ENDIF

! this version is used to compute only on a boundary of some width
! The ids, ide, jds, and jde arguments specify the edge of the boundary (a way of
! accounting for staggering, and the bdyw gives the number of cells
! (idea: if bdyw is negative, have it do the reverse and specify the 
! interior, less the boundary.

  SUBROUTINE set_tiles1 ( grid , ids , ide , jds , jde , bdyw )

     USE module_domain
     USE module_driver_constants
     USE module_machine
     USE module_wrf_error

     IMPLICIT NONE
  
     !  Input data.
  
     TYPE(domain)                   , INTENT(INOUT)  :: grid
     INTEGER                        , INTENT(IN)     :: ids , ide , jds , jde , bdyw

     !  Local data

     INTEGER                                :: spx, epx, spy, epy, t, tt, ts, te
     INTEGER                                :: smx, emx, smy, emy
     INTEGER                                :: ntiles , num_tiles

     CHARACTER*80              :: mess

     data_ordering : SELECT CASE ( model_data_order )
       CASE  ( DATA_ORDER_XYZ )
         spx = grid%sp31 ; epx = grid%ep31 ; spy = grid%sp32 ; epy = grid%ep32
       CASE  ( DATA_ORDER_YXZ )
         spx = grid%sp32 ; epx = grid%ep32 ; spy = grid%sp31 ; epy = grid%ep31
       CASE  ( DATA_ORDER_ZXY )
         spx = grid%sp32 ; epx = grid%ep32 ; spy = grid%sp33 ; epy = grid%ep33
       CASE  ( DATA_ORDER_ZYX )
         spx = grid%sp33 ; epx = grid%ep33 ; spy = grid%sp32 ; epy = grid%ep32
       CASE  ( DATA_ORDER_XZY )
         spx = grid%sp31 ; epx = grid%ep31 ; spy = grid%sp33 ; epy = grid%ep33
       CASE  ( DATA_ORDER_YZX )
         spx = grid%sp33 ; epx = grid%ep33 ; spy = grid%sp31 ; epy = grid%ep31
     END SELECT data_ordering

     num_tiles = 4

     IF ( num_tiles > grid%max_tiles ) THEN
       IF ( ASSOCIATED(grid%i_start) ) THEN ; DEALLOCATE( grid%i_start ) ; NULLIFY( grid%i_start ) ; ENDIF
       IF ( ASSOCIATED(grid%i_end) )   THEN ; DEALLOCATE( grid%i_end   ) ; NULLIFY( grid%i_end   ) ; ENDIF
       IF ( ASSOCIATED(grid%j_start) ) THEN ; DEALLOCATE( grid%j_start ) ; NULLIFY( grid%j_start ) ; ENDIF
       IF ( ASSOCIATED(grid%j_end) )   THEN ; DEALLOCATE( grid%j_end   ) ; NULLIFY( grid%j_end   ) ; ENDIF
       ALLOCATE(grid%i_start(num_tiles))
       ALLOCATE(grid%i_end(num_tiles))
       ALLOCATE(grid%j_start(num_tiles))
       ALLOCATE(grid%j_end(num_tiles))
       grid%max_tiles = num_tiles
     ENDIF

! XS boundary
     IF      ( ids .ge. spx .and. ids .le. epx ) THEN
        grid%i_start(1) = ids
        grid%i_end(1)   = min( ids+bdyw-1 , epx )
        grid%j_start(1) = max( spy , jds )
        grid%j_end(1)   = min( epy , jde )
     ELSEIF  ( (ids+bdyw-1) .ge. spx .and. (ids+bdyw-1) .le. epx ) THEN
        grid%i_start(1) = max( ids , spx )
        grid%i_end(1)   = ids+bdyw-1
        grid%j_start(1) = max( spy , jds )
        grid%j_end(1)   = min( epy , jde )
     ELSE
        grid%i_start(1) = 1
        grid%i_end(1)   = -1
        grid%j_start(1) = 1
        grid%j_end(1)   = -1
     ENDIF

! XE boundary
     IF      ( ide .ge. spx .and. ide .le. epx ) THEN
        grid%i_start(2) = max( ide-bdyw+1 , spx )
        grid%i_end(2)   = ide
        grid%j_start(2) = max( spy , jds )
        grid%j_end(2)   = min( epy , jde )
     ELSEIF  ( (ide-bdyw+1) .ge. spx .and. (ide-bdyw+1) .le. epx ) THEN
        grid%i_start(2) = ide-bdyw+1
        grid%i_end(2)   = min( ide , epx )
        grid%j_start(2) = max( spy , jds )
        grid%j_end(2)   = min( epy , jde )
     ELSE
        grid%i_start(2) = 1
        grid%i_end(2)   = -1
        grid%j_start(2) = 1
        grid%j_end(2)   = -1
     ENDIF

! YS boundary (note that the corners may already be done by XS and XE)
     IF      ( jds .ge. spy .and. jds .le. epy ) THEN
        grid%j_start(3) = jds
        grid%j_end(3)   = min( jds+bdyw-1 , epy )
        grid%i_start(3) = max( spx , ids+bdyw )
        grid%i_end(3)   = min( epx , ide-bdyw )
     ELSEIF  ( (jds+bdyw-1) .ge. spy .and. (jds+bdyw-1) .le. epy ) THEN
        grid%j_start(3) = max( jds , spy )
        grid%j_end(3)   = jds+bdyw-1
        grid%i_start(3) = max( spx , ids+bdyw )
        grid%i_end(3)   = min( epx , ide-bdyw )
     ELSE
        grid%j_start(3) = 1
        grid%j_end(3)   = -1
        grid%i_start(3) = 1
        grid%i_end(3)   = -1
     ENDIF

! YE boundary (note that the corners may already be done by XS and XE)
     IF      ( jde .ge. spy .and. jde .le. epy ) THEN
        grid%j_start(4) = max( jde-bdyw+1 , spy )
        grid%j_end(4)   = jde
        grid%i_start(4) = max( spx , ids+bdyw )
        grid%i_end(4)   = min( epx , ide-bdyw )
     ELSEIF  ( (jde-bdyw+1) .ge. spy .and. (jde-bdyw+1) .le. epy ) THEN
        grid%j_start(4) = jde-bdyw+1
        grid%j_end(4)   = min( jde , epy )
        grid%i_start(4) = max( spx , ids+bdyw )
        grid%i_end(4)   = min( epx , ide-bdyw )
     ELSE
        grid%j_start(4) = 1
        grid%j_end(4)   = -1
        grid%i_start(4) = 1
        grid%i_end(4)   = -1
     ENDIF

     grid%num_tiles = num_tiles

     RETURN
  END SUBROUTINE set_tiles1

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! this version is used to limit the domain or compute onto halos
  SUBROUTINE set_tiles2 ( grid , ids , ide , jds , jde , ips , ipe , jps , jpe )
     USE module_domain
     USE module_driver_constants
     USE module_machine
     USE module_wrf_error

     IMPLICIT NONE
  
     !  Input data.
  
     TYPE(domain)                   , INTENT(INOUT)  :: grid
     INTEGER                        , INTENT(IN)     :: ids , ide , jds , jde
     INTEGER                        , INTENT(IN)     :: ips , ipe , jps , jpe

     !  Output data.

     !  Local data.
  
     INTEGER                                :: num_tiles_x, num_tiles_y, num_tiles
     INTEGER                                :: tile_sz_x, tile_sz_y
     INTEGER                                :: spx, epx, spy, epy, t, tt, ts, te
     INTEGER                                :: smx, emx, smy, emy
     INTEGER                                :: ntiles
     INTEGER                                :: one
#ifdef _OPENMP
     INTEGER , EXTERNAL        :: omp_get_max_threads
#endif
     CHARACTER*80              :: mess

     data_ordering : SELECT CASE ( model_data_order )
       CASE  ( DATA_ORDER_XYZ )
         spx = grid%sp31 ; epx = grid%ep31 ; spy = grid%sp32 ; epy = grid%ep32
         smx = grid%sm31 ; emx = grid%em31 ; smy = grid%sm32 ; emy = grid%em32
       CASE  ( DATA_ORDER_YXZ )
         spx = grid%sp32 ; epx = grid%ep32 ; spy = grid%sp31 ; epy = grid%ep31
         smx = grid%sm32 ; emx = grid%em32 ; smy = grid%sm31 ; emy = grid%em31
       CASE  ( DATA_ORDER_ZXY )
         spx = grid%sp32 ; epx = grid%ep32 ; spy = grid%sp33 ; epy = grid%ep33
         smx = grid%sm32 ; emx = grid%em32 ; smy = grid%sm33 ; emy = grid%em33
       CASE  ( DATA_ORDER_ZYX )
         spx = grid%sp33 ; epx = grid%ep33 ; spy = grid%sp32 ; epy = grid%ep32
         smx = grid%sm33 ; emx = grid%em33 ; smy = grid%sm32 ; emy = grid%em32
       CASE  ( DATA_ORDER_XZY )
         spx = grid%sp31 ; epx = grid%ep31 ; spy = grid%sp33 ; epy = grid%ep33
         smx = grid%sm31 ; emx = grid%em31 ; smy = grid%sm33 ; emy = grid%em33
       CASE  ( DATA_ORDER_YZX )
         spx = grid%sp33 ; epx = grid%ep33 ; spy = grid%sp31 ; epy = grid%ep31
         smx = grid%sm33 ; emx = grid%em33 ; smy = grid%sm31 ; emy = grid%em31
     END SELECT data_ordering

     ERROR_TEST(ips,<,smx)
     ERROR_TEST(ipe,>,emx)
     ERROR_TEST(jps,<,smy)
     ERROR_TEST(jpe,>,emy)

     ! Here's how the number of tiles is arrived at:
     !
     !          if tile sizes are specified use those otherwise
     !          if num_tiles is specified use that otherwise
     !          if omp provides a value use that otherwise
     !          use 1.
     !

     IF ( grid%num_tiles_spec .EQ. 0 ) THEN
       CALL nl_get_numtiles( 1, num_tiles )
       IF ( num_tiles .EQ. 1 ) THEN
#ifdef _OPENMP
         num_tiles = omp_get_max_threads()
         WRITE(mess,'("WRF NUMBER OF TILES FROM OMP_GET_MAX_THREADS = ",I3)')num_tiles
         CALL WRF_MESSAGE ( mess )
#else
         num_tiles = 1
#endif
       ENDIF
! override num_tiles setting (however gotten) if tile sizes are specified
       CALL nl_get_tile_sz_x( 1, tile_sz_x )
       CALL nl_get_tile_sz_y( 1, tile_sz_y )
       IF ( tile_sz_x >= 1 .and. tile_sz_y >= 1 ) THEN
        ! figure number of whole tiles and add 1 for any partials in each dim
          num_tiles_x = (epx-spx+1) / tile_sz_x
          if ( tile_sz_x*num_tiles_x < epx-spx+1 ) num_tiles_x = num_tiles_x + 1
          num_tiles_y = (epy-spy+1) / tile_sz_y
          if ( tile_sz_y*num_tiles_y < epy-spy+1 ) num_tiles_y = num_tiles_y + 1
          num_tiles = num_tiles_x * num_tiles_y
       ELSE
         IF      ( machine_info%tile_strategy == TILE_X ) THEN
           num_tiles_x = num_tiles
           num_tiles_y = 1
         ELSE IF ( machine_info%tile_strategy == TILE_Y ) THEN
           num_tiles_x = 1
           num_tiles_y = num_tiles
         ELSE ! Default ( machine_info%tile_strategy == TILE_XY ) THEN
           one = 1
           call least_aspect( num_tiles, one, one, num_tiles_y, num_tiles_x )
         ENDIF
       ENDIF
       grid%num_tiles_spec = num_tiles
       grid%num_tiles_x = num_tiles_x
       grid%num_tiles_y = num_tiles_y
       WRITE(mess,'("WRF NUMBER OF TILES = ",I3)')num_tiles
       CALL WRF_MESSAGE ( mess )
     ENDIF

     num_tiles   = grid%num_tiles_spec
     num_tiles_x = grid%num_tiles_x
     num_tiles_y = grid%num_tiles_y

     IF ( num_tiles > grid%max_tiles ) THEN
       IF ( ASSOCIATED(grid%i_start) ) THEN ; DEALLOCATE( grid%i_start ) ; NULLIFY( grid%i_start ) ; ENDIF
       IF ( ASSOCIATED(grid%i_end) )   THEN ; DEALLOCATE( grid%i_end   ) ; NULLIFY( grid%i_end   ) ; ENDIF
       IF ( ASSOCIATED(grid%j_start) ) THEN ; DEALLOCATE( grid%j_start ) ; NULLIFY( grid%j_start ) ; ENDIF
       IF ( ASSOCIATED(grid%j_end) )   THEN ; DEALLOCATE( grid%j_end   ) ; NULLIFY( grid%j_end   ) ; ENDIF
       ALLOCATE(grid%i_start(num_tiles))
       ALLOCATE(grid%i_end(num_tiles))
       ALLOCATE(grid%j_start(num_tiles))
       ALLOCATE(grid%j_end(num_tiles))
       grid%max_tiles = num_tiles
     ENDIF

     DO t = 0, num_tiles-1
        ntiles = mod(t,num_tiles_x)
        CALL region_bounds( spx, epx,                                  &
                            num_tiles_x, ntiles,                       &
                            ts, te )
!!!
! This bit allows the user to specify execution out onto the halo region
! in the call to set_tiles. If the low patch boundary specified by the arguments
! is less than what the model already knows to be the patch boundary and if
! the user hasn't erred by specifying something that would fall off memory
! (safety tests are higher up in this routine, outside the IF) then adjust
! the tile boundary of the low edge tiles accordingly. Likewise for high edges.
        IF ( ips .lt. spx .and. ts .eq. spx ) ts = ips ;
        IF ( ipe .gt. epx .and. te .eq. epx ) te = ipe ;
!!!
        grid%i_start(t+1) = max ( ts , ids )
        grid%i_end(t+1)   = min ( te , ide )
        ntiles = t / num_tiles_x
        CALL region_bounds( spy, epy,                                  &
                            num_tiles_y, ntiles,                       &
                            ts, te )
!
        IF ( jps .lt. spy .and. ts .eq. spy ) ts = jps ;
        IF ( jpe .gt. epy .and. te .eq. epy ) te = jpe ;
!
        grid%j_start(t+1) = max ( ts , jds )
        grid%j_end(t+1)   = min ( te , jde )
     END DO
     grid%num_tiles = num_tiles

     RETURN
  END SUBROUTINE set_tiles2
  

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! this version sets the tiles based on a passed in integer mask
! the assumption here is that the mask is relatively straigthforward
! and coverable with 2 or three rectangles. No weird stuff...

  SUBROUTINE set_tiles3 ( grid , imask, ims, ime, jms, jme, ips, ipe, jps, jpe )
     USE module_domain
     USE module_driver_constants
     USE module_machine
     USE module_wrf_error

     IMPLICIT NONE
  
     !  Input data.
  
     TYPE(domain)                   , INTENT(INOUT)  :: grid
     INTEGER                        , INTENT(IN)     :: ims , ime , jms , jme
     INTEGER                        , INTENT(IN)     :: ips , ipe , jps , jpe
     INTEGER, DIMENSION(ims:ime,jms:jme), INTENT(IN) :: imask
     INTEGER                :: num_tiles
     INTEGER, DIMENSION(50) :: i_start, i_end, j_start, j_end

     !  Output data.

     !  Local data.
  
     CHARACTER*80              :: mess

     CALL set_tiles_masked ( imask, ims, ime, jms, jme, ips, ipe, jps, jpe, &
                             num_tiles, i_start, i_end, j_start, j_end )

     IF ( num_tiles > grid%max_tiles ) THEN
       IF ( ASSOCIATED(grid%i_start) ) THEN ; DEALLOCATE( grid%i_start ) ; NULLIFY( grid%i_start ) ; ENDIF
       IF ( ASSOCIATED(grid%i_end) )   THEN ; DEALLOCATE( grid%i_end   ) ; NULLIFY( grid%i_end   ) ; ENDIF
       IF ( ASSOCIATED(grid%j_start) ) THEN ; DEALLOCATE( grid%j_start ) ; NULLIFY( grid%j_start ) ; ENDIF
       IF ( ASSOCIATED(grid%j_end) )   THEN ; DEALLOCATE( grid%j_end   ) ; NULLIFY( grid%j_end   ) ; ENDIF
       ALLOCATE(grid%i_start(num_tiles))
       ALLOCATE(grid%i_end(num_tiles))
       ALLOCATE(grid%j_start(num_tiles))
       ALLOCATE(grid%j_end(num_tiles))
       grid%max_tiles = num_tiles
     ENDIF
     grid%num_tiles = num_tiles
     grid%i_start(1:num_tiles) = i_start(1:num_tiles)
     grid%i_end(1:num_tiles)   = i_end(1:num_tiles)
     grid%j_start(1:num_tiles) = j_start(1:num_tiles)
     grid%j_end(1:num_tiles)   = j_end(1:num_tiles)

     RETURN
  END SUBROUTINE set_tiles3

  SUBROUTINE set_tiles_masked ( imask, ims, ime, jms, jme, ips, ipe, jps, jpe, &
                                num_tiles, istarts, iends, jstarts, jends )

      IMPLICIT NONE

      !  Arguments

      INTEGER                        , INTENT(IN)     :: ims , ime , jms , jme
      INTEGER, DIMENSION(ims:ime,jms:jme), INTENT(IN) :: imask
      INTEGER                        , INTENT(IN)     :: ips , ipe , jps , jpe
      INTEGER                        , INTENT(OUT)    :: num_tiles
      INTEGER, DIMENSION(*)          , INTENT(OUT)    :: istarts, iends
      INTEGER, DIMENSION(*)          , INTENT(OUT)    :: jstarts, jends

      !  Output data.

      !  Local data.
      CHARACTER*80              :: mess
      INTEGER :: i, j, ir, jr
      INTEGER :: imaskcopy(ips:ipe,jps:jpe)    ! copy of imask to write on

      imaskcopy = imask(ips:ipe,jps:jpe)
      num_tiles = 0
      ! simple multi-pass scheme, optimize later...
      DO WHILE (ANY(imaskcopy == 1))
        DO j = jps,jpe
          DO i = ips,ipe
            ! find first "1" and build a rectangle from it
            IF ( imaskcopy(i,j) == 1 ) THEN
              num_tiles = num_tiles + 1
              istarts(num_tiles) = i
              iends(num_tiles)   = i
              jstarts(num_tiles) = j
              jends(num_tiles)   = j
              ! don't check this point again
              imaskcopy(i,j) = 0
              ! find length of first row
              DO ir = istarts(num_tiles)+1,ipe
                IF ( imaskcopy(ir,j) == 1 ) THEN
                  iends(num_tiles) = ir
                  ! don't check this point again
                  imaskcopy(ir,j) = 0
                ELSE
                  EXIT
                ENDIF
              ENDDO
              ! find number of rows
              DO jr = jstarts(num_tiles)+1,jpe
                IF (ALL(imaskcopy(istarts(num_tiles):iends(num_tiles),jr) == 1)) THEN
                  jends(num_tiles) = jr
                  ! don't check these points again
                  imaskcopy(istarts(num_tiles):iends(num_tiles),jr) = 0
                ELSE
                  EXIT
                ENDIF
              ENDDO
            ENDIF   ! if ( imaskcopy(i,j) == 1 )
          ENDDO
        ENDDO
      ENDDO
      RETURN
  END SUBROUTINE set_tiles_masked

  
  SUBROUTINE init_module_tiles
  END SUBROUTINE init_module_tiles

END MODULE module_tiles

