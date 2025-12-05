#!/bin/bash

read -r -p "Enter the starting number: " start
read -r -p "Enter the ending number: " end

echo "Prime numbers between $start and $end are:"

for ((num = start; num <= end; num++))
do
    if ((num < 2))
    then
        continue  
    fi

    prime=1 


    for ((i = 2; i * i <= num; i++))
    do
        if ((num % i == 0))
       	then
            prime=0
            break
        fi
    done

    
    if ((prime == 1))
    then
        echo -n "$num "
    fi
done

echo

