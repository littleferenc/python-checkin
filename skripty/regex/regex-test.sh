#!/usr/bin/env bash

test -f text || {
  echo "file text no found, exitting..."
  exit 0

}

input="$(cat text)"

# zmena malych pismen na velke
echo "----zmena malych pismen na velke----"
echo "$input" | tr "[:lower:]" "[:upper:]"
echo

# zmena medzier a entrov
echo "----zmena medzier a entrov----"
echo "$input" | tr "[:space:]" "_"
echo

# anonymizacia cisel
echo
echo "----anonymizacia cisel----"
echo "$input" | tr "[:digit:]" "*"
echo

echo "----anonymizacia veku studentov - hardcoded----"
echo "$input" | sed "s/student a ma [[:digit:]]/*/g"
echo
echo "----anonymizacia veku studentov - . = akykolvek znak----"
echo "$input" | sed "s/student......[[:digit:]]/*/g"
