#!/bin/bash
factorial() {
num=$1
fact=1
for (( i=1; i<=num; i++ ))
do
fact=$((fact * i))
done
echo $fact
}
echo "factorial of 5 is: $(factorial 5)"
echo "factorial of 7 is: $(factorial 7)"
echo "factorial of 10 is: $(factorial 10)"