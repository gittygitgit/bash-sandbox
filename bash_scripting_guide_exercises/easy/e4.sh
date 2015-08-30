#!/usr/bin/env sh

echo $#
if (( $# == 0 )); then
  echo "Filename required."
  exit 1
fi

fname=$1
echo "Processing file [name=$fname]"

if [ ! -f $fname ]; then
  echo "Can't find file [file=$fname]"
  exit 2
fi

while read line; do
  echo $line
  echo
done  < $fname

