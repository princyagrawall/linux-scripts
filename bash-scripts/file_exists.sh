#!/bin/bash
echo "enter filename"
read filename
if [ -f "filename" ]; then
echo "file exists. contents are"
cat "$filename"
else
echo "file does  not exists"
echo "do you want to create it? (y/n)"
read choice
if [ "$choice" = "y" ]; then
touch "$filename"
echo "file '$filename' created successfully"
else
echo "file not created"
fi
fi
