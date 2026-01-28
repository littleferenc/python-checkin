#!/usr/bin/env bash
echo "zalomeny \
riadok"

echo
echo "---- seriozna funkcia ----"
echo

# funkcia, ktora urcuje vaznost suboru

function vaznost_suboru() {
  local skore_vaznosti=0
  local nazov_suboru="$1"
  local obsah_suboru="$(cat "$nazov_suboru")"
  echo "$subor" | grep -i -e internal -e confidental > /dev/null 2> /dev/null && {
    skore_vaznosti=$(( $skore_vaznosti + 2 ))
  }

  local pocet_riadkov_suboru="$(echo "$obsah_suboru" | wc -l)"
  skore_vaznosti=$(( $skore_vaznosti + ($pocet_riadkov_suboru / 10 ) ))

 local prava
  prava=$(stat -c "%A" "$nazov_suboru")

# zavaznost na zaklade pristupovych prav --- prerob vypisom z ls -l | awk
  for (( i=1; i<=3; i++ )); do
    segment="${prava:$i*3:3}"

    if [ "${segment:0:1}" == "r" ];
    then
      skore_vaznosti=$(( skore_vaznosti + 1 ))

    fi

    if [ "${segment:1:1}" == "w" ];
    then
      skore_vaznosti=$(( skore_vaznosti + 10 ))

    fi

    if [ "${segment:2:1}" == "x" ];
    then
      skore_vaznosti=$(( skore_vaznosti + 5 ))

    fi

  done

  # output funkcie
  echo "subor: $nazov_suboru"
  echo "vaznost: $skore_vaznosti"
}

echo "spustam vaznost suboru s prvym argumentom skriptu"
vaznost_suboru "$1"
