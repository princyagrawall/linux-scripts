#!/bin/bash
echo "Enter a string:"
read str
cleaned=$(echo "$str" | tr -d ' ')
reversed=$(echo "$cleaned" | rev)
if [ "$cleaned" = "$reversed" ]; then
    echo "It is a palindrome."
else
    echo "It is not a palindrome."
fi
