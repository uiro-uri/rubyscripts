#!/bin/sh
#PBS -q larch
#PBS -N bench
#PBS -l ncpus=1,walltime=00:01:00
#PBS -M oshimi@konomi.nagaokaut.ac.jp
#PBS -m abe
# Change Directory
cd /home/adm/g01068457/src/
sleep 10
#print the time and date
date
# Run program
./bench
#print the time and date
date
