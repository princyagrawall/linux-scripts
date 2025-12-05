#!/usr/bin/env bash

permute() {
    local prefix="$1"
    local str="$2"
    local n=${#str}

    if [ "$n" -eq 0 ]; then
        echo "$prefix"
    else
        for (( i=0; i<n; i++ )); do
            local ch="${str:i:1}"
            local rem="${str:0:i}${str:i+1}"
            permute "${prefix}${ch}" "${rem}"
        done
    fi
}

read -p "Enter a string: " str
echo "All permutations of '${str}' are:"
permute "" "$str"

