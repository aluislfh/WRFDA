module intgpsmod

!$$$  subprogram documentation block
!                .      .    .                                       .
! subprogram:    intrefmod    module for intref and its tangent linear intref_tl
!
! abstract: module for intref and its tangent linear intref_tl
!
! program history log:
!   2005-05-13  Yanqiu zhu - wrap intref and its tangent linear intref_tl into one module
!   2005-11-16  Derber - remove interfaces
!

implicit none

PRIVATE
PUBLIC intgps

contains

subroutine intgps(rt,rq,rp,st,sq,sp,drt,drq,drp,dst,dsq,dsp)
!$$$  subprogram documentation block
!                .      .    .                                       .
! subprogram:    intref      apply nonlinqc obs operator refractivity
!   prgmmr: cucurull, l.     org: JCSDA/NCEP          date: 2004-04-29
!
! abstract: apply gps local refractivity operator and adjoint with
!           addition of nonlinear qc.
!
! program history log:
!   2004-04-29  cucurull- original code
!   2004-06-21  treadon - update documentation
!   2004-08-02  treadon - add only to module use, add intent in/out
!   2004-10-08  parrish - add nonlinear qc option
!   2004-11-19  cucurull- add increments for surface pressure and temperature at levels
!                          below observation. Install non-linear forward operator.
!   2005-01-26  cucurull- Implement local GPS RO operator
!   2005-03-01  parrish - nonlinear qc change as above; correct bug in zeroing of tl_AD
!   2005-03-23  cucurull- correct bounds for obs below the second level; place 
!                         bounds for k1 and k2
!   2005-04-11  treadon - merge intref and intref_qc into single routine
!   2005-08-02  derber  - modify for variational qc parameters for each ob
!   2005-09-28  derber  - consolidate location and weight arrays
!   2005-12-02  cucurull - fix bug for dimensions of sp and rp
!   2006-01-03  treadon - include r_kind type in w1,w2,...,w12 declaration
!   2006-07-28  derber  - modify to use new inner loop obs data structure
!                       - unify NL qc
!   2006-09-06  cucurull - generalize code to hybrid vertical coordinate and modify to use
!                          surface pressure
!   2007-01-13  derber - clean up code and use coding standards
!   2007-03-28  derber - turn intref into generalized intgps
!   2007-07-26  cucurull - in/out 3d pressure to update code to generalized vertical coordinate
!   
!   input argument list:
!     st       - input temperature correction field
!     sq       - input q correction field
!     sp       - input (3D) p correction field
!     dst      - input time derivative of temperature correction field
!     dsq      - input time derivative of q correction field
!     dsp      - input time derivative of (3D) p correction field
!
!   output argument list:
!     rt       - output t vector after inclusion of gps local refractivity
!     rq       - output q vector after inclusion of gps local refractivity
!     rp       - output p vector after inclusion of gps local refractivity
!     drt      - output time derivative of t vector 
!     drq      - output time derivative of q vector 
!     drp      - output time derivative of p vector 
!
! attributes:
!   language: f90
!   machine:  ibm RS/6000 SP
!
!$$$
  use kinds, only: r_kind,i_kind
  use obsmod, only: gpshead,gpsptr
  use qcmod, only: nlnqc_iter
  use gridmod, only: latlon1n,latlon11,nsig
  use constants, only: zero,one,two,n_a,n_b,half,tiny_r_kind,cg_term
  implicit none

! Declare local parameters
  real(r_kind),parameter:: ten = 10.0_r_kind

! Declare passed variables
  real(r_kind),dimension(latlon1n),intent(in):: st,sq,dst,dsq
  real(r_kind),dimension(latlon1n),intent(inout):: rt,rq,drt,drq
  real(r_kind),dimension(latlon1n+latlon11),intent(in):: sp,dsp
  real(r_kind),dimension(latlon1n+latlon11),intent(inout):: rp,drp

! Declare local variables
  integer(i_kind) i,j,k
  integer(i_kind),dimension(nsig):: i1,i2,i3,i4
  real(r_kind) :: w1,w2,w3,w4
  real(r_kind) :: p_TL,p_AD,t_TL,t_AD,q_TL,q_AD
  real(r_kind) :: val,time_gps
  real(r_kind) ::cg_gps,grad,p0,wnotgross,wgross



  gpsptr => gpshead
  do while (associated(gpsptr))

