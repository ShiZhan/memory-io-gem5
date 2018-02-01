#!/bin/bash

printf "\nL1_64\n"
printf "step\thits\tmisses\taccesses\n"
for i in {0..7}
do
  step=$[ 1<<$i ]
  h=`grep "system.cpu.dcache.overall_hits::cpu.data" m5out-67108864-64-$step/stats.txt | awk '{print $2}'`
  m=`grep "system.cpu.dcache.overall_misses::cpu.data" m5out-67108864-64-$step/stats.txt | awk '{print $2}'`
  a=`grep "system.cpu.dcache.overall_accesses::cpu.data" m5out-67108864-64-$step/stats.txt | awk '{print $2}'`
  printf "$step\t$h\t$m\t$a\n"
done

printf "\nL1_32\n"
printf "step\thits\tmisses\taccesses\n"
for i in {0..7}
do
  step=$[ 1<<$i ]
  h=`grep "system.cpu.dcache.overall_hits::cpu.data" m5out-67108864-32-$step/stats.txt | awk '{print $2}'`
  m=`grep "system.cpu.dcache.overall_misses::cpu.data" m5out-67108864-32-$step/stats.txt | awk '{print $2}'`
  a=`grep "system.cpu.dcache.overall_accesses::cpu.data" m5out-67108864-32-$step/stats.txt | awk '{print $2}'`
  printf "$step\t$h\t$m\t$a\n"
done

printf "\nL1_16\n"
printf "step\thits\tmisses\taccesses\n"
for i in {0..7}
do
  step=$[ 1<<$i ]
  h=`grep "system.cpu.dcache.overall_hits::cpu.data" m5out-67108864-16-$step/stats.txt | awk '{print $2}'`
  m=`grep "system.cpu.dcache.overall_misses::cpu.data" m5out-67108864-16-$step/stats.txt | awk '{print $2}'`
  a=`grep "system.cpu.dcache.overall_accesses::cpu.data" m5out-67108864-16-$step/stats.txt | awk '{print $2}'`
  printf "$step\t$h\t$m\t$a\n"
done

printf "\nL2_L1_64\n"
printf "step\thits\tmisses\taccesses\n"
for i in {0..7}
do
  step=$[ 1<<$i ]
  h=`grep "system.l2.overall_hits::cpu.data" m5out-67108864-64-$step/stats.txt | awk '{print $2}'`
  m=`grep "system.l2.overall_misses::cpu.data" m5out-67108864-64-$step/stats.txt | awk '{print $2}'`
  a=`grep "system.l2.overall_accesses::cpu.data" m5out-67108864-64-$step/stats.txt | awk '{print $2}'`
  printf "$step\t$h\t$m\t$a\n"
done

printf "\nL2_L1_32\n"
printf "step\thits\tmisses\taccesses\n"
for i in {0..7}
do
  step=$[ 1<<$i ]
  h=`grep "system.l2.overall_hits::cpu.data" m5out-67108864-32-$step/stats.txt | awk '{print $2}'`
  m=`grep "system.l2.overall_misses::cpu.data" m5out-67108864-32-$step/stats.txt | awk '{print $2}'`
  a=`grep "system.l2.overall_accesses::cpu.data" m5out-67108864-32-$step/stats.txt | awk '{print $2}'`
  printf "$step\t$h\t$m\t$a\n"
done

printf "\nL2_L1_16\n"
printf "step\thits\tmisses\taccesses\n"
for i in {0..7}
do
  step=$[ 1<<$i ]
  h=`grep "system.l2.overall_hits::cpu.data" m5out-67108864-16-$step/stats.txt | awk '{print $2}'`
  m=`grep "system.l2.overall_misses::cpu.data" m5out-67108864-16-$step/stats.txt | awk '{print $2}'`
  a=`grep "system.l2.overall_accesses::cpu.data" m5out-67108864-16-$step/stats.txt | awk '{print $2}'`
  printf "$step\t$h\t$m\t$a\n"
done
