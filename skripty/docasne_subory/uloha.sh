#!/usr/bin/env bash

set -e

domaca="$(mktemp -d domaca_uloha.XXXXXX)"
mena="$(mktemp "$domaca/mena.XXXXXX")"
vek="$(mktemp "$domaca/vek.XXXXXX")"

#function upratovanie() {
#  rm -r -f "$domaca"

#}

#trap upratovanie EXIT
#trap upratovanie ERR

echo -e "Jana\nPeter\nMarek\nLucia" > "$mena"
echo -e "21\n19\n22\n20" > "$vek"

kategorizacia="$(mktemp "$domaca/vekova_kategorizacia.XXXXXX")"
paste "$mena" "$vek" > "$kategorizacia"

echo
echo "Cesta ku vekovej kategorizacii: $(realpath "$kategorizacia")"

echo
profesie="$(mktemp "$domaca/professions.XXXXXX")"
echo -e "ucitelka\nstudent\nbarman\ncasnicka" > "$profesie"

echo
pocet_studentov="$(grep -c "student" "$profesie")"
echo "Pocet studentov: "$pocet_studentov""

echo
echo "Vytvorene subory: "
ls -l "$mena" "$vek" "$kategorizacia" "$profesie"
