#!/bin/bash

echo "Spustam make-changes.sh"
./make-changes.sh

echo "Spustam push-changes.sh"
./push-changes.sh

echo "Spustam fetch-changes.sh"
./fetch-changes.sh

echo "Vsetky git akcie prebehli uspesne"
