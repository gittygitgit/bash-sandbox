#!/bin/sh

# read contents of a file
<<====================================
If read isn't provided any arguments, the last line read is assigned to 
the variable REPLY.
====================================
while read; do
  line=$REPLY
  echo $line
done < text.txt
