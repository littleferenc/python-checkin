#!/bin/bash

FILE="../zmeny.txt"

cas_na_masine=$(date | awk '{print $4}' | awk -F ":" '{print $1}')
sk_cas=$(($cas_na_masine - 2))

echo "Zmena vytvorena: $(date | awk '{print $1}') $cas_na_masine" > $FILE
echo "Random hash: $(openssl rand -hex 8)" >> $FILE

echo "Subor zmeny.txt bol vytvoreny/aktualizovany"
