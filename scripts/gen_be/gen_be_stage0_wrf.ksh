#!/bin/ksh
#-----------------------------------------------------------------------
# Script gen_be_stage0_wrf.ksh
#
# Purpose: To calculate ensemble perturbations in "standard fields".
#
# Note: START_DATE and END_DATE are defined as the times of the first and 
# last perturbation. We derive START_DATE_STAGE0 and END_DATE_STAGE0
# from these using FCST_RANGE.  
#-----------------------------------------------------------------------

#set echo

#-----------------------------------------------------------------------------------
# Don't change anything below this line.
#-----------------------------------------------------------------------------------

export REL_DIR=${REL_DIR:-$HOME/trunk}
export WRFVAR_DIR=${WRFVAR_DIR:-$REL_DIR/wrfvar}

. ${WRFVAR_DIR}/scripts/gen_be/gen_be_set_defaults.ksh

if [[ ! -d $RUN_DIR ]]; then mkdir $RUN_DIR; fi
if  ! -d $STAGE0_DIR ]]; then mkdir $STAGE0_DIR; fi

#Derive times of initial/final FCST_RANGE forecasts:
export START_DATE_STAGE0=$(${BUILD_DIR}/da_advance_cymdh.exe $START_DATE -$FCST_RANGE1)
export END_DATE_STAGE0=$(${BUILD_DIR}/da_advance_cymdh.exe $END_DATE   -$FCST_RANGE1)
export DATE=$START_DATE_STAGE0

while test $DATE -le $END_DATE_STAGE0; do

   export TMP_DIR=${RUN_DIR}/${DATE}
   rm -rf ${TMP_DIR} 2>/dev/null
   mkdir ${TMP_DIR}  2>/dev/null
   cd ${TMP_DIR}

   for SV in psi chi t rh ps; do
      if [[ ! -d $SV ]]; then mkdir $SV; fi
   done

   #  Create file dates:
   export FCST_TIME=$(${BUILD_DIR}/da_advance_cymdh.exe $DATE $FCST_RANGE1)
   echo "gen_be_stage0_wrf: Calculating standard perturbation fields valid at time " $FCST_TIME

   export YYYY=$(echo $FCST_TIME | cut -c1-4)
   export MM=$(echo $FCST_TIME | cut -c5-6)
   export DD=$(echo $FCST_TIME | cut -c7-8)
   export HH=$(echo $FCST_TIME | cut -c9-10)
   export FILE_DATE=${YYYY}-${MM}-${DD}_${HH}:00:00
   export FILE=${DAT_DIR}/${DATE}/wrfout_d01_${FILE_DATE}
   export FILE1=wrfout_d01_${FILE_DATE}
   export FILE2=wrfout_d01_${FILE_DATE}.e001
   export FILE3=wrfout_d01_${FILE_DATE}.e002
   export NEXT_DATE=$(${BUILD_DIR}/da_advance_cymdh.exe $DATE $FCST_RANGE2)
   if [[ $BE_METHOD == NMC ]]; then
     ln -sf $FILE $FILE1
     ln -sf $FILE $FILE2
     ln -sf ${DAT_DIR}/${NEXT_DATE}/wrfout_d01_${FILE_DATE} $FILE3
   fi

   ln -fs ${BUILD_DIR}/gen_be_stage0_wrf.exe .
   ./gen_be_stage0_wrf.exe ${BE_METHOD} ${FCST_TIME} $NE $FILE1 > gen_be_stage0_wrf.${FCST_TIME}.log 2>&1

   #  Tidy:
   mv pert.${FCST_TIME}* ${STAGE0_DIR}
   # mv mean.${FCST_TIME}* ${STAGE0_DIR}
   mv gen_be_stage0_wrf.${FCST_TIME}.log ${STAGE0_DIR}
   rm -rf $TMP_DIR 2> /dev/null

   echo $DATE $FILE ${DAT_DIR}/${NEXT_DATE}/wrfout_d01_${FILE_DATE}
   export DATE=$(${BUILD_DIR}/da_advance_cymdh.exe $DATE $INTERVAL)

done     # End loop over dates.

exit 0
