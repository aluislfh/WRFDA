module da_be_spectral

   use da_control, only : trace_use, trace_use_frequent,da_zero_complex,ierr, &
      pi,gaussian_lats
   use da_tracing, only : da_trace_entry, da_trace_exit
   use da_reporting, only : da_error,message
#ifdef FFTPACK5
#ifndef crayx1
   use fftpack5, only : rfft1f,rfft1i
#endif
#endif
   use da_tools1, only : da_free_unit, da_get_unit

   !--------------------------------------------------------------------
   ! Contains all necessary routines to perform global spectral transform
   !  (based on Fourier and Legendre decompositions).  
   !--------------------------------------------------------------------

   implicit none

contains

#include "da_asslegpol.inc"
#include "da_calc_power.inc"
#include "da_get_gausslats.inc"
#include "da_get_reglats.inc"
#include "da_initialize_h.inc"
#include "da_legtra_inv.inc"
#include "da_legtra.inc"
#include "da_setlegpol_test.inc"
#include "da_setlegpol.inc"
#include "da_vv_to_v_spectral.inc"
#include "da_legtra_inv_adj.inc"
#include "da_apply_power.inc"

end module da_be_spectral

