#!/bin/bash

fib() {
    if [ $1 -le 1 ]; then
        echo $1
    else
        echo $(( $(fib $(( $1 - 1 ))) + $(fib $(( $1 - 2 ))) ))
    fi
}

echo "Enter how many terms to generate:"
read n

echo "Fibonacci series:"
for (( i=0; i<n; i++ ))
do
    echo -n "$(fib $i) "
done

echo
