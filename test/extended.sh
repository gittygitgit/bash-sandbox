#!/bin/bash

<<=======================================
extended tests include a variety of bash only functionality.

Supports =~ regex comparison
=======================================
regex="([o]).*([e])"

while read string; do
[[ "$string" =~ $regex ]]
echo "$string"
echo "${BASH_REMATCH[1]}"
echo "${BASH_REMATCH[2]}"
done <<< '
one
two
three
'
