#!/bin/bash

correct_pass="admin123"

for i in {1..3}
do
    read -sp "Enter password: " password
    echo
    if [ "$password" = "$correct_pass" ]; then
        echo "Login successful!"
        exit 0
    else
        echo "Wrong password! Attempts left: $((3 - i))"
    fi
done

echo "Too many wrong attempts. Exiting..."

