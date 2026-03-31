#!/bin/bash

echo "Open Source Manifesto Generator"
echo "--------------------------------"

read -p "Enter your favorite open-source tool: " TOOL
read -p "What does freedom mean to you? " FREEDOM
read -p "What would you like to build? " BUILD

FILE="manifesto.txt"

echo "--------------------------------" > $FILE
echo "Open Source Manifesto" >> $FILE
echo "--------------------------------" >> $FILE

echo "I use $TOOL. For me, freedom means $FREEDOM. I would like to build $BUILD and share it with everyone." >> $FILE

echo ""
echo "Manifesto saved in $FILE"
echo ""

cat $FILE
