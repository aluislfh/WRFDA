#!/bin/ksh
#########################################################################
# Script: da_run_suite.ksh
#
# Purpose: End-to-end testing of the WRF system.
#
# Description:
# The da_run_suite.ksh script is designed for end-to-end real data 
# testing of the following components of the WRF system:
#
# WRFSI, WRF real, 3DVAR_OBSPROC, WRFVAR, UPDATE_BC, and WRF.
#
# Any stage can be switched on/off via environment variables as
# described below. The da_run_suite.ksh script can also cycle the
# above sequence for multiple times, and so can be used for
# extended period assessment of scientific impact. I have
# successfully run the script for month long periods with 6 
# hourly cycling all the above. 

# Before running da_run_suite.ksh, you must do the following:

# 1) Compile the executables for the WRF components you wish to 
# test.
# 3) Restore input datasets (e.g. AVN fields, observations, etc).
# A template da_restore_data_mss.ksh script is called from da_run_suite.ksh, 
# which I use when working on machines that have access to NCAR's 
# Mass Store).
# 4) Overwrite default directories, filenames, namelist parameters,
# etc in script da_run_wrf_wrapper.ksh. This is done via environment
# variables. (TO DO: Automate vertical levels ENV variable - currently hardwired
# in da_run_wrfsi.ksh).
#
# NOTE: The idea is that you overwrite defaults in da_run_suite_wrapper.ksh, 
# NOT da_run_suite.ksh itself. We want to maintain a clean script interface
# (da_run_wrf.ksh) to the WRF system. We cannot support changes made to 
# da_run_wrf.ksh. If you feel you need to modify da_run_wrf.ksh, please 
# email wrfhelp@ucar.edu and we will try to include your ideas. 
#
# Once you have set up your experiment as described above, then run the
# da_run_wrf_wrapper.ksh script.
#
# Thank you, and good luck.
#########################################################################

#########################################################################
# Ideally, you should not need to change the code below, but if you 
# think it necessary then please email wrfhelp@ucar.edu with details.
#########################################################################

export INITIAL_DATE=${INITIAL_DATE:-2003010100}            # Start date of test period
export FINAL_DATE=${FINAL_DATE:-2003012800}              # Final date of test period.
export CYCLE_PERIOD=${CYCLE_PERIOD:-6}                 # Assimilation frequency.

# Run LONG_FCST_RANGE hr fcsts at these hours.
export LONG_FCST_TIME_1=${LONG_FCST_TIME_1:-00}
export LONG_FCST_TIME_2=${LONG_FCST_TIME_2:-00}
export LONG_FCST_TIME_3=${LONG_FCST_TIME_3:-99}
export LONG_FCST_TIME_4=${LONG_FCST_TIME_4:-99}

# Length of forecasts to run at LONG_FCST_TIMES.
export LONG_FCST_RANGE_1=${LONG_FCST_RANGE_1:-$CYCLE_PERIOD}
export LONG_FCST_RANGE_2=${LONG_FCST_RANGE_2:-$CYCLE_PERIOD}
export LONG_FCST_RANGE_3=${LONG_FCST_RANGE_3:-$CYCLE_PERIOD}
export LONG_FCST_RANGE_4=${LONG_FCST_RANGE_4:-$CYCLE_PERIOD}

export FCST_RANGE=${FCST_RANGE:-$CYCLE_PERIOD}

export LBC_FREQ=${LBC_FREQ:-06}                        # Boundary condition frequency.
export DOMAIN=${DOMAIN:-01}                            # Domain name. 
export REGION=${REGION:-con200}                        # Region name. 
export SOLVER=${SOLVER:-EM}
export NUM_PROCS=${NUM_PROCS:-1}                       # Number of processors for WRF-Var/WRF.
export CLEAN=${CLEAN:-false}
export DUMMY=${DUMMY:-true}

