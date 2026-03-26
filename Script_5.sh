#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: ADITYA AMAN | Course: Open Source Software | Reg No. : 24BAI10129

echo "Answer three questions to generate your manifesto."
echo ""
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"
# TODO: Compose a paragraph using $TOOL, $FREEDOM, $BUILD
# and write it to $OUTPUT using echo and >>
echo "Open Source Manifesto - $DATE" > $OUTPUT
echo "----------------------------------------" >> $OUTPUT
echo "" >> $OUTPUT
echo "I, $(whoami), believe that OSS (Open source software) is the foundation of a free and collaborative digital world." >> $OUTPUT
echo "Every day, I rely on $TOOL, which become my essential part of by day to day activity." >> $OUTPUT
echo "To me, freedom means $FREEDOM : The absence of interference from the authority." >> $OUTPUT
echo "If I could build something to give back, I would create $BUILD and release it freely," >> $OUTPUT
echo "so that others can use it, improve it, and pass it forward." >> $OUTPUT
echo "" >> $OUTPUT
echo "Signed," >> $OUTPUT
echo "$(whoami)" >> $OUTPUT
echo "$DATE" >> $OUTPUT
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT