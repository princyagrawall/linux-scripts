#!/usr/bin/env bash

read -p "Enter first number: " a
read -p "Enter second number: " b

x=$a
y=$b

while [ $y -ne 0 ]; do
    temp=$y
    y=$((x % y))
    x=$temp
done

if [ $x -eq 1 ]; then
    echo "$a and $b are coprime numbers"
else
    echo "$a and $b are not coprime (GCD = $x)"
fi

