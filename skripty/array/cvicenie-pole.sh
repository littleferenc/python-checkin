#!/usr/bin/env bash

# zistite vsetkych lokalnych userov na tomto stroji a ulozte ich do pola users
# /etc/passwrd alebo /etc/shadow - zdroj dat pre userov

# vytvorte subor s 2 stlpcami kde prvy stlpec je meno uzivatela a druhy stlpec je jeho ID
# id meno

#cat /etc/passwd | grep \home | awk -F: '{print $1}'

users= ($(cat /etc/passwd | awk -F: '{print $1}'))

# id mpapaj | awk -F= 'print $2' | grep -E [[:digit:]]

# paste a b
