subroutine da_transfer_xatowrf(grid)

   !---------------------------------------------------------------------------
   !  Purpose: Convert analysis increments into WRF increments
   !
   !  The following WRF fields are modified:  
   !    grid%em_u_2
   !    grid%em_v_2
   !    grid%em_w_2
   !    grid%em_mu_2
   !    grid%em_mu0    (NOTE:  not clear that this is needed.)  
   !    grid%em_ph_2
   !    grid%em_t_2
   !    grid%moist
   !
   !---------------------------------------------------------------------------

   implicit none
   
   type(domain), intent(inout)        :: grid

   integer :: i, j, k

   real    :: sdmd, s1md

   ! arrays to hold wrf increments on the c-grid 

   real, dimension(ims:ime,jms:jme, &
      kms:kme) :: &
      u_cgrid, v_cgrid, q_cgrid, ph_cgrid

   real, dimension(ims:ime,jms:jme) :: mu_cgrid

   real    :: t_full  , p_full, rho_full, q_full, ph_full , ph_xb_hd, &
              qvf1, qvf2, qvf1_b, qvf2_b

   if (trace_use) call da_trace_entry("da_transfer_xatowrf")

   ! To kteep the background PH perturbation:

   do j=jts,jte
      do i=its,ite
         do k=kts, kte+1
            ph_cgrid(i,j,k) = grid%em_ph_2(i,j,k)
         end do
      end do
   end do

   !---------------------------------------------------------------------------
   ! [1.0] Get the mixing ratio of moisture first, as it its easy.
   !---------------------------------------------------------------------------

   do k=kts,kte
      do j=jts,jte
         do i=its,ite
            if ((grid%xb%q(i,j,k)+grid%xa%q(i,j,k)) < 0.0) then
               q_cgrid(i,j,k) =-grid%xb%q(i,j,k)/(1.0 - grid%xb%q(i,j,k))**2
            else
               q_cgrid(i,j,k) = grid%xa%q(i,j,k)/(1.0 - grid%xb%q(i,j,k))**2
            end if
         end do
      end do
   end do

   !---------------------------------------------------------------------------
   ! [2.0] compute increments of dry-column air mass per unit area
   !---------------------------------------------------------------------------

   do j=jts,jte
      do i=its,ite
         sdmd=0.0
         s1md=0.0
         do k=kts,kte
            sdmd=sdmd+q_cgrid(i,j,k)*grid%em_dnw(k)
            s1md=s1md+(1.0+grid%moist(i,j,k,P_QV))*grid%em_dnw(k)
         end do

         mu_cgrid(i,j)=-(grid%xa%psfc(i,j)+grid%xb%psac(i,j)*sdmd)/s1md
      end do
   end do

   !---------------------------------------------------------------------------
   ! [3.0] compute pressure increments 
   !---------------------------------------------------------------------------

   ! Tangent linear code for grid%xa%p (based on WRF "real.init.code") 
   ! developed by Y.-R. Guo 05/13/2004:

   do j=jts,jte
      do i=its,ite
         k = kte
         qvf1   = 0.5*(q_cgrid(i,j,k)+q_cgrid(i,j,k))
         qvf1_b = 0.5*(grid%moist(i,j,k,P_QV)+grid%moist(i,j,k,P_QV))
         qvf2   = - qvf1 / ((1.0+qvf1_b)*(1.0+qvf1_b))
         qvf2_b = 1.0/(1.0+qvf1)
         qvf1   = qvf1*qvf2_b + qvf1_b*qvf2
         qvf1_b = qvf1_b*qvf2_b
         grid%xa%p(i,j,k) = (-0.5/grid%em_rdnw(k)) * &
                    ((mu_cgrid(i,j)+qvf1*grid%em_mub(i,j)) / qvf2_b &
                     -(grid%em_mu_2(i,j)+qvf1_b*grid%em_mub(i,j))*qvf2/(qvf2_b*qvf2_b))

         do k = kte-1,1,-1
            qvf1   = 0.5*(q_cgrid(i,j,k)+q_cgrid(i,j,k+1))
            qvf1_b = 0.5*(grid%moist(i,j,k,P_QV)+grid%moist(i,j,k+1,P_QV))
            qvf2   = - qvf1 / ((1.0+qvf1_b)*(1.0+qvf1_b))
            qvf2_b = 1.0/(1.0+qvf1_b)
            qvf1   = qvf1*qvf2_b + qvf1_b*qvf2
            qvf1_b = qvf1_b*qvf2_b
            grid%xa%p(i,j,k) = grid%xa%p(i,j,k+1)  &
                       - (1.0/grid%em_rdn(k+1)) * &
                       ((mu_cgrid(i,j)+qvf1*grid%em_mub(i,j)) / qvf2_b &
                        -(grid%em_mu_2(i,j)+qvf1_b*grid%em_mub(i,j))*qvf2/(qvf2_b*qvf2_b))
         end do
      end do
   end do

   ! Adjust grid%xa%q to makte grid%xb%q + grid%xa%q > 0.0

   if (check_rh == check_rh_tpw) then
      ! Shu-Hua~s TPW conservation:
      call da_check_rh(grid)
   else if (check_rh == check_rh_simple) then
      ! Simple resetting to max/min values:
      call da_check_rh_simple(grid)
   end if

   do k=kts,kte
      do j=jts,jte
         do i=its,ite
            q_cgrid(i,j,k) = grid%xa%q(i,j,k)/(1.0 - grid%xb%q(i,j,k))**2
         end do
      end do
   end do

   !---------------------------------------------------------------------------
   ! [4.0] Convert temperature increments into theta increments 
   !       Evaluate also the increments of (1/rho) and geopotential
   !---------------------------------------------------------------------------

   if (print_detail_xa) then
      write(unit=stdout, fmt='(a, e24.12)') &
         'sum(abs(grid%xa%t(its:ite,jts:jte,kts:kte)))=', &
         sum(abs(grid%xa%t(its:ite,jts:jte,kts:kte))), &
         'sum(abs(grid%xa%p(its:ite,jts:jte,kts:kte)))=', &
         sum(abs(grid%xa%p(its:ite,jts:jte,kts:kte))), &
         'sum(abs(grid%xb%t(its:ite,jts:jte,kts:kte)))=', &
         sum(abs(grid%xb%t(its:ite,jts:jte,kts:kte))), &
         'sum(abs(grid%xb%p(its:ite,jts:jte,kts:kte)))=', &
         sum(abs(grid%xb%p(its:ite,jts:jte,kts:kte))), &
         'sum(abs(grid%em_t_2 (its:ite,jts:jte,kts:kte)))=', &
         sum(abs(grid%em_t_2 (its:ite,jts:jte,kts:kte)))

       write(unit=stdout, fmt='(2(2x, a, e20.12))') &
          'maxval(grid%xa%u(its:ite,jts:jte,kts:kte))=', &
          maxval(grid%xa%u(its:ite,jts:jte,kts:kte)), &
          'minval(grid%xa%u(its:ite,jts:jte,kts:kte))=', & 
          minval(grid%xa%u(its:ite,jts:jte,kts:kte)), &
          'maxval(grid%xa%v(its:ite,jts:jte,kts:kte))=', &
          maxval(grid%xa%v(its:ite,jts:jte,kts:kte)), &
          'minval(grid%xa%v(its:ite,jts:jte,kts:kte))=', &
          minval(grid%xa%v(its:ite,jts:jte,kts:kte)), &
          'maxval(grid%xa%t(its:ite,jts:jte,kts:kte))=', &
          maxval(grid%xa%t(its:ite,jts:jte,kts:kte)), &
          'minval(grid%xa%t(its:ite,jts:jte,kts:kte))=', &
          minval(grid%xa%t(its:ite,jts:jte,kts:kte)), &
          'maxval(grid%xa%q(its:ite,jts:jte,kts:kte))=', &
          maxval(grid%xa%q(its:ite,jts:jte,kts:kte)), &
          'minval(grid%xa%q(its:ite,jts:jte,kts:kte))=', &
          minval(grid%xa%q(its:ite,jts:jte,kts:kte)), &
          'maxval(grid%xa%p(its:ite,jts:jte,kts:kte))=', &
          maxval(grid%xa%p(its:ite,jts:jte,kts:kte)), &
          'minval(grid%xa%p(its:ite,jts:jte,kts:kte))=', &
          minval(grid%xa%p(its:ite,jts:jte,kts:kte)), &
          'maxval(grid%xa%psfc(its:ite,jts:jte))   =', &
          maxval(grid%xa%psfc(its:ite,jts:jte)), &
          'minval(grid%xa%psfc(its:ite,jts:jte))   =', &
          minval(grid%xa%psfc(its:ite,jts:jte))
   end if

   do j=jts,jte
      do i=its,ite

         ph_full  = grid%ht(i,j) * gravity
         ph_xb_hd = grid%ht(i,j) * gravity
         do k = kts, kte
            ! To obtain all of the full fitelds: t, p, q(mixing ratio), rho
            t_full   = grid%xa%t(i,j,k) + grid%xb%t(i,j,k)
            p_full   = grid%xa%p(i,j,k) + grid%xb%p(i,j,k)
            q_full   = grid%moist(i,j,k,P_QV) + q_cgrid(i,j,k)

            ! Note: According to WRF, thits its the dry air density used to
            !       compute the geopotential height: 
            rho_full = p_full / (gas_constant*t_full*(1.0+q_full/rd_over_rv))

            ! To compute the theta increment with the full fitelds:
            grid%em_t_2(i,j,k) = t_full*(base_pres/p_full)**kappa - t0

            ! The full fiteld of analysis ph:
            ph_full  = ph_full  &
                       - grid%xb%dnw(k) * (grid%xb%psac(i,j)+mu_cgrid(i,j)) / rho_full

            ! background hydrostatic phi:
            ph_xb_hd  = ph_xb_hd  &
                       - grid%xb%dnw(k) * grid%xb%psac(i,j) / grid%xb%rho(i,j,k)

            ! The analysis perturbation = Hydro_ph - base_ph + nonhydro_xb_ph:
            grid%em_ph_2(i,j,k+1) = ph_full - grid%em_phb(i,j,k+1) &
                            + (grid%xb%hf(i,j,k+1)*gravity - ph_xb_hd)
         end do
      end do
   end do

   ! To compute the geopotential height increment:

   do k=kts, kte+1
     do j=jts,jte
        do i=its,ite
           ph_cgrid(i,j,k) = grid%em_ph_2(i,j,k) - ph_cgrid(i,j,k)
        end do
     end do
   end do

   ! ========================
   ! Write out the increment:
   ! ========================

   if (write_increments) then
      write(unit=stdout,fmt='(/"Write out increment for plotting......")')
      call da_write_increments (grid, q_cgrid, mu_cgrid, ph_cgrid)
   end if

   ! CONVERT FROM A-GRID TO C-GRID

   !TBH:  NOTE that grid%xp%halo_id3 = HALO_PSICHI_UV_ADJ which its currently defined 
   !TBH:  in the Regitstry as "dyn_em 24:grid%xa%u,grid%xa%v,grid%xa%psfc".  Clearly it its not 
   !TBH:  necessary to update halos in grid%xa%psfc here!  Also, 24-point stencil its 
   !TBH:  too thick, 9-point should suffice.  Apparently, grid%xp%halo_id3 its used 
   !TBH:  in many places!  Thits needs to be fixed.  

