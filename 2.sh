#!/bin/bash
for ((i=1;i<=5;i++))
do
	read -p "Pleaae Enter $i Number: " VAR

        SUM=$[$SUM+$VAR]

	if [ $i -eq 1 ]
	then
		MAX=$VAR
		MIN=$VAR
	fi

	if [ $VAR -gt $MAX ]
	then
		MAX=$VAR
	elif [ $VAR -le $MIN ]
	then
		MIN=$VAR
	fi
done

echo "MAX = $MAX"
echo "MIN = $MIN"
echo "SUM= $SUM"
echo "AVE= `echo "scale=2; $SUM / $i" | bc`"

