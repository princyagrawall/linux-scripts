#!/usr/bin/env bash

read -p "Enter a decimal number: " n

dec=$n
octal=""
hex=""

# Octal conversion
num=$n
echo "Octal conversion steps:"
while [ $num -gt 0 ]; do
    rem=$((num % 8))
    echo "$num / 8 = $((num / 8)), remainder = $rem"
    octal="$rem$octal"
    num=$((num / 8))
done
[ -z "$octal" ] && octal=0

# Hexadecimal conversion
num=$n
echo "Hexadecimal conversion steps:"
while [ $num -gt 0 ]; do
    rem=$((num % 16))
    case $rem in
        10) rem=A ;;
        11) rem=B ;;
        12) rem=C ;;
        13) rem=D ;;
        14) rem=E ;;
        15) rem=F ;;
    esac
    echo "$num / 16 = $((num / 16)), remainder = $rem"
    hex="$rem$hex"
    num=$((num / 16))
done
[ -z "$hex" ] && hex=0

echo "Octal: $octal"
echo "Hexadecimal: $hex"

