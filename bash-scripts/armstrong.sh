#!/bin/bash
echo "enter the number"
read num
sum=0
temp=$num
len=${#num}
while [ $temp -gt 0 ]
do
digit=$((temp % 10))
sum=$((sum + digit ** len))
temp=$((temp / 10))
done
if [ $sum -eq $num ]; then
echo "$num is an armstrong number"
else
echo "$num is not an armstrong number"
fi