#!/usr/bin/env sh
# functions can take positional parms
function foo() {
  echo $1
  return 40
}

foo "test"


# functions can return values via exit values
foo "bar"
echo $?


