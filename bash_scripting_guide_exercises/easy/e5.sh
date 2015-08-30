#!/usr/bin/env sh
# Write a script that echoes itself to stdout, but backwards.

lines=()
i=0
while read line; do
  lines[$i]=$line
  (( i++ )) 
done < $0

 
i=${#lines[@]}

until (( i == 0 )); do
  echo ${lines[$i]]}
  (( i-- ))
done
