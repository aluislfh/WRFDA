subroutine setupps(lunin,mype,bwork,awork,nele,nobs,conv_diagsave)
!$$$  subprogram documentation block
!                .      .    .                                       .
! subprogram:    setupps     compute rhs of oi for surface pressure
!   prgmmr: parrish          org: np22                date: 1990-10-06
!
! abstract: For surface pressure observations, this routine
!              a) reads obs assigned to given mpi task (geographic region),
!              b) simulates obs from guess,
!              c) apply some quality control to obs,
!              d) load weight and innovation arrays used in minimization
!              e) collects statistics for runtime diagnostic output
!              f) writes additional diagnostic information to output file
!
! program history log:
!   1990-10-06  parrish
!   1998-04-10  weiyu yang
!   1999-03-01  wu - ozone processing moved into setuprhs from setupoz
!   1999-08-24  derber, j., treadon, r., yang, w., first frozen mpp version
!   2004-06-17  treadon - update documentation
!   2004-08-02  treadon - add only to module use, add intent in/out
!   2004-10-06  parrish - increase size of pwork array for nonlinear qc
!   2004-11-22  derber - remove weight, add logical for boundary point
!   2004-12-22  treadon - move logical conv_diagsave from obsmod to argument list
!   2005-03-02  dee - remove garbage from diagnostic file
!   2005-03-09  parrish - nonlinear qc change to account for inflated obs error
!   2005-07-27  derber  - add print of monitoring and reject data
!   2005-09-12  derber  - rewrite and incorporate prep routine   
!   2005-09-28  derber  - combine with prep,spr,remove tran and clean up
!   2005-10-14  derber  - input grid location and fix regional lat/lon
!   2005-10-21  su   - modified variational quality control and diagnose output
!   2005-11-03  treadon - correct error in ilone,ilate data array indices
!   2005-11-22  wu      - add option to perturb conventional obs
!   2005-11-29  derber - remove psfcg and use ges_lnps instead
!   2006-01-31  todling - storing wgt/wgtlim in diag file instead of wgt only
!   2006-02-02  treadon - rename lnprsl as ges_lnprsl
!   2006-02-24  derber  - modify to take advantage of convinfo module
!   2006-03-21  treadon - modify optional perturbation to observation
!   2006-05-30  su,derber,treadon - modify diagnostic output
!   2006-06-06  su - move to wgtlim to constants module
!   2006-07-28  derber  - modify to use new inner loop obs data structure
!                       - modify handling of multiple data at same location
!   2006-07-31  kleist - change analysis variable to ps (cb) instead of lnps
!   2006-08-28      su - fix a bug in variational qc
!   2007-03-09      su - modify obs perturbation 
!
!   input argument list:
!     lunin    - unit from which to read observations
!     mype     - mpi task id
!     nele     - number of data elements per observation
!     nobs     - number of observations
!
!   output argument list:
!     bwork    - array containing information about obs-ges statistics
!     awork    - array containing information for data counts and gross checks
!
! attributes:
!   language: f90
!   machine:  ibm RS/6000 SP
!
!$$$
  use kinds, only: r_kind,r_single,r_double,i_kind
  use obsmod, only: rmiss_single,pstail,pshead,perturb_obs,perturb_fact,ran01dom
  use oneobmod, only: magoberr,maginnov,oneobtest
  use gridmod, only: nsig,get_ij
  use constants, only: rad2deg,zero,one_tenth,one,half,pi,g_over_rd, &
             huge_r_kind,tiny_r_kind,three,two,cg_term,huge_single, &
             r1000,wgtlim,izero,huge_r_kind,r3600
  use jfunc, only: jiter,first,last,jiterstart,l_foto
  use qcmod, only: dfact,dfact1,npres_print
  use guess_grids, only: hrdifsig,ges_lnprsl,ges_tv,ges_ps,nfldsig,ges_z,ntguessig
  use convinfo, only: nconvtype,cermin,cermax,cgross,cvar_b,cvar_pg,ictype,icsubtype

  implicit none

! Declare local parameters
  real(r_kind),parameter:: r0_001=0.001_r_kind

! Declare passed variables
  real(r_kind),intent(inout),dimension(100+7*nsig):: awork
  real(r_kind),intent(inout),dimension(npres_print,nconvtype,5,3):: bwork
  integer(i_kind),intent(in):: lunin,mype,nele,nobs
  logical,intent(in):: conv_diagsave

