#!/bin/bash

for cache_line in 64 32 16; do
  printf "\nL1_$cache_line\n"
  printf "step\thits\tmisses\taccesses\n"
  for i in {0..7}
  do
    step=$[ 1<<$i ]
    h=`grep "system.cpu.dcache.overall_hits::cpu.data" m5out-67108864-$cache_line-$step/stats.txt | awk '{print $2}'`
    m=`grep "system.cpu.dcache.overall_misses::cpu.data" m5out-67108864-$cache_line-$step/stats.txt | awk '{print $2}'`
    a=`grep "system.cpu.dcache.overall_accesses::cpu.data" m5out-67108864-$cache_line-$step/stats.txt | awk '{print $2}'`
    [ -z $h ] && h=0
    [ -z $m ] && m=0
    [ -z $a ] && m=0
    printf "$step\t$h\t$m\t$a\n"
  done
done

for cache_line in 64 32 16; do
  printf "\nL2_L1_$cache_line\n"
  printf "step\thits\tmisses\taccesses\n"
  for i in {0..7}
  do
    step=$[ 1<<$i ]
    h=`grep "system.l2.overall_hits::cpu.data" m5out-67108864-$cache_line-$step/stats.txt | awk '{print $2}'`
    m=`grep "system.l2.overall_misses::cpu.data" m5out-67108864-$cache_line-$step/stats.txt | awk '{print $2}'`
    a=`grep "system.l2.overall_accesses::cpu.data" m5out-67108864-$cache_line-$step/stats.txt | awk '{print $2}'`
    [ -z $h ] && h=0
    [ -z $m ] && m=0
    [ -z $a ] && m=0
    printf "$step\t$h\t$m\t$a\n"
  done
done
