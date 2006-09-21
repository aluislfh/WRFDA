#!/bin/ksh
export FULL=${FULL:-false}
export COMPILE=${COMPILE:-true}
export RUN=${RUN:-true}

# Need a cleaner mapping between compiler and configure options.
# Assuming option 2 is pgi mpi is a hack

export ID=${ID:-trunk}
export REGIONS=${REGIONS:-kma_t63}
export TARGETS=${TARGETS:-wrfvar wrfplus}
export CONFIGS=${CONFIGS:-mpi}
export NPROCS=${NPROCS:-1 4}

###########
# Compiling
###########

let COUNT=1

for CONFIG in $CONFIGS; do

  for COMPILER in $COMPILERS; do
    if $COMPILE; then
      OPTION=${OPTIONS[$COUNT]}

      . ~/setup_$COMPILER

      for TARGET in $TARGETS; do
        echo "Compiling ${ID}_${CONFIG}_${COMPILER}/$TARGET"
        cd ~bray/${ID}_${CONFIG}_$COMPILER/$TARGET
        svn update >/dev/null 2>&1
        echo $OPTION | ./configure_new $TARGET >/dev/null 2>&1
        cd build
        if $FULL; then make superclean; fi
        make -r $TARGET > compile.out 2>&1
      done
      let COUNT=$COUNT+1
    fi

    if $RUN; then
      for REGION in $REGIONS; do
        for NUM_PROCS in $NPROCS; do
          if test $CONFIG = ser && test $NUM_PROCS != 1; then
            echo "Skipping parallel runs of serial code"
          else
            cd ~bray/data/$REGION
            export BUILD=${ID}_${CONFIG}_${COMPILER}
            echo "Testing $BUILD $TARGET on $REGION"
            if test $TARGET = be; then
              ./gen_be.bsh
            else
              ./test.bsh
            fi
          fi
        done
      done
    fi
  done
done

ls -lrt ~bray/*/*/build/*.exe
ls -lrt ~bray/data/*/*/cost_fn




