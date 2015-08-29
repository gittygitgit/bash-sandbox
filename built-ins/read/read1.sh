#!/bin/sh

# read a line into fields

while read v1 v2; do
  echo $v1
  echo $v2 # two and three get assigned to last var
done <<< "one two three"

