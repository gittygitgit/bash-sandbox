#!/bin/sh
while read i; do
  echo $i;
done <<< $'1\n2\n3\n4\n'
