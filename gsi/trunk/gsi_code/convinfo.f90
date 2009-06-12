module convinfo
!                .      .    .                                       .
! module:    convinfo
!   prgmmr: derber          org: np2                date: 2005-02-08
!
! abstract:  This module contains variables and routines related
!            to the assimilation of conventional observations 
!
! program history log:
!   2005-02-08  derber  - original code - consolidated from read routines
!   2006-04-20  kistler  - extensions for thinning and bias corrections
!   2006-06-29  kistler  - ithin_conv,rmesh_conv moved added to convinfo file entry
!
! Subroutines Included:
!   sub init_convinfo    - initialize conventional obs related variables
!   sub convinfo_read    - allocate arrays for and read in conventional info and bias coefs
!   sub conv_bias_write  - write out conventional obs bias coefs
!   sub convinfo_destroy - destroy conventional info arrays and bias coef vectors
!
!
! Variable Definitions:
!   def nconvtype      - number of input conventional types
!   def nconvtype_ps   - number of input conventional type ps
!   def nconvtype_t    - number of input conventional type t
!   def nconvtype_spd  - number of input conventional type spd
!   def ictype         - observation type
!   def icsubtype      - observation subtype                           
!   def icuse          - use flag                                        
!   def ctwind         - time window (absolute value)            
!   def ncnumgrp       - cross validation parameter - number of groups
!   def ncgroup        - cross validation parameter - group to remove from data use
!   def ncmiter        - cross validation parameter - external iteration to introduce removed data
!   def cgross         - gross error parameter - gross error
!   def cermax         - gross error parameter - max error
!   def cermin         - gross error parameter - min error
!   def cvar_b         - variational quality control parameter -  b parameter
!   def cvar_pg        - variational quality control parameter -  pg parameter
!   def ithin_conv     - 0, no thinning, 1 - thinning
!   def rmesh_conv     - size of thinning mesh (km)
!
!
!   def predx_conv     - conv obs bias correction coefficients: t,uv,q,ps,spd,sst,pw
!                        count,max # of coefs
!   def npred_conv_max - maximum number of conv ob bias correction coefs 
!   def npred_conv     - conv ob bias coef count

! attributes:
!   language: f90
!   machine:  ibm RS/6000 SP
!
!$$$ enddocumentation block

  use kinds, only:r_kind,i_kind
  use constants, only:  one,one_tenth
  implicit none

  logical diag_conv
  integer(i_kind) nconvtype,mype_conv
  real(r_kind),allocatable,dimension(:)::ctwind,cgross,cermax,cermin,cvar_b,cvar_pg, &
										rmesh_conv,stndev_conv
  integer(i_kind),allocatable,dimension(:):: ncmiter,ncgroup,ncnumgrp,icuse,ictype,icsubtype,&
											 ithin_conv,npred_conv
											 
  character(len=16),allocatable,dimension(:)::ioctype

  real(r_kind),allocatable,dimension(:,:) :: predx_conv
  integer(i_kind)  npred_conv_max
  integer(i_kind)  nconvtype_ps,nconvtype_t,nconvtype_spd
  integer(i_kind)  id_bias_ps,id_bias_t,id_bias_spd
  real(r_kind)     conv_bias_ps,conv_bias_t,conv_bias_spd, &
			       stndev_conv_ps,stndev_conv_t,stndev_conv_spd


  real(r_kind),allocatable,dimension(:,:):: zbias     ! raob solar zenith angle dependent bias


contains

!
! !IROUTINE: init_convinfo --- Initialize parameters for conventional obs
!
! !INTERFACE:
!
  subroutine init_convinfo

! !USES:

! !DESCRIPTION:  This routine sets default values for conventional obs
!
! !REVISION HISTORY:
!
! !REMARKS:
!   language: f90
!   machine:  ibm rs/6000 sp; SGI Origin 2000; Compaq/HP
!
! !AUTHOR:    
!   kistler      org: np23                date: 2006-04-20
!
!EOP
!-------------------------------------------------------------------------
    implicit none

    diag_conv = .true.    ! .true.=generate conv obs diagnostic file
    mype_conv = 0         ! mpi task to collect and print conv obs use information 

	ithin_conv = 0             ! no thinning
	rmesh_conv = 99999.
	npred_conv_max=0          ! max of all conv bias predictors 
	npred_conv=0            ! number of bias predictors
	nconvtype_ps  =0
	nconvtype_t   =0
	nconvtype_spd =0
	stndev_conv =one
	stndev_conv_t =one
	stndev_conv_ps =one
	stndev_conv_spd =one

	id_bias_ps = 0       ! prepbufr id to have conv_bias added for testing 
	id_bias_t  = 0       ! prepbufr id to have conv_bias added for testing 
	id_bias_spd= 120       ! prepbufr id to have conv_bias added for testing 
	conv_bias_ps = 0.0       ! magnitude of ps bias(mb)
	conv_bias_t  = 0.0       ! magnitude of t  bias(deg K)
	conv_bias_spd= 0.0       ! magnitude of spd bias(m/sec)
						  
  end subroutine init_convinfo

  subroutine convinfo_read(mype)
