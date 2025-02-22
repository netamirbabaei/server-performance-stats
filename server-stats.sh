#!/bin/bash

# Show CPU usage
echo "Checking CPU usage..."
top -bn1 | grep "Cpu(s)"
echo ""

# Show memory usage
echo "Checking memory usage..."
free -h
echo ""

# Show disk usage
echo "Checking disk space..."
df -h
echo ""

# Show top 5 processes using CPU
echo "Top 5 CPU-consuming processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6
echo ""

# Show top 5 processes using memory
echo "Top 5 memory-consuming processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -6
echo ""

# Show basic system info
echo "System Information:"
uname -a
echo "Uptime:" $(uptime -p)
echo "Currently logged-in users:" $(who | wc -l)
echo ""
