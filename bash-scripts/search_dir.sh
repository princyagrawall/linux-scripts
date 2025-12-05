#!/bin/bash
echo "Enter directory to search:"
read search_dir

echo "Enter file extension to search for (e.g., txt). Leave empty to skip:"
read extension

echo "Enter minimum file size (e.g., 1M, 500K, 10G). Leave empty to skip:"
read min_size

echo
echo "Searching..."
echo

cmd="find \"$search_dir\" -type f"

if [ -n "$extension" ]; then
    cmd="$cmd -name \"*.$extension\""
fi

if [ -n "$min_size" ]; then
    cmd="$cmd -size +$min_size"
fi
eval $cmd
