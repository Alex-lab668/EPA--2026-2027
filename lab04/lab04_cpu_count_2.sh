#!/bin/bash

# Lab 04 - Exercise 2
# Check that the user supplied a required CPU count.

usage() {
    echo "Usage: lab04_cpu_count_2.sh [MAX_NUM_CORES]"
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
