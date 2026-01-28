#!/usr/bin/env bash

cat regex-text

# velke E ako extended regex
echo "grep multiple characters via regex"
cat regex-text | grep [abc]
cat regex-text | sed -E "s/[aei]/X/g"

echo "^ for reverse match" # opak
cat regex-text | grep [^aei]

echo "$ is end of line"
cat regex-text | sed -E "s/$/x/g"

echo "? - element before can occur 0-1 times"
cat regex-text | grep -E pila?
echo "* - element before can occur 0-n times"
cat regex-text | grep -E pila*
echo "+ - element before can occur 1-n times"
cat regex-text | grep -E pila+
