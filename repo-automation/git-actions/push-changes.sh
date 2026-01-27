#!/bin/bash

cas_na_masine=$(date | awk '{print $4}' | awk -F ":" '{print $1}')
sk_cas=$(($cas_na_masine - 2))

cd ..

git add zmeny.txt

git add --all
 
git commit -m "Automaticka zmena ku dnu: $(date)"

git push origin script

echo "Zmeny boli commitnute a pushnute"
