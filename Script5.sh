#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe in open source because I use $TOOL daily. Freedom to me means $FREEDOM. I would like to build and share $BUILD with the world so others can learn and grow." > $OUTPUT

echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