!$$$  subprogram documentation block
!                .      .    .                                       .
! subprogram:    convinfo_read      read conventional information file
!     prgmmr:    derber    org: np2                date: 2006-02-08
!
! abstract:  This routine reads the conventional information file
!
! program history log:
!   2006-02-08  derber 
!   2006-04-20  kistler - extended to read conv biases
!
!   input argument list:
!     mype - mpi task id
!
!   output argument list:
!
! attributes:
!   language: f90
!   machine:  ibm rs/6000 sp
!
!$$$
    use kinds, only: r_kind,i_kind
    use constants, only: zero, izero, one
    implicit none
    
    integer(i_kind),intent(in) ::mype

    character(len=1)cflg
    character(len=16) cob
    character(len=11) bias_file_in/'convbias_in'/
    character(len=12) bias_file_out/'convbias_out'/
    character(len=7) iotype
    character(len=120) crecord
    integer(i_kind) lunin,i,n,nc,ier
    integer(i_kind) iunit,iob,isub,np

    lunin = 47
    open(lunin,file='convinfo',form='formatted')
    rewind(lunin)
    nconvtype=0

    do i=1,1010
        read(lunin,1030,end=130)cflg,iotype
1030    format(a1,a7,2x,a120)
        if(cflg == '!')cycle
        nconvtype=nconvtype+1
    enddo
 130 continue
    if(nconvtype == 0) then
       write(6,*) 'CONVINFO_READ: NO CONVENTIONAL DATA USED'
       return
    endif
  
	!print*,'nconvtype,npred_conv_max ',nconvtype,npred_conv_max

    allocate(ctwind(nconvtype),cgross(nconvtype),cermax(nconvtype),cermin(nconvtype), &
             cvar_b(nconvtype),cvar_pg(nconvtype),ncmiter(nconvtype),ncgroup(nconvtype), &
             ncnumgrp(nconvtype),icuse(nconvtype),ictype(nconvtype),icsubtype(nconvtype), &
             ioctype(nconvtype), & 
			 ithin_conv(nconvtype),rmesh_conv(nconvtype), &
	         npred_conv(nconvtype), &
			 stndev_conv(nconvtype), &
			 stat=ier )
	if ( ier /= 0 )  then
		write(6,*) 'CONVINFO_READ: allocate 1 failed' 
		call stop2(48)
	endif
    nc=zero

	if(nconvtype*npred_conv_max>0) then
		allocate(predx_conv (nconvtype,npred_conv_max))
		predx_conv=0.
	endif

    rewind(lunin)

	! open convbias.in file
	if (npred_conv_max > 0 ) then
		iunit=49
		open(iunit,file=bias_file_in,form='formatted',iostat=ier)
		if (ier /= 0) then  
			write(6,*) 'CONVINFO_READ: open error = ',ier,' for ',bias_file_in
			call stop2(48)
		endif
	endif

    do i=1,1010
       read(lunin,1030,end=131)cflg,iotype,crecord
	   !print*,cflg,iotype,crecord
       if(cflg == '!')cycle
       nc=nc+1
       ioctype(nc)=iotype
	   !otype   type isub iuse twindow numgrp ngroup nmiter gross ermax ermin var_b var_pg ithin rmesh npred
	   !ps       120    0    1     3.0      0      0      0   5.0   3.0   1.0  10.0  0.000 0 99999.    5
 !ioctype(nc),
	   !  ictype(nc),
	   !     icsubtype(nc),
	   !              icuse(nc),
	   !                     ctwind(nc),
	   !                         ncnumgrp(nc),

       read(crecord,*)ictype(nc),icsubtype(nc),icuse(nc),ctwind(nc),ncnumgrp(nc), &
            ncgroup(nc),ncmiter(nc),cgross(nc),cermax(nc),cermin(nc),cvar_b(nc),cvar_pg(nc) &
			,ithin_conv(nc),rmesh_conv(nc),npred_conv(nc)
       if(mype == izero)write(6,1031)ioctype(nc),ictype(nc),icsubtype(nc),icuse(nc),ctwind(nc),ncnumgrp(nc), &
            ncgroup(nc),ncmiter(nc),cgross(nc),cermax(nc),cermin(nc),cvar_b(nc),cvar_pg(nc) &
			,ithin_conv(nc),rmesh_conv(nc),npred_conv(nc)
