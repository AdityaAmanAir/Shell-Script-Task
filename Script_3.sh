#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: ADITYA AMAN | Course: Open Source Software | Reg No. : 24BAI10129

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "Directory Audit Report"
echo "----------------------"
for DIR in "${DIRS[@]}"; do
if [ -d "$DIR" ]; then
PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
echo "$DIR => Permissions: $PERMS | Size: $SIZE"
else
echo "$DIR does not exist on this system"
fi
done
# TODO: Add a section that checks if your software's
# config directory exists and prints its permissions
echo ""
echo "====================================="
echo "FIREFOX Configuration Directory Check"
echo "====================================="

F_DIRS=("$HOME/.mozilla/firefox" "$HOME/snap/firefox/common/.mozilla/firefox" "$HOME/.config/firefox"  "/etc/firefox")
for i in "${F_DIRS[@]}";do
if [ -d "$i" ]; then
PERMS=$(ls -ld "$i" | awk '{print $1, $3, $4}')
SIZE=$(du -sh "$i" 2>/dev/null | cut -f1)
echo "$i => Permissions: $PERMS | Size: $SIZE"
else
echo "$i does not exit on this System"
fi
done