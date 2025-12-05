#!/bin/bash
read -p "Enter the file name: " filename
if [ -e "$filename" ]; then
    echo "File '$filename' found."
    
    if [ -r "$filename" ]; then
        echo "You have read permission on $filename."
    else
        echo "You do not have read permission on $filename."
    fi
    
    if [ -w "$filename" ]; then
        echo "You have write permission on $filename."
    else
        echo "You do not have write permission on $filename."
    fi
    
    if [ -x "$filename" ]; then
        echo "You have execute permission on $filename."
    else
        echo "You do not have execute permission on $filename."
    fi
else
    echo "File '$filename' does not exist."
fi
