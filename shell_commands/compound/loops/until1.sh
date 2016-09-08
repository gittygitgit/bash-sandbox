#!/usr/bin/env sh

MAX=10
i=0

until (( $i == $MAX )); do
  echo $i
  (( i++ ))
done
