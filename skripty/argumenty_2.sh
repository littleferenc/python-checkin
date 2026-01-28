#!/usr/bin/env bash

set -e
set -u

#$1=${1:-}
argument=${1:-default_value}

# na set -e potrebujeme OR TRUE
# na set -u pomocou DEFAULT VALUE

# best practice bolo aj xko pred argumentami

test "x$argument" == "xhodnota1" && {
  echo "Zadal si argument hodnota1"
  command_ktory_neexistuje || true
  "hodnota1" || true
} || {
  echo "$argument"
}

echo "Posledny riadok skriptu."
