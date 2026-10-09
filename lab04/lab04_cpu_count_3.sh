#!/bin/bash

# Lab 04 - Exercise 3
# Check CPU cores and display some additional system information.

usage() {
    echo "Usage: lab04_cpu_count_3.sh [MAX_NUM_CORES]"
}

if [ -z "$1" ]; then
    usage
    exit 1
fi

num_cpu=$(nproc)

if [ "$num_cpu" -lt "$1" ]; then
    echo "ERROR: Not enough CPU cores. Required: $1, Available: $num_cpu"
    exit 1
else
    echo "OK: CPU requirement met. Required: $1, Available: $num_cpu"
fi

# Additional Bash commands
echo
echo "Hostname:"
hostname

echo
echo "System uptime:"
uptime

echo
echo "The hostname command shows the name of the VM."
echo "The uptime command shows how long the VM has been running and its current load."
echo "These commands improve the script by providing extra system information."
