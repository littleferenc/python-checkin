#!/usr/bin/env bash

# vytvorenie pola
pole=(jablko hruska slivka)

# volanie urciteho elementu pola
echo "${pole[0]}"

# volanie celeho pola
echo "${pole[@]}"
#echo "${pole[*]}"

# zadefinovanie hodnoty na indexe x
pole[3]="banan"

echo "${pole[@]}"

# vypis velkosti pola

echo "${#pole[@]}"

# zapis noveho elementu cez prepocitany index
index_noveho_elementu="${#pole[@]}"
pole[$index_noveho_elementu]="ananas"
#pole[${#pole[@]}]="ananas"

echo "${pole[@]}"

# pridanie elementu do pola bez znalosti indexu/velkosti pola
pole+=("hruska")

echo "${pole[@]}"
