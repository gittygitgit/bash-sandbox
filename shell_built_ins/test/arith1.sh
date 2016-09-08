#!/bin/sh

# (()) is used to evaluate arithmetic expressions.  If the
# result of the expression is non-zero, the expression 
# construct returns 0, or true.

(( 0 ))
echo "The exit status of \"(( 0 ))\" is $?"  # 1 false

(( 1 ))
echo "The exit status of \"(( 1 ))\" is $?"  # 0 true

(( 1 > 0 ))
echo "The exit status of \"(( 1 > 0 ))\" is $?"  # 0 true


# used in if tests
if (( 1 > 0 )); then 
  echo "true"
fi

# using variables, note no $
a=5
b=4

if (( a > b )); then
  echo "true"
fi

foo=1
 (( foo++ ))  # notice there's no need to dereference foo using $

echo $foo # outputs 2
