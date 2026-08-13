#!/bin/bash

read -p "please Enter your IP: " IP 

ping -c 2 $IP >> /dev/null

if [ $? -eq 0 ]
then
	echo "Server is reachable"
else
	echo "Server IS NOT Reachable"
fi