#ifdef DM_PARALLEL
#include "HALO_PSICHI_UV_ADJ.inc"
#endif

   ! Fill the boundary

   ! The southern boundary
   if (jts == jds) then
      grid%xa%v(its:ite,jts-1,kts:kte)=2.0*grid%xa%v(its:ite,jts  ,kts:kte) &
                            -    grid%xa%v(its:ite,jts+1,kts:kte)
   end if

   ! The northern boundary
   if (jte == jde) then
      grid%xa%v(its:ite,jte+1,kts:kte)=2.0*grid%xa%v(its:ite,jte  ,kts:kte) &
                            -    grid%xa%v(its:ite,jte-1,kts:kte)
   end if

   ! The western boundary
   if (its == ids) then
      grid%xa%u(its-1,jts:jte,kts:kte)=2.0*grid%xa%u(its  ,jts:jte,kts:kte) &
                            -    grid%xa%u(its+1,jts:jte,kts:kte)
   end if

   ! The eastern boundary
   if (ite == ide) then
      grid%xa%u(ite+1,jts:jte,kts:kte)=2.0*grid%xa%u(ite  ,jts:jte,kts:kte) &
                            -    grid%xa%u(ite-1,jts:jte,kts:kte)
   end if

   do k=kts,kte
      do j=jts,jte+1
         do i=its,ite+1
            u_cgrid(i,j,k)=0.5*(grid%xa%u(i-1,j  ,k)+grid%xa%u(i,j,k))
            v_cgrid(i,j,k)=0.5*(grid%xa%v(i  ,j-1,k)+grid%xa%v(i,j,k))
         end do
      end do
   end do

   !------------------------------------------------------------------------
   ! For later plot and comparation Purpose only, zero out the unused var.
   !------------------------------------------------------------------------

   ! The northern boundary
   if (jte == jde) then
      u_cgrid(its:ite+1,jte+1,kts:kte)=0.0
   end if

   ! The eastern boundary
   if (ite == ide) then
      v_cgrid(ite+1,jts:jte+1,kts:kte)=0.0
   end if

   !---------------------------------------------------------------------------
   ! [5.0] add increment to the original guess and update "grid"
   !---------------------------------------------------------------------------

   do j=jts,jte
      do i=its,ite
         grid%em_mu_2(i,j) = grid%em_mu_2(i,j) + mu_cgrid(i,j)
         grid%em_mu0(i,j) = grid%em_mub(i,j) + grid%em_mu_2(i,j)
         grid%em_w_2(i,j,kte+1)=  grid%em_w_2(i,j,kte+1) + grid%xa%w(i,j,kte+1)
      end do

      do k=kts,kte
         do i=its,ite
            grid%em_u_2(i,j,k) = grid%em_u_2(i,j,k) + u_cgrid(i,j,k)
            grid%em_v_2(i,j,k) = grid%em_v_2(i,j,k) + v_cgrid(i,j,k)
            grid%em_w_2(i,j,k) = grid%em_w_2(i,j,k) + grid%xa%w(i,j,k)
            grid%moist(i,j,k,P_QV) = grid%moist(i,j,k,P_QV) + q_cgrid(i,j,k)
            ! makte sure qv its positive.
            if (num_pseudo == 0 .and. grid%moist(i,j,k,P_QV) < 1.0e-6) &
                grid%moist(i,j,k,P_QV) = 1.0e-6

            if (size(grid%moist,dim=4) >= 4) then
               grid%moist(i,j,k,p_qc) = grid%moist(i,j,k,p_qc) + grid%xa%qcw(i,j,k)
               grid%moist(i,j,k,p_qr) = grid%moist(i,j,k,p_qr) + grid%xa%qrn(i,j,k)
               if (grid%moist(i,j,k,p_qc) < 0.0) grid%moist(i,j,k,p_qc) = 0.0
               if (grid%moist(i,j,k,p_qr) < 0.0) grid%moist(i,j,k,p_qr) = 0.0
            end if

            if (size(grid%moist,dim=4) >= 6) then
               grid%moist(i,j,k,p_qi) = grid%moist(i,j,k,p_qi) + grid%xa%qci(i,j,k)
               grid%moist(i,j,k,p_qs) = grid%moist(i,j,k,p_qs) + grid%xa%qsn(i,j,k)
               if (grid%moist(i,j,k,p_qi) < 0.0) grid%moist(i,j,k,p_qi) = 0.0
               if (grid%moist(i,j,k,p_qs) < 0.0) grid%moist(i,j,k,p_qs) = 0.0
            end if

            if (size(grid%moist,dim=4) >= 7) then
               grid%moist(i,j,k,p_qg) = grid%moist(i,j,k,p_qg) + grid%xa%qgr(i,j,k)
               if (grid%moist(i,j,k,p_qg) < 0.0) grid%moist(i,j,k,p_qg) = 0.0
            end if
         end do
      end do
   end do

   ! The northern boundary
   if (jte == jde) then
      j=jte+1
      do k=kts,kte
         do i=its,ite
            grid%em_v_2(i,j,k) = grid%em_v_2(i,j,k) + v_cgrid(i,j,k)
         end do
      end do
   end if

   ! The eastern boundary
   if (ite == ide) then
      i=ite+1
      do k=kts,kte
         do j=jts,jte
            grid%em_u_2(i,j,k) = grid%em_u_2(i,j,k) + u_cgrid(i,j,k)
         end do
      end do
   end if

   if (print_detail_xa) then
      write(unit=stdout, fmt=*) 'simple variables:'

      if (ite == ide) then
         write (unit=stdout,fmt=*)  ' '

         do k=kts+5,kte,10
            do j=jts,jte,10
               write(unit=stdout, fmt=*) &
                    '  grid%em_u_2(', ide+1, ',', j, ',', k, ')=', &
                       grid%em_u_2(ide+1,j,k)
            end do
            write(unit=stdout, fmt=*) ' '
         end do
      end if

      if (jte == jde) then
         write(unit=stdout, fmt=*) ' '

         do k=kts+5,kte,10
            do i=its,ite,10
               write(unit=stdout, fmt=*) &
                    '  grid%em_v_2(', i, ',', jde+1, ',', k, ')=', &
                       grid%em_v_2(i, jde+1,k)
            end do
            write(unit=stdout, fmt=*) ' '
         end do
      end if

      write(unit=stdout, fmt='(2(2x, a, e20.12))') &
         'maxval(mu_cgrid(its:ite,jts:jte))       =', &
         maxval(mu_cgrid(its:ite,jts:jte)), &
         'minval(mu_cgrid(its:ite,jts:jte))       =', &
         minval(mu_cgrid(its:ite,jts:jte)), &
         'maxval(u_cgrid(its:ite,jts:jte,kts:kte))  =', &
         maxval(u_cgrid(its:ite,jts:jte,kts:kte)), &
         'minval(u_cgrid(its:ite,jts:jte,kts:kte))  =', &
         minval(u_cgrid(its:ite,jts:jte,kts:kte)), &
         'maxval(v_cgrid(its:ite,jts:jte,kts:kte))  =', &
         maxval(v_cgrid(its:ite,jts:jte,kts:kte)), &
         'minval(v_cgrid(its:ite,jts:jte,kts:kte))  =', &
         minval(v_cgrid(its:ite,jts:jte,kts:kte)), &
         'maxval(q_cgrid(its:ite,jts:jte,kts:kte))  =', &
         maxval(q_cgrid(its:ite,jts:jte,kts:kte)), &
         'minval(q_cgrid(its:ite,jts:jte,kts:kte))  =', &
         minval(q_cgrid(its:ite,jts:jte,kts:kte))

      do k=kts,kte
         write(unit=stdout, fmt='(a, i3)') 'k=', k

         write(unit=stdout, fmt='(2(2x, a, e20.12))') &
            'maxval(u_cgrid(its:ite,jts:jte,k))  =', maxval(u_cgrid(its:ite,jts:jte,k)), &
            'minval(u_cgrid(its:ite,jts:jte,k))  =', minval(u_cgrid(its:ite,jts:jte,k)), &
            'maxval(v_cgrid(its:ite,jts:jte,k))  =', maxval(v_cgrid(its:ite,jts:jte,k)), &
            'minval(v_cgrid(its:ite,jts:jte,k))  =', minval(v_cgrid(its:ite,jts:jte,k)), &
            'maxval(q_cgrid(its:ite,jts:jte,k))  =', maxval(q_cgrid(its:ite,jts:jte,k)), &
            'minval(q_cgrid(its:ite,jts:jte,k))  =', minval(q_cgrid(its:ite,jts:jte,k))
      end do
   end if

   if (trace_use) call da_trace_exit("da_transfer_xatowrf")

end subroutine da_transfer_xatowrf


