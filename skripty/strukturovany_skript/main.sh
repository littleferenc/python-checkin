#!/usr/bin/env bash

set -e
set -u
#set -x

#aktualna_cesta=$(pwd)
startovacia_cesta="$PWD"
echo "pwd = $startovacia_cesta"

mojacesta="$(realpath "$0")"
mojpriecinok="$(dirname "$mojacesta")"

cd "$mojpriecinok"

#test -d lib || {
#  echo "Warning: Folder lib not loaded!"
#}

#===============================================
# dva sposoby aj cez IFko

#if ! [ -d lib]
#then
#  echo "Warning: Folder lib not loaded!"

#fi

#--------------------------------

#if [ -d lib]
#then
#  :

#else
#  echo "Warning: Folder lib not loaded!"

#fi

# spojene && a ||
test -d lib && {
# v pripade ze nie je folder V
  source lib/* || {
    echo "Warning: Folder lib not loaded!"
  }
} || {
  echo "Warning: Folder lib not loaded!"
}

command -v vaznost_suboru 2>/dev/null >/dev/null&& {
  echo "funkcia vaznost suboru nacitana"
}

command -v calc_chars || echo "calc_chars not loaded"

calc_chars "1234567"

calc_bytes "nejaky nahodny text"


#calc_chars
#calc_bytes
