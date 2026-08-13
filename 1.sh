#! /bin/bash


read -p "Please Enter a number: " number 

if [ $number -gt 10 ]; then
	echo "The Number is larger than 10"
elif [ $number -eq 10 ]; then
	echo "The Number is Equal 10"
else
	echo "The Number is Smaler 10"
fi
