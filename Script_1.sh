#!/bin/bash
# Script 1: System Identity Report
# Author: ADITYA AMAN | Course: Open Source Software | Reg No. : 24BAI10129

# --- Variables ---
STUDENT_NAME="ADITYA AMAN" 
SOFTWARE_CHOICE="FIREFOX"
# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Kernel : $KERNEL"
echo "User : $USER_NAME"
echo "Uptime : $UPTIME"
# TODO: Add distro name, date, and license message
DISTRO_NAME="UBUNTU"
DATE="26th March, 2026"
LICENSE_MESSAGE="This comes under MPL copyleft, Same as Firefox"
echo "DISTRO : $DISTRO_NAME"
echo "DATE : $DATE"
echo "LICENCE MESSAGE \"$LICENSE_MESSAGE\""