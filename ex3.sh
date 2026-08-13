#!/bin/bash

IP=$1
USER=$2
PASS=$3

if [ $# -ne 3 ]; then
    echo "Usage: $0 <IP> <USER> <PASSWORD>"
    exit 1
fi

echo "Checking server $IP ..."

if ping -c 2 -W 2 "$IP" > /dev/null 2>&1; then
    echo "Server $IP is accessible."

    sshpass -p "$PASS" scp -o StrictHostKeyChecking=no \
        /etc/passwd "$USER@$IP:/home/user/"

    if [ $? -eq 0 ]; then
        echo "/etc/passwd successfully copied to $IP:/home/user/"
    else
        echo "Failed to copy /etc/passwd"
    fi
else
    echo "Server $IP is not accessible."
fi
