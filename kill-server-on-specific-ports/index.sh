#!/bin/bash

# Check if at least one port is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 port1 [port2 ... portN]"
    exit 1
fi

# Loop through all the arguments (ports)
for port in "$@"
do
    # Find the process running on the given port and kill it
    pid=$(lsof -t -i:"$port")
    if [ -n "$pid" ]; then
        kill -9 "$pid"
        echo "Killed process $pid on port $port"
    else
        echo "No process found on port $port"
    fi
done
