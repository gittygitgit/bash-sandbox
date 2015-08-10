#!/bin/sh

# read contents of a file

while read; do
  line=$REPLY
  echo $line
done < text.txt
