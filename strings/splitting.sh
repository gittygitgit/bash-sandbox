#!/bin/bash

. ../_includes/sandboxfn.sh

s="once upon a time"

# split into an array based on standard IFS
a=($s)

# and the len of a is...
echo ${#a[@]}
if [ 4 -ne ${#a[@]} ]; then
  exit 1
fi

