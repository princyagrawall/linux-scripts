#!/bin/bash
read -p "Enter the file name: " filename
read -p "Enter the pattern to search for: " pattern

if [ -e "$filename" ]; then
    echo "Searching for pattern '$pattern' in file '$filename'..."
    grep "$pattern" "$filename"
    
    if [ $? -eq 0 ]; then
        echo "Pattern '$pattern' found in the file."
    else
        echo "Pattern '$pattern' not found in the file."
    fi
else
    echo "File '$filename' does not exist."
fi
