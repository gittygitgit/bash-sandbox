#!/bin/sh

# double brackets are used in if statements and compound one-liners
if [[ 1 -eq $var ]] ; then
   echo "hi there"
fi
# same thing written another way as a one-liner
[[ 1 -eq $var ]] &&  echo "hi there"

# test if a file exists
[[ -f somefile ]] && echo "found somefile "
