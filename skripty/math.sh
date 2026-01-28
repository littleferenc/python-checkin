#!/usr/bin/env bash
set -x # debugging mode(ukaze obsah, sam o sebe nepovie)
#set -e # exit on error
set -u # exit on undefined variable

#pocitanie sa odohrava v $(())

echo $(( 1 + 3 ))

echo $(( $RANDOM ))

echo $(( $RANDOM % 5 )) [0 - 4]

echo $(( ($RANDOM % 5) + 1 )) [1 - 6]

#command co neexistuje - set -e ukonci na tomto riadku

#echo "$premenna co neexistuje" - set -u ukonci skript na tomto r

#desatinne
echo "1.6 - 0.2" | bc

echo "posledny riadok skriptu"