1031   format('READ_CONVINFO: ',a7,1x,i3,1x,i4,1x,i2,1x,g12.6,1x,3(I3,1x),5g12.6,i5,g12.6,i5)
		if (npred_conv_max > 0 ) then
		   read(iunit,*,iostat=ier) cob,iob,isub,np,(predx_conv(nc,n),n=1,np)
		   if (ier /= 0 ) then
			  write(6,*) 'CONVINFO_READ:,i/o error ',iunit,' reading convinfo file',ier
			  call stop2(48)
		   endif
		   if ( trim(cob) /= trim(ioctype(nc)) .or. &
				iob /= ictype(nc) .or. &		
				isub /= icsubtype(nc) .or. &
				np /= npred_conv(nc)) then
			  write(6,*) 'CONVINFO_READ: convbias.in mismatch: ',nc,ioctype(nc),ictype(nc),icsubtype(nc),npred_conv(nc),cob,iob,isub,np
			  call stop2(48)
		   endif
		   stndev_conv(nc)=one
		   select case (cob) 
			   case('ps')
				  nconvtype_ps=nconvtype_ps+1
				  stndev_conv(nc)=stndev_conv_ps
				  !print*,'nc,stndev_conv_ps',nc,stndev_conv_ps
			   case('t')
				  nconvtype_t=nconvtype_t+1
				  stndev_conv(nc)=stndev_conv_t
				  !print*,'nc,stndev_conv_t',nc,stndev_conv_t
			   case('spd')
				  nconvtype_spd=nconvtype_spd+1
				  stndev_conv(nc)=stndev_conv_spd
				  !print*,'nc,stndev_conv_spd',nc,stndev_conv_spd
		   end select
	   endif
    enddo

131 continue
    
	if (npred_conv_max > 0) call conv_bias_print
	
    close(lunin)
    
    return
  end subroutine convinfo_read

  subroutine convinfo_write
	implicit none
    character(len=7) iotype
	integer(i_kind) np,n,nc,ier
	integer (i_kind) iunit
	iunit=53
	open(iunit,file='convbias_out',form='formatted')
	rewind iunit
	do nc=1,nconvtype
			np=npred_conv(nc)
			write(iunit,*,iostat=ier) ioctype(nc),ictype(nc),icsubtype(nc), np, (predx_conv(nc,n),n=1,np)
			if (ier /= 0) then
			  write(6,*) 'CONVINFO_WRITE:,i/o error ',iunit,' writing convbias_out file '
			  call stop2(48)
			endif
	enddo
	call conv_bias_print
    return

  end subroutine convinfo_write
  subroutine conv_bias_print
		integer (i_kind) n,nc,np
		do nc=1,nconvtype
			if (trim(ioctype(nc)) == 'ps') then
				np=npred_conv(nc)
				!print*,'nc,icsubtype(nc),npred_conv(nc),predx_conv(nc,1)', &
			    ! nc,ioctype(nc),ictype(nc),icsubtype(nc),np,(predx_conv(nc,n),n=1,np)
			endif
			if (trim(ioctype(nc)) == 't') then
				np=npred_conv(nc)
				!print*,'nc,icsubtype(nc),npred_conv(nc),predx_conv(nc,1)', &
			    ! nc,ioctype(nc),ictype(nc),icsubtype(nc),np,(predx_conv(nc,n),n=1,np)
			endif
		enddo
  end subroutine conv_bias_print

  subroutine convinfo_destroy
!$$$  subprogram documentation block
!                .      .    .                                       .
! subprogram:    convinfo_destroy      destroy conventional information file
!     prgmmr:    derber    org: np2                date: 2006-02-08
!
! abstract:  This routine destroys arrays from convinfo file
!
! program history log:
!   2006-02-08  derber 
!   2006-04-20  kistler - extended to read conv biases
!
!   input argument list:
!
!   output argument list:
!
! attributes:
!   language: f90
!   machine:  ibm rs/6000 sp
!
!$$$
    integer(i_kind) ier

    deallocate(ctwind,cgross,cermax,cermin, &
             cvar_b,cvar_pg,ncmiter,ncgroup, &
             ncnumgrp,icuse,ictype,icsubtype, &
             ioctype, & 
			 ithin_conv,rmesh_conv, &
	         npred_conv, &
			 stndev_conv, &
			 stat=ier )
	if ( ier /= 0 )  then
		write(6,*) 'CONVINFO_DESTROY: deallocate  failed' 
		call stop2(48)
	endif
	if(allocated(predx_conv)) then
		deallocate(predx_conv ,stat=ier)
		if ( ier /= 0 )  then
			write(6,*) 'CONVINFO_DESTROY: deallocate predx_conv  failed' 
			call stop2(48)
		endif
	endif
    !deallocate(ictype,icsubtype,icuse,ctwind,ncnumgrp,ncgroup,ncmiter,cgross,cermax, &
    !            cermin,cvar_b,cvar_pg,ithin_conv,rmesh_conv,predx_conv,npred_conv,&
	!		stndev_conv)

    return
  end subroutine convinfo_destroy
  
end module convinfo
