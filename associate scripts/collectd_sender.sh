#!/bin/bash

#Note this script works as part of collectd's exec functionality. This script is run and it scrapes from the output of the watt meter emulator.

 INTERVAL="${COLLECTD_INTERVAL:-20}"
 LOGFILE="/home_nfs/home_kavanagr/energymodeller/power-emulator/power-emulator-output.log"
 HOST_COUNT=5

 while sleep "$INTERVAL"; do
   tail -n $HOST_COUNT $LOGFILE | awk '{split($0,values," "); printf "PUTVAL \""; printf values[1] ".bullx"; printf "/"; printf values[2]; printf "/"; printf values[2]; printf "\" interval=20 N:"; print values[3]}'
 done
