#!/bin/sh

:<< FOO
shift deals with positional arguments to a script.
FOO

# print the number of args to this script
echo $#

# check if any args are passed
args_passed=false
if (($#)); then
  echo "Arguments passed: [num=$#]"

  while (($#)); do
    shift
    echo "Remaining arguments: [num=$#]"
  done
fi


