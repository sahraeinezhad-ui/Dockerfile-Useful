#!/bin/bash
#add comment for check branch

Multiply=`echo "$1*$2" | bc`
if [ $1 -ge $2 ]
then
	Devide=`echo "scale=2;$1/$2" | bc`
else
	echo "please enter bigger number first"
	exit;
fi

echo "Multiply is $Multiply, Devide is $Devide"

echo "Numbe of Arg $# "

