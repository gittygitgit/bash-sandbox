#!/bin/bash

function foo() {
  # The only way to return a string from a function is via stdout
  echo $1
}

v1="Testing"
# open a subshell and assign stdout to a variable
x=$(foo v1)
if [[ $x == "v1" ]]; then
  echo "returned v1"
fi

x=$(foo $v1)
if [[ $x == "Testing" ]]; then
  echo "returned Testing"
fi