export RUN_RESTORE_DATA_NCEP=${RUN_RESTORE_DATA_NCEP:-false}  # Run if true.
export RUN_WPS=${RUN_WPS:-false}                # Run if true.
export RUN_WRFSI=${RUN_WRFSI:-false}                # Run if true.
export RUN_REAL=${RUN_REAL:-false}                  # Run if true.
export RUN_OBSPROC=${RUN_OBSPROC:-false}            # Run if true.
export RUN_WRFVAR=${RUN_WRFVAR:-false}              # Run if true.
export RUN_UPDATE_BC=${RUN_UPDATE_BC:-false}        # Run if true.
export RUN_WRF=${RUN_WRF:-false}                   # Run if true.
export CYCLING=${CYCLING:-false}                    # Cold start (false), cycle (true).
export EXPT=${EXPT:-test}                             # Experiment name.
export HOSTNAME=${HOSTNAME:-`hostname`}
export CHECK_SVNVERSION=${CHECK_SVNVERSION:-true}

# Directories:
export TMP_DIR=${TMP_DIR:-/var/tmp/$USER}  # Temporary directory.
export DAT_DIR=${DAT_DIR:-$HOME/data} # Data directory.
export HOSTS=${HOSTS:-$DAT_DIR/hosts/$HOSTNAME.hosts}
export REG_DIR=${REG_DIR:-$DAT_DIR/$REGION} # Data directory for region.
export EXP_DIR=${EXP_DIR:-$REG_DIR/$EXPT} #Run directory.
export OB_DIR=${OB_DIR:-$REG_DIR/ob}     # Observation directory.
export CS_DIR=${CS_DIR:-$REG_DIR/cs}     # Background directory.
export BE_DIR=${BE_DIR:-$REG_DIR/be}     # Background error covariance directory.
export DA_DIR=${DA_DIR:-$REG_DIR/da}    

export REL_DIR=${REL_DIR:-$HOME/trunk} 
export WRF_DIR=${WRF_DIR:-$REL_DIR/wrf} 
export WRFSI_DIR=${WRFSI_DIR:-$REL_DIR/wrfsi}                
export WPS_DIR=${WPS_DIR:-$REL_DIR/wps}                
export WRFVAR_DIR=${WRFVAR_DIR:-$REL_DIR/wrfvar}        
export OBSPROC_DIR=${OBSPROC_DIR:-$REL_DIR/3DVAR_OBSPROC}   

export OK='<FONT COLOR="green">'
export ERR='<FONT COLOR="red">'
export END='</FONT>'

if test ! -d $DAT_DIR; then
   mkdir $DAT_DIR
fi
if test ! -d $REG_DIR; then
   mkdir ${REG_DIR}
fi
if test ! -d $EXP_DIR; then
   mkdir ${EXP_DIR}
fi

export HTML=$EXP_DIR/index.html

# WPS

export OPT_GEOGRID_TBL_PATH=${OPT_GEOGRID_TBL_PATH:-geogrid/}
export OPT_METGRID_TBL_PATH=${OPT_METGRID_TBL_PATH:-metgrid/}
export NL_E_WE=${NL_E_WE:-90}                          # 
export NL_E_SN=${NL_E_SN:-90}                          # 
export MAP_PROJ=${MAP_PROJ:-lambert}
export REF_LAT=${REF_LAT:-40.0}          # 
export REF_LON=${REF_LON:--98.0}         # 
export TRUELAT1=${TRUELAT1:-30.0}          # 
export TRUELAT2=${TRUELAT2:-60.0}          # 
export STAND_LON=${STAND_LON:--98.0}           # 
export NL_DX=${NL_DX:-100000}                # Resolution (m). 
export NL_DY=${NL_DY:-100000}                # Resolution (m).

# Additional Namelist variable for real (namelist.input):

