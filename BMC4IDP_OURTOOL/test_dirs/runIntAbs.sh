#!/bin/bash
set -u

# run all box and oct related tests for a single passed directory
set -u

# Import the generic commands to run tests and stuff
source ./test_dir.sh
Z3_BIN=/usr/bin/z3
LLVM_PREFIX=/home/liu-ye-ye/desktop/intAbs/clang+llvm-3.8.0-x86_64-linux-gnu-ubuntu-14.04
OPT=${LLVM_PREFIX}/bin/opt
WORKLIST_SO=/home/liu-ye-ye/desktop/intAbs/intAbs/src/cmake-build-debug/worklist-ai/libworklistAI.so
CLANG=${LLVM_PREFIX}/bin/clang
LLVM_DIS=${LLVM_PREFIX}/bin/llvm-dis
build_main() {
  echo "----------------------build begin-----------------------------"
  echo "$CLANG -emit-llvm -S -c main.c"
  $CLANG -emit-llvm -S -c main.c -o $1.ll  || die "error: clang"
  # Use mem2reg in hopes that this simplifies things enough that we don't have
  # to worry about weird features
  $OPT -mem2reg $1.ll >${1}2.bc || die "error: opt mem2reg"
  $LLVM_DIS ${1}2.bc  || die "error: llvm-dis main2.bc"
  mv ${1}2.ll $1.ll 
  echo "----------------------build over-----------------------------"
}
run_box_comb_pri() {
  startTime=`date +%s%N`
  #timeout 3600 time $OPT -load $WORKLIST_SO -worklist-ai  -nocombs -priority -box $1.ll >main_out.bc 2>./temp1.out #run_box_ncomb_pri 3bug 1.34
  #timeout 3600 time $OPT -load $WORKLIST_SO -worklist-ai  -box -priority $1.ll >main_out.bc 2>./temp2.out #run_box_comb_pri 1bug 5.03
  #timeout 3600 time $OPT -load $WORKLIST_SO -worklist-ai  -oct -priority $1.ll >main_out.bc 2>./temp4.out #run_oct_comb_pri 1bug 179.77
  timeout 3600 time $OPT -load $WORKLIST_SO -worklist-ai  -nocombs -box  $1.ll >main_out.bc 2>./temp.out #run_box_ncomb 1bug 1.05s
  endTime=`date +%s%N`
  echo "Runtime decision procedure: "$(printf "%.5f" `echo "scale=5;($endTime - $startTime)/1000000000"|bc`) > ./intAbs\($2\).out
   while read line
   do
	if [[ "$line" =~ ^"Errors found:".* ]]
        then
        echo "** "${line#*:}" of * failed" >>  ./intAbs\($2\).out
        fi
   done <  ./temp.out
   #rm temp.*
   
}
run(){
    if [ ! -f "main.c" ] ; then return; fi
    build_main $1
    run_box_comb_pri $1 $2
}
