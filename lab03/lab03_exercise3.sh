#!/bin/bash

# Lab 03 - Exercise 3
# $1 = maximum number of processes
# $2 = screen or file

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 NUMBER screen|file"
    exit 1
fi

# Count running processes
ct=$(ps -ef | wc -l)

# Decide which message to use
if [ "$ct" -gt "$1" ]; then
    message="Maximum number of processes exceeded"
else
    message="The maximum number of processes NOT exceeded"
fi

# Choose where the output goes
if [ "$2" = "screen" ]; then
    echo "$message"
elif [ "$2" = "file" ]; then
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    echo "$timestamp - $message" >> process_log.txt
else
    echo "Please choose either screen or file"
fi
