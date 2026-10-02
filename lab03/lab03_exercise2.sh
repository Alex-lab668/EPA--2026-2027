#!/bin/bash

# Lab 03 - Exercise 2
# Checks the running processes and appends the result to a log file.

if [ -z "$1" ]; then
    echo "Please enter a maximum number of processes."
    exit 1
fi

# Count running processes
ct=$(ps -ef | wc -l)

# Store the current date and time
timestamp=$(date '+%Y-%m-%d %H:%M:%S')

# Append the result to the log file
if [ "$ct" -gt "$1" ]; then
    echo "$timestamp - Maximum number of processes exceeded" >> process_log.txt
else
    echo "$timestamp - The maximum number of processes NOT exceeded" >> process_log.txt
fi
