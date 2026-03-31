#!/bin/bash
# Script 1: System Identity Report
# Name: Krishna Singh
# Reg No: 24BCY10114

echo "======================================="
echo " System Identity Report — Krishna Singh"
echo " Reg No: 24BCY10114"
echo "======================================="

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

echo ""
echo "Distro          : $DISTRO"
echo "Kernel          : $KERNEL"
echo "User            : $USER_NAME"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo "License         : GPL (Free and Open Source)"
