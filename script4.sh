#!/bin/bash

read -p "please Enter your OS: " MY_OS

if [ -z $MY_OS ];then
	echo "please Enter something"
	exit 1;
fi

MY_OS=`echo $MY_OS | tr [ :upper: ] [:lower:] | tr -d [ :digit: ] | tr -d [ :blank: ]`

if [ $MY_OS = "linux" ] || [ $MY_OS = "unix" ]
then
	echo "great job!!!!"
elif [ $MY_OS = "windows" ]; then
	echo "windows ?????? NOT good option!!!!!"
else
	echo "shame on you!"
fi

