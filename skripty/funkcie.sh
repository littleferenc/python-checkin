#!/usr/bin/env bash

premenna="hodnota1"

function moja_funkcia() {
  echo "toto je moja funkcia"
  echo "prvy argument funkcie je $1"
  local lokalna_premenna="lokalna_hodnota"
  echo "$lokalna_premenna volana z vnutra funkcie"
}

moja_funkcia "prvy_argument"

test -z "$premenna" && {
  echo "premenna 'premenna' nie je definovana"
}

test -z "$lokalna_premenna" && {
  echo "premenna 'lokalna_premenna' nie je definovana"
}
