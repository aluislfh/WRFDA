module da_statistics
   
   !---------------------------------------------------------------------------
   ! PURPOSE: Contains routines used to calculates statistical quantities.
   !---------------------------------------------------------------------------
   
   use da_define_structures
   use da_par_util
   
   implicit none
   
   contains
   
#include "da_analysis_stats.inc"
#include "da_correlation_coeff1d.inc"
#include "da_correlation_coeff2d.inc"
#include "da_data_distribution.inc"
#include "da_stats_calculate.inc"

end module da_statistics

