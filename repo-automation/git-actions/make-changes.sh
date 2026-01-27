#!/bin/bash

FILE="../zmeny.txt"

echo "Zmena vytvorena: $(date)" > $FILE
echo "Random hash: $(openssl rand -hex 8)" >> $FILE

echo "Subor zmeny.txt bol vytvoreny/aktualizovany"