! Declare local variables
  real(r_double) rstation_id
  real(r_kind) pges_orig,tges,tges2,drbx,pob,pges,psges,psges2,dlat,dlon,dtime
  real(r_kind) rdelz,rdp,halfpi,obserror,obserrlm,drdp,residual,ratio,perturbb
  real(r_kind) errinv_input,errinv_adjst,errinv_final
  real(r_kind) err_input,err_adjst,err_final,tfact
  real(r_kind) zsges,pgesorig,rwgt,rseed
  real(r_kind) r10,r0_005,r0_2,r2_5,tmin,tmax,half_tlapse
  real(r_kind) ratio_errors,error,dhgt,ddiff,dtemp
  real(r_kind) dx,dx1,dy1,dy,val2,ress,ressw2,val,valqc
  real(r_kind) cg_ps,wgross,wnotgross,wgt,arg,exp_arg,term,rat_err2
  real(r_kind),dimension(nobs):: dup
  real(r_kind),dimension(nsig):: prsltmp
  real(r_kind),dimension(nele,nobs):: data
  real(r_single),allocatable,dimension(:,:)::rdiagbuf

  integer(i_kind) ier,ilon,ilat,ipres,ihgt,itemp,id,itime,ikx,iqc
  integer(i_kind) ier2,iuse,ilate,ilone,krsize,istnelv
  integer(i_kind) jlat,jlon,ikxx,nn,istat
  integer(i_kind) i,nchar,nreal,ii,j,k,l,mm1

  logical,dimension(nobs):: luse,muse
 
  character(8) station_id
  character(8),allocatable,dimension(:):: cdiagbuf

  equivalence(rstation_id,station_id)
  

!*******************************************************************************
! Read observations in work arrays.

  read(lunin)data,luse

!        index information for data array (see reading routine)
  ier=1       ! index of obs error 
  ilon=2      ! index of grid relative obs location (x)
  ilat=3      ! index of grid relative obs location (y)
  ipres=4     ! index of pressure
  ihgt=5      ! index of surface height
  itemp=6     ! index of surface temperature observation
  id=7        ! index of station id
  itime=8     ! index of observation time in data array
  ikxx=9      ! index of ob type
  iqc=10      ! index of quality mark
  ier2=11     ! index of original-original obs error ratio
  iuse=12     ! index of use parameter
  ilone=13    ! index of longitude (degrees)
  ilate=14    ! index of latitude (degrees)
  istnelv=15  ! index of station elevation (m)

! Declare local constants
  halfpi = half*pi
  r10=10.0_r_kind
  r0_005 = 0.005_r_kind
  r0_2=0.2_r_kind
  r2_5=2.5_r_kind
  tmin=150.0_r_kind
  tmax=350.0_r_kind
  half_tlapse=0.00325_r_kind  ! half of 6.5K/1km
  mm1=mype+1

!  Check to see if observation should be used or monitored
!  muse = true  then used

  do i=1,nobs
    muse(i)=nint(data(iuse,i)) <= jiter
  end do

!  Check for duplicate observations at same location

  dup=one
  do k=1,nobs
    do l=k+1,nobs
      if(data(ilat,k) == data(ilat,l) .and. &
         data(ilon,k) == data(ilon,l) .and. &
         data(ier,k) < r1000 .and. data(ier,l) < r1000 .and. &
         muse(k) .and. muse(l))then
        tfact=min(one,abs(data(itime,k)-data(itime,l))/dfact1)
        dup(k)=dup(k)+one-tfact*tfact*(one-dfact)
        dup(l)=dup(l)+one-tfact*tfact*(one-dfact)
      end if
    end do
  end do


! If requested, save select data for output to diagnostic file

  if(conv_diagsave)then
     nchar=1
     nreal=19
     allocate(cdiagbuf(nobs),rdiagbuf(nreal,nobs))
     ii=0
  end if

  do i = 1,nobs

    error=data(ier2,i)
    dlon=data(ilon,i)
    dlat=data(ilat,i)
    pob=data(ipres,i)
    dtime=data(itime,i)
    dhgt=data(ihgt,i)
    dtemp=data(itemp,i)
    ikx  = nint(data(ikxx,i))

!   Load obs error into local variable
    obserror = max(cermin(ikx)*one_tenth,&
         min(cermax(ikx)*one_tenth,data(ier,i)))

! Get guess sfc hght at obs location

    call intrp2a(ges_z(1,1,ntguessig),zsges,dlat,dlon,1,1,mype)

! Interpolate to get log(ps) and log(pres) at mid-layers
! at obs location/time

    call tintrp2a(ges_ps,psges,dlat,dlon,dtime,hrdifsig,&
       1,1,mype,nfldsig)
    call tintrp2a(ges_lnprsl,prsltmp,dlat,dlon,dtime,hrdifsig,&
       1,nsig,mype,nfldsig)

! Convert pressure to grid coordinates

    pgesorig = psges

! Take log for vertical interpolation
    psges = log(psges)
    call grdcrd(psges,1,prsltmp,nsig,-1)

! Get guess temperature at observation location and surface

    call tintrp3(ges_tv,tges,dlat,dlon,psges,dtime, &
         hrdifsig,1,mype,nfldsig)

