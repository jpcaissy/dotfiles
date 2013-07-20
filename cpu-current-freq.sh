#!/bin/bash
# Simple script to print out the max MHz
# source http://lwn.net/Articles/379764/

grep "MHz" /proc/cpuinfo  | grep -m1 -oP "\d+\.\d+"
exit 0
