#!/bin/bash

echo "Current Date and Time: $(date)"

echo "Logged-in users: "
who

echo "System Uptime: $(uptime -p)"

echo "System Architecture: $(uname -m)"

echo "Current Working Directory: $(pwd)"

echo "Logged-in User: $(whoami)"