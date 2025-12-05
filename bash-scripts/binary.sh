#!/usr/bin/env bash

read -p "Enter a number: " n

binary=""

if [ $n -eq 0 ]; then
    binary="0"
else
    while [ $n -gt 0 ]; do
        rem=$((n % 2))
        binary="$rem$binary"
        n=$((n / 2))
    done
fi

echo "Binary representation: $binary"

