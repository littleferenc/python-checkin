#!/usr/bin/env bash

items="apple banana cherry"



#for item in "$items"; do
#    echo "Fruit: $item"
#done


for ((i=1; i<=10; i++)); do
    test $i -eq 2 && continue
    test $i -eq 8 && break
    echo "Counter: $i"
done

