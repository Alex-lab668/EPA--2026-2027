#!/bin/bash

# Lab 04 - Exercise 1
# Check whether the VM has at least the number of CPU cores requested.

num_cpu=$(nproc)

if [ "$num_cpu" -lt "$1" ]; then
    echo "ERROR: Not enough CPU cores. Required: $1, Available: $num_cpu"
    exit 1
else
    echo "OK: CPU requirement met. Required: $1, Available: $num_cpu"
fi