export NL_HISTORY_INTERVAL=${NL_HISTORY_INTERVAL:-360}          # (minutes)
export NL_TIME_STEP=${NLTIME_STEP:-360}                # Timestep (s) (dt=4-6*dx(km) recommended).
export NL_E_VERT=${NL_E_VERT:-28}                   # 
export NL_SMOOTH_OPTION=${NL_SMOOTH_OPTION:-1}           # ?
export NL_MP_PHYSICS=${NL_MP_PHYSICS:-3}           # 
export NL_RADT=${NL_RADT:-30}                # 
export NL_SF_SURFACE_PHYSICS=${NL_SF_SURFACE_PHYSICS:-1} #(1=Thermal diffusion, 2=Noah LSM).
export NL_CU_PHYSICS=${NL_CU_PHYSICS:-1}           #(1=, 2=,3=).
export NL_MP_ZERO_OUT=${NL_MP_ZERO_OUT:-0}          # 
export NL_W_DAMPING=${NL_W_DAMPING:-0}            # 
export NL_DIFF_OPT=${NL_DIFF_OPT:-0}             # 
export NL_KM_OPT=${NL_KM_OPT:-1}               # 
export NL_DAMPCOEF=${NL_DAMPCOEF:-0.2}           # 
export NL_TIME_STEP_SOUND=${NL_TIME_STEP_SOUND:-4}    # 

# Additional namelist variables for 3DVAR_OBSPROC:
export MAX_OB_RANGE=${MAX_OB_RANGE:-2}             # Maximum difference O, B (hours)
export PS0=${PS0:-100000.0}
export TS0=${TS0:-300.0}
export TLP=${TLP:-50.0}

# Additional namelist variables for WRF-Var

export NL_FG_FORMAT=${NL_FG_FORMAT:-1} # First guess format: 1=WRF, 2=MM5, 3=KMA
export NL_OB_FORMAT=${NL_OB_FORMAT:-2} # Observation format: 1=BUFR, 2=ASCII "little_r"
export DA_BACK_ERRORS=${DA_BACK_ERRORS:-$REG_DIR/be/gen_be.NMC.dat} # background errors.

export DATE=$INITIAL_DATE

export PREV_DATE=`$WRFVAR_DIR/main/advance_cymdh.exe $DATE -$CYCLE_PERIOD 2>/dev/null`

if $NL_USE_HTML; then
   echo "<HTML><HEAD><TITLE>$EXPT</TITLE></HEAD><BODY><H1>$EXPT</H1><PRE>" > $HTML
fi

if $CHECK_SVNVERSION; then
   WRF_VN=`svnversion -n $WRF_DIR`
   WRFVAR_VN=`svnversion -n $WRFVAR_DIR`
   WRFPLUS_VN=`svnversion -n $WRFPLUS_DIR`
   WPS_VN=`svnversion -n $WPS_DIR`
fi

echo REL_DIR $REL_DIR >> $HTML
echo "WRF          $WRF_DIR $WRF_VN"
echo "WRFVAR       $WRFVAR_DIR $WRFVAR_VN"
echo "WRFPLUS      $WRFPLUS_DIR $WRFPLUS_VN"
echo "WPS          $WPS_DIR $WPS_VN"
echo "WRFSI        $WRFSI_DIR"
echo "OBSPROC      $OBSPROC_DIR"

echo "INITIAL_DATE $INITIAL_DATE"
echo "FINAL_DATE   $FINAL_DATE"