! Load location information into local variables
    do j=1,nsig
      i1(j)= gpsptr%ij(1,j)
      i2(j)= gpsptr%ij(2,j)
      i3(j)= gpsptr%ij(3,j)
      i4(j)= gpsptr%ij(4,j)
    enddo
    w1=gpsptr%wij(1)
    w2=gpsptr%wij(2)
    w3=gpsptr%wij(3)
    w4=gpsptr%wij(4)
 
    time_gps=gpsptr%time
    val=-gpsptr%res

!  local refractivity (linear operator)

    do j=1,nsig
      t_TL=w1* st(i1(j))+w2* st(i2(j))+w3* st(i3(j))+w4* st(i4(j))   &
         +(w1*dst(i1(j))+w2*dst(i2(j))+w3*dst(i3(j))+w4*dst(i4(j)))*time_gps
      q_TL=w1* sq(i1(j))+w2* sq(i2(j))+w3* sq(i3(j))+w4* sq(i4(j))   &
         +(w1*dsq(i1(j))+w2*dsq(i2(j))+w3*dsq(i3(j))+w4*dsq(i4(j)))*time_gps
      p_TL=w1* sp(i1(j))+w2* sp(i2(j))+w3* sp(i3(j))+w4* sp(i4(j))   &
         +(w1*dsp(i1(j))+w2*dsp(i2(j))+w3*dsp(i3(j))+w4*dsp(i4(j)))*time_gps
      val = val + p_TL*gpsptr%jac_p(j) + t_TL*gpsptr%jac_t(j)+q_TL*gpsptr%jac_q(j)
    end do

!   needed for gradient of nonlinear qc operator
    if (nlnqc_iter .and. gpsptr%pg > tiny_r_kind .and.  &
                         gpsptr%b  > tiny_r_kind) then
      cg_gps=cg_term/gpsptr%b
      wnotgross= one-gpsptr%pg
      wgross = gpsptr%pg*cg_gps/wnotgross
      p0   = wgross/(wgross+exp(-half*gpsptr%err2*val**2))
      val = val*(one-p0)
    endif

    grad     = val*gpsptr%raterr2*gpsptr%err2


!   adjoint 

    do j=1,nsig
      t_AD = grad*gpsptr%jac_t(j)
      rt(i1(j))=rt(i1(j))+w1*t_AD
      rt(i2(j))=rt(i2(j))+w2*t_AD
      rt(i3(j))=rt(i3(j))+w3*t_AD
      rt(i4(j))=rt(i4(j))+w4*t_AD
      q_AD = grad*gpsptr%jac_q(j)
      rq(i1(j))=rq(i1(j))+w1*q_AD
      rq(i2(j))=rq(i2(j))+w2*q_AD
      rq(i3(j))=rq(i3(j))+w3*q_AD
      rq(i4(j))=rq(i4(j))+w4*q_AD
      p_AD = grad*gpsptr%jac_p(j)
      rp(i1(j))=rp(i1(j))+w1*p_AD
      rp(i2(j))=rp(i2(j))+w2*p_AD
      rp(i3(j))=rp(i3(j))+w3*p_AD
      rp(i4(j))=rp(i4(j))+w4*p_AD
    enddo

    grad=grad*time_gps

    do j=1,nsig
      t_AD = grad*gpsptr%jac_t(j)
      drt(i1(j))=drt(i1(j))+w1*t_AD
      drt(i2(j))=drt(i2(j))+w2*t_AD
      drt(i3(j))=drt(i3(j))+w3*t_AD
      drt(i4(j))=drt(i4(j))+w4*t_AD
      q_AD = grad*gpsptr%jac_q(j)
      drq(i1(j))=drq(i1(j))+w1*q_AD
      drq(i2(j))=drq(i2(j))+w2*q_AD
      drq(i3(j))=drq(i3(j))+w3*q_AD
      drq(i4(j))=drq(i4(j))+w4*q_AD
      p_AD = grad*gpsptr%jac_p(j)
      drp(i1(j))=drp(i1(j))+w1*p_AD
      drp(i2(j))=drp(i2(j))+w2*p_AD
      drp(i3(j))=drp(i3(j))+w3*p_AD
      drp(i4(j))=drp(i4(j))+w4*p_AD
    enddo

    gpsptr => gpsptr%llpoint

  end do

  return
end subroutine intgps


end module intgpsmod