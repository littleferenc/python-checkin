#!/usr/bin/env bash

meno="$1"
#meno="Peter"

if [ "$meno" == "Peter" ]; then  # niekedy treba dat dvojite zatvorky -- [[ podmienka ]]
    # commands if true
    echo "Meno je Peter."

elif [ "$meno" == "Jano" ]; then
    echo "Meno je Jano."

else    # commands if false
    echo "Meno nie je Peter ani Jano."
fi
