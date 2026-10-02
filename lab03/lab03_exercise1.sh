#!/bin/bash

# Lab 03 - Exercise 1
# Checks whether more than the user-specified number of processes are running.

# Check that the user entered a number
if [ -z "$1" ]; then
    echo "Please enter a maximum number of processes."
    exit 1
fi

# Count the number of running processes
ct=$(ps -ef | wc -l)

# Compare the process count with the number entered
if [ "$ct" -gt "$1" ]; then
    echo "Maximum number of processes exceeded"
else
    echo "The maximum number of processes NOT exceeded"
fi
