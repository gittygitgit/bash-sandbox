#!/bin/bash

function foo() {
  return $#
}

foo 1 2 3 4

if [[ $? == 4 ]]; then
  echo "foo returned 4"
fi