! Adjust observation error and obs value due to differences in surface height

    rdelz=dhgt-zsges
    if(dtemp > tmin .and. dtemp < tmax) then

!  Case of observed surface temperature

      drbx = half*abs(tges-dtemp)+r0_2+r0_005*abs(rdelz)
      tges = half*(tges+dtemp)
    else

!  No observed temperature 
      psges2=data(ipres,i)
      call grdcrd(psges2,1,prsltmp,nsig,-1)
      call tintrp3(ges_tv,tges2,dlat,dlon,psges2,dtime, &
           hrdifsig,1,mype,nfldsig)

      drbx = half*abs(tges-tges2)+r2_5+r0_005*abs(rdelz)
      tges = half*(tges+tges2)

! Extrapolate surface temperature below ground at 6.5 k/km
! note only extrapolating .5dz, if no surface temp available.

      if(rdelz < zero)then
        tges=tges-half_tlapse*rdelz
        drbx=drbx-half_tlapse*rdelz
      end if

    end if

! Adjust guess hydrostatically 

    rdp = g_over_rd*rdelz/tges

! Subtract off dlnp correction, then convert to pressure (cb)
    pges = exp(log(pgesorig) - rdp)


! observational error adjustment 

    drdp = pges*(g_over_rd*abs(rdelz)*drbx/(tges**2))

!  find adjustment to observational error (in terms of ratio)
    ratio_errors=error/((data(ier,i)+drdp)*sqrt(dup(i)))
    error=one/error

! Compute innovations
    ddiff=pob-pges  ! in cb

!   Gross check using innovation normalized by error

    obserror = min(r10/max(ratio_errors*error,tiny_r_kind),huge_r_kind)
    obserrlm = max(cermin(ikx),min(cermax(ikx),obserror))
    residual = abs(r10*ddiff)
    ratio    = residual/obserrlm
    if (ratio > cgross(ikx) .or. ratio_errors < tiny_r_kind) then
       if (luse(i)) awork(6) = awork(6)+one
       error = zero
       ratio_errors = zero

!      Modify for the obs perturbation to adjust the obs err
       if( perturb_obs .and. jiter == jiterstart ) then
          data(ier2,i)= huge_r_kind     ! Do not use this data next outerloop 
       endif

    end if

    if (ratio_errors*error <= tiny_r_kind) muse(i)=.false.

!   Modify for the obs perturbation to adjust the obs err
    if( muse(i) .and. perturb_obs) then
       if(error >1.0e-2) then
         perturbb=ran01dom()*perturb_fact/error
       else
         perturbb=zero
       endif
       if( jiter /= jiterstart ) then
          ddiff=ddiff+perturbb
       endif
    endif


! If requested, setup for single obs test.

     if (oneobtest) then
        maginnov=one_tenth*maginnov
        magoberr=one_tenth*magoberr
        ddiff=maginnov
        error=one/magoberr
        ratio_errors=one
        muse(i) = .true.
     endif

! Compute penalty terms, and accumulate statistics.


     val      = error*ddiff
     if(luse(i))then

!    Compute penalty terms (linear & nonlinear qc).
       val2     = val*val
       exp_arg  = -half*val2
       rat_err2 = ratio_errors**2
       if (cvar_pg(ikx) > tiny_r_kind .and. error >tiny_r_kind) then
          arg  = exp(exp_arg)
          wnotgross= one-cvar_pg(ikx)
          cg_ps=cvar_b(ikx)
          wgross = cg_term*cvar_pg(ikx)/(cg_ps*wnotgross)
          term =log((arg+wgross)/(one+wgross))
          wgt  = one-wgross/(arg+wgross)
          rwgt = wgt/wgtlim
       else
          term = exp_arg
          wgt  = wgtlim
          rwgt = wgt/wgtlim
       endif
       valqc = -two*rat_err2*term


       if (muse(i)) then
!       Accumulate statistics for obs used belonging to this task        
          if(rwgt < one) awork(21) = awork(21)+one
          awork(4)=awork(4)+val2*rat_err2
          awork(5)=awork(5)+one
          awork(22)=awork(22)+valqc
          nn=1
       else
       
!       rejected obs 
          nn=2
!       monitored obs 
          if(ratio_errors*error >=tiny_r_kind)nn=3
       end if

!     Accumulate statistics for each ob type

       ress   = ddiff*r10
       ressw2 = ress*ress
       bwork(1,ikx,1,nn)  = bwork(1,ikx,1,nn)+one              ! count
       bwork(1,ikx,2,nn)  = bwork(1,ikx,2,nn)+ress             ! (o-g)
       bwork(1,ikx,3,nn)  = bwork(1,ikx,3,nn)+ressw2           ! (o-g)**2
       bwork(1,ikx,4,nn)  = bwork(1,ikx,4,nn)+val2*rat_err2    ! penalty
       bwork(1,ikx,5,nn)  = bwork(1,ikx,5,nn)+valqc            ! nonlin qc penalty

     end if


     if (.not. last .and. muse(i)) then
