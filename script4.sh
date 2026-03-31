#!/bin/bash
# Script 4: Log File Analyzer
# Name: Krishna Singh
# Reg No: 24BCY10114

echo "======================================="
echo " Log File Analyzer — Krishna Singh"
echo " Reg No: 24BCY10114"
echo "======================================="

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found."
    exit 1
fi

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
