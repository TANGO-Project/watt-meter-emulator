#!/bin/bash

if [ "$HOSTNAME" != ns54.bullx ] ; then
    printf "Please run this script on ns54"
else
    while true; do
    #alternative sinfo -i 1 -h --format "%#N %.6D %#P %.11T %.4c %.8z %.6m %.8d %.6w %.8f %20E %O" -n nd32
	scontrol show node=ns[50,52-53,55-57] -o -d | sed "s/ /;/g" >> "slurm-host-data.log"
	sleep 1
    done
fi
