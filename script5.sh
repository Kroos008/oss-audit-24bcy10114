#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Name: Krishna Singh
# Reg No: 24BCY10114

echo "======================================="
echo " Open Source Manifesto — Krishna Singh"
echo " Reg No: 24BCY10114"
echo "======================================="
echo ""

read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "" > $OUTPUT
echo "On $DATE, I, Krishna Singh (24BCY10114), believe that open source is about $FREEDOM." >> $OUTPUT
echo "I regularly use $TOOL, which shows the power of shared knowledge." >> $OUTPUT
echo "In the future, I would like to build $BUILD and share it freely with others." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
