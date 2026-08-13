#!/bin/bash

numbers=()

for ((i=0; i<20; i++)); do
    read -p "Enter number $((i+1)): " number
    numbers+=("$number")
done

largest=${numbers[0]}
smallest=${numbers[0]}

for number in "${numbers[@]}"; do
    if [ "$number" -gt "$largest" ]; then
        largest=$number
    fi

    if [ "$number" -lt "$smallest" ]; then
        smallest=$number
    fi
done

echo "Largest number: $largest"
echo "Smallest number: $smallest"
