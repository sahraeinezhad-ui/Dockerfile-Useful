#!/bin/bash

IP_FILE="ips.txt"
LOG_FILE="ping_$(date +%Y-%m-%d).log"

while read -r IP; do

    if [ -z "$IP" ]; then
        continue
    fi

    HOSTNAME=$(getent hosts "$IP" | awk '{print $2}')

    if [ -z "$HOSTNAME" ]; then
        HOSTNAME="Unknown"
    fi

    if ping -c 2 -W 2 "$IP" > /dev/null 2>&1; then
        RESULT="UP"
    else
        RESULT="DOWN"
    fi

    echo "$(date '+%Y-%m-%d %H:%M:%S') | IP=$IP | HOSTNAME=$HOSTNAME | STATUS=$RESULT" >> "$LOG_FILE"

done < "$IP_FILE"

echo "Ping results saved in $LOG_FILE"
