#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: ADITYA AMAN | Course: Open Source Software | Reg No. : 24BAI10129

PACKAGE="firefox" # e.g. httpd, mysql, vlc, firefox
# Check if package is installed
if dpkg -l $PACKAGE &>/dev/null; then
echo "$PACKAGE is installed."
dpkg -s "$PACKAGE" | grep -E 'Version|License|Summary'
else
echo "$PACKAGE is NOT installed."
fi

# philosophy note about the package based on its name
case "$PACKAGE" in
httpd) echo "Apache: the web server that built the open internet" ;;
mysql) echo "MySQL: open source at the heart of millions of apps" ;;
firefox) echo "Firefox: championing an open web for 20+ years" ;;
vlc) echo "VLC: open source media player that plays anything" ;;
gimp) echo "GIMP: free software image editing for everyone" ;;
*) echo "Open source software: freedom to use, study, modify, and share" ;;
esac
#I wrote this code for dpkg (Debian/Ubuntu) based system and not rpm (RHEL/Fedora)