while test $DATE != $FINAL_DATE; do  

   echo "=========="
   echo $DATE
   echo "=========="

   CCYY=`echo $DATE | cut -c1-4`
   MM=`echo $DATE | cut -c5-6`
   DD=`echo $DATE | cut -c7-8`
   HH=`echo $DATE | cut -c9-10`

   # Decide on length of forecast to run
   if test $HH == $LONG_FCST_TIME_1; then
      FCST_RANGE=$LONG_FCST_RANGE_1
   fi

   if test $HH == $LONG_FCST_TIME_2; then
      FCST_RANGE=$LONG_FCST_RANGE_2
   fi

   if test $HH == $LONG_FCST_TIME_3; then
      FCST_RANGE=$LONG_FCST_RANGE_3
   fi

   if test $HH == $LONG_FCST_TIME_4; then
      FCST_RANGE=$LONG_FCST_RANGE_4
   fi

   . ${WRFVAR_DIR}/scripts/da_get_date_range.ksh $DATE $FCST_RANGE

   if $RUN_RESTORE_DATA_NCEP; then
      export RUN_DIR=$EXP_DIR/restore_data_ncep
      export OUT_DIR=$RUN_DIR/$DATE
      mkdir -p $OUT_DIR

      START_DATE=$DATE
      END_DATE=`$WRFVAR_DIR/main/advance_cymdh.exe ${DATE} ${CYCLE_PERIOD} 2>/dev/null`

      $WRFVAR_DIR/scripts/da_trace.ksh da_run_restore_data_ncep $OUT_DIR
      ${WRFVAR_DIR}/scripts/da_restore_data_ncep.ksh > $OUT_DIR/index.html 2>&1
      if test $? == 0; then
         echo "${OK}Suceeded${END}" `date`
      else
         echo "${ERR}Failed with error$?$END" `date`
         exit 1
      fi
      if $CLEAN; then
         rm -rf ${RUN_DIR}
      fi
   fi

   if $RUN_WRFSI; then
      export RUN_DIR=$EXP_DIR/wrfsi
      export OUT_DIR=$RUN_DIR/$DATE
      mkdir -p $OUT_DIR

      $WRFVAR_DIR/scripts/da_trace.ksh da_run_wrfsi $OUT_DIR
      ${WRFVAR_DIR}/scripts/da_run_wrfsi.ksh > $OUT_DIR/index.html 2>&1
      if test $? == 0; then
         echo "${OK}Suceeded${END}" `date`
      else
         echo "${ERR}Failed with error $?$END" `date`
         exit 1
      fi
      if $CLEAN; then
         rm -rf ${RUN_DIR}
      fi
   fi

   if $RUN_WPS; then
      export RUN_DIR=$EXP_DIR/wps
      export OUT_DIR=$RUN_DIR/$DATE
      mkdir -p $OUT_DIR

      $WRFVAR_DIR/scripts/da_trace.ksh da_run_wps $OUT_DIR
      ${WRFVAR_DIR}/scripts/da_run_wps.ksh > $OUT_DIR/index.html 2>&1
      if test $? == 0; then
         echo "${OK}Suceeded${END}" `date`
      else
         echo "${ERR}Failed with error $?$END" `date`
         exit 1
      fi
      if $CLEAN; then
         rm -rf ${RUN_DIR}
      fi
   fi

   # Create WRF namelist.input:

   . ${WRFVAR_DIR}/inc/namelist_script.inc

   if $RUN_REAL; then     
      export RUN_DIR=$EXP_DIR/real
      export OUT_DIR=$RUN_DIR/$DATE
      mkdir -p $OUT_DIR

      $WRFVAR_DIR/scripts/da_trace.ksh da_run_real $OUT_DIR
      ${WRFVAR_DIR}/scripts/da_run_real.ksh > $OUT_DIR/index.html 2>&1
      if test $? == 0; then
         echo "${OK}Suceeded${END}" `date`
      else
         echo "${ERR}Failed  with error $?$END" `date`
         exit 1
      fi
      if $CLEAN; then
         rm -rf ${RUN_DIR}
      fi
   fi

   if $RUN_OBSPROC; then
      export RUN_DIR=$EXP_DIR/obsproc
      export OUT_DIR=$RUN_DIR/$DATE
      mkdir -p $OUT_DIR

      export DA_OBSERVATIONS=$OB_DIR/$DATE/ob.ascii
      $WRFVAR_DIR/scripts/da_trace.ksh da_run_obsproc $OUT_DIR "${NUM_PROCS} processors"
      ${WRFVAR_DIR}/scripts/da_run_obsproc.ksh > $OUT_DIR/index.html 2>&1
      if test $? == 0; then
         echo "${OK}Suceeded${END}" `date`
      else
         echo "${ERR}Failed with error $?$END" `date`
         exit 1
      fi

      if $CLEAN; then
         rm -rf ${RUN_DIR}
      fi
   fi

   export YEAR=`echo $DATE | cut -c1-4`
   export MONTH=`echo $DATE | cut -c5-6`
   export DAY=`echo $DATE | cut -c7-8`
   export HOUR=`echo $DATE | cut -c9-10`

   if $RUN_WRFVAR; then
      if $CYCLING; then
         MESSAGE="${NUM_PROCS} processors in full cycling mode"
         export DA_FIRST_GUESS=${CS_DIR}/${PREV_DATE}/wrfvar_input_d${DOMAIN}
      else
         MESSAGE="${NUM_PROCS} processors in cold-start mode"
      fi

      export RUN_DIR=$EXP_DIR/wrfvar
      export OUT_DIR=$RUN_DIR/$DATE
      mkdir -p $OUT_DIR $DA_DIR

      export DA_ANALYSIS=$DA_DIR/$DATE/wrfvar_output
      $WRFVAR_DIR/scripts/da_trace.ksh da_run_wrfvar $OUT_DIR $MESSAGE
      ${WRFVAR_DIR}/scripts/da_run_wrfvar.ksh > $OUT_DIR/index.html 2>&1
      if test $? == 0; then
         echo "${OK}Suceeded${END}" `date`
      else
         echo "${ERR}Failed with error $?$END" `date`
         exit 1
      fi
 
      if $CLEAN; then
         rm -rf ${RUN_DIR}
      fi
   else     
      if $CYCLING; then
         echo "   Running free-forecast."
         echo ""
         DA_ANALYSIS=${CS_DIR}/${PREV_DATE}/wrfvar_input_d$DOMAIN
      else
         echo "   Analysis is first guess"
         echo ""
         DA_ANALYSIS=$CS_DIR/$DATE/wrfinput_d$DOMAIN #ICs
      fi
   fi

   if $RUN_UPDATE_BC; then
      export RUN_DIR=$EXP_DIR/update_bc
      export OUT_DIR=$RUN_DIR/$DATE
      mkdir -p $OUT_DIR

      $WRFVAR_DIR/scripts/da_trace.ksh da_update_bc $OUT_DIR
      $WRFVAR_DIR/scripts/da_update_bc.ksh > $OUT_DIR/index.html 2>&1
      if test $? == 0; then
         echo "${OK}Suceeded${END}" `date`
      else
         echo "${ERR}Failed with error $?$END" `date`
         exit 1
      fi

      if $CLEAN; then
         rm -rf ${RUN_DIR}
      fi

#   else
      # Use wrfbdy file as is
   fi

   if $RUN_WRF; then
      export RUN_DIR=$EXP_DIR/wrf
      export OUT_DIR=$RUN_DIR/$DATE
      mkdir -p $OUT_DIR

      $WRFVAR_DIR/scripts/da_trace.ksh da_run_wrf $OUT_DIR ${FCST_RANGE} hours
      $WRFVAR_DIR/scripts/da_run_wrf.ksh > $OUT_DIR/index.html 2>&1
      if test $? == 0; then
         echo "${OK}Suceeded${END}" `date`
      else
         echo "${ERR}Failed $?$END" `date`
      fi

      # What files do we want?

      if $CLEAN; then
         rm -rf ${RUN_DIR}
      fi
   fi

   export PREV_DATE=${DATE}
   export DATE=`$WRFVAR_DIR/main/advance_cymdh.exe $DATE $CYCLE_PERIOD 2>/dev/null`

done

echo "</PRE></BODY></HTML>" >> $HTML

exit 0
