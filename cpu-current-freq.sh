#!/bin/bash
# Simple script to print out the max MHz
# source http://lwn.net/Articles/379764/

MAX_MHZ=0
SYSFS_SCALING=/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies

# Use sysfs if available
if [ -e $SYSFS_SCALING ]; then
    for CURR_MHZ in `cat $SYSFS_SCALING`; do
        CURR_MHZ=$(($CURR_MHZ/1000))
        if [ $CURR_MHZ -gt $MAX_MHZ ]; then
            MAX_MHZ=$CURR_MHZ
        fi
    done
    echo $MAX_MHZ
    exit 0
fi