!    If obs is "acceptable", load array with obs info for use
!    in inner loop minimization (int* and stp* routines)
!    if no minimization (inner loop), do not load arrays


        if(.not. associated(pshead))then
            allocate(pshead,stat=istat)
            if(istat /= 0)write(6,*)' failure to write pshead '
            pstail => pshead
        else
            allocate(pstail%llpoint,stat=istat)
            pstail => pstail%llpoint
            if(istat /= 0)write(6,*)' failure to write pstail%llpoint '
        end if


!       Set (i,j) indices of guess gridpoint that bound obs location
        call get_ij(mm1,dlat,dlon,pstail%ij(1),pstail%wij(1))

        pstail%res      = ddiff
        pstail%err2     = error**2
        pstail%raterr2  = ratio_errors**2     
        if(l_foto)then
          pstail%time   = dtime*r3600
        else
          pstail%time   = zero
        end if
        pstail%b        = cvar_b(ikx)
        pstail%pg       = cvar_pg(ikx)
        pstail%luse     = luse(i)
        if(perturb_obs) then
           pstail%pk1   = ictype(ikx)*100    ! the data type for adj obs err
           pstail%ppertb= perturbb           ! obs perturb for adj obs err
        else
           pstail%pk1   = izero
           pstail%ppertb= zero
        endif
     endif

! Save obs and simulated surface pressure data for diagnostic output

     if(conv_diagsave .and. luse(i))then
        ii=ii+1
        rstation_id     = data(id,i)
        cdiagbuf(ii)    = station_id         ! station id

        rdiagbuf(1,ii)  = ictype(ikx)        ! observation type
        rdiagbuf(2,ii)  = icsubtype(ikx)     ! observation subtype
        rdiagbuf(3,ii)  = data(ilate,i)      ! observation latitude (degrees)
        rdiagbuf(4,ii)  = data(ilone,i)      ! observation longitude (degrees)
        rdiagbuf(5,ii)  = data(istnelv,i)    ! station elevation (meters)
        rdiagbuf(6,ii)  = data(ipres,i)*r10  ! observation pressure (hPa)
        rdiagbuf(7,ii)  = dhgt               ! observation height (meters)
        rdiagbuf(8,ii)  = dtime              ! obs time (hours relative to analysis time)

        rdiagbuf(9,ii)  = data(iqc,i)        ! input prepbufr qc or event mark
        rdiagbuf(10,ii) = rmiss_single       ! setup qc or event mark
        rdiagbuf(11,ii) = data(iuse,i)       ! read_prepbufr data usage flag
        if(muse(i)) then
           rdiagbuf(12,ii) = one             ! analysis usage flag (1=use, -1=not used)
        else
           rdiagbuf(12,ii) = -one                    
        endif

        pob      = pob*r10
        pges     = pges*r10
        pgesorig = pgesorig*r10

        err_input = data(ier2,i)*r10   ! r10 converts cb to mb
        err_adjst = data(ier,i)*r10
        if (ratio_errors*error/r10>tiny_r_kind) then
           err_final = r10/(ratio_errors*error)
        else
           err_final = huge_single
        endif

        errinv_input = huge_single
        errinv_adjst = huge_single
        errinv_final = huge_single
        if (err_input>tiny_r_kind) errinv_input = one/err_input
        if (err_adjst>tiny_r_kind) errinv_adjst = one/err_adjst
        if (err_final>tiny_r_kind) errinv_final = one/err_final

        rdiagbuf(13,ii) = rwgt               ! nonlinear qc relative weight
        rdiagbuf(14,ii) = errinv_input       ! prepbufr inverse obs error (hPa**-1)
        rdiagbuf(15,ii) = errinv_adjst       ! read_prepbufr inverse obs error (hPa**-1)
        rdiagbuf(16,ii) = errinv_final       ! final inverse observation error (hPa**-1)

        rdiagbuf(17,ii) = pob                ! surface pressure observation (hPa)
        rdiagbuf(18,ii) = pob-pges           ! obs-ges used in analysis (coverted to hPa)
        rdiagbuf(19,ii) = pob-pgesorig       ! obs-ges w/o adjustment to guess surface pressure (hPa)

     end if

! End of loop over observations
  end do

! Write information to diagnostic file

  if(conv_diagsave)then
     write(7)' ps',nchar,nreal,ii,mype
     write(7)cdiagbuf(1:ii),rdiagbuf(:,1:ii)
     deallocate(cdiagbuf,rdiagbuf)
  end if
  

! End of routine
end subroutine setupps