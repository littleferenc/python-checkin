#!/bin/bash

cd ..

git add zmeny.txt

git add --all

git commit -m "Automaticka zmena $(date '+%Y-%m-%d %H:%M:%S')"

git push origin script

echo "Zmeny boli commitnute a pushnute"
