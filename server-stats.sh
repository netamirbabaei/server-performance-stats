#!/bin/bash

# Show CPU usage
echo "#####################"
echo "Checking CPU usage..."
echo "#####################"
echo ""
top -bn1 | grep "Cpu(s)"
echo ""
echo "----------------------------------------------------------------------"


# Show memory usage
echo "########################"
echo "Checking memory usage..."
echo "########################"
echo ""
free -h
echo ""
echo "----------------------------------------------------------------------"


# Show disk usage
echo "######################"
echo "Checking disk space..."
echo "######################"
echo ""
df -h
echo ""
echo "----------------------------------------------------------------------"


# Show top 5 processes using CPU
echo "##############################"
echo "Top 5 CPU-consuming processes:"
echo "##############################"
echo ""
ps -eo pid,comm,%cpu --sort=-%cpu | head -6
echo ""
echo "----------------------------------------------------------------------"


# Show top 5 processes using memory
echo "#################################"
echo "Top 5 memory-consuming processes:"
echo "#################################"
echo ""
ps -eo pid,comm,%mem --sort=-%mem | head -6
echo ""
echo "----------------------------------------------------------------------"


# Show basic system info
echo "###################"
echo "System Information:"
echo "###################"
echo ""
uname -a
echo ""
echo "Uptime:" $(uptime -p)
echo ""
echo "Currently logged-in users:" $(who | wc -l)
echo ""
