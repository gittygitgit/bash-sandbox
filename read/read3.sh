#!/bin/sh

# read a file into an array

read -r -a words <<< "one two three"

printf "There are %d words in the array" ${#words[@]}

for i in ${words[@]}; do
  echo $i
done
