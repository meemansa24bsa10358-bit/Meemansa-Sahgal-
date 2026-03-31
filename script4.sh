#!/bin/bash

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

echo "Analyzing file: $LOGFILE"
echo "Keyword: $KEYWORD"
echo "--------------------------"

if [ ! -f "$LOGFILE" ]; then
    echo "File not found!"
    exit 1
fi

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Keyword '$KEYWORD' found $COUNT times."
