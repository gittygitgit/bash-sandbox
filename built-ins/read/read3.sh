#!/bin/sh
<<=====================================================
read a file into an array
 
read has a variety of arguments
 
-a [aname] tells read to parse a line into sequential indices of an array variable, starting at 0.
====================================================

# parse the string into array words
read -r -a words <<< "one two three"

printf "There are %d words in the array" ${#words[@]}

for i in ${words[@]}; do
  echo $i
done
