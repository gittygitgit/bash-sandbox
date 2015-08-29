#!/usr/bin/env sh
:<<foo
checks against expected
foo

echo -n "Enter a number between 1 and 10."
read foo

expected=1

case $foo in
$expected)
  echo "Bingo"
  ;;
*)
  echo "something else"
  ;;
esac


