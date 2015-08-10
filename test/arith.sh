#!/bin/bash

# fail to compare strings... -eq requires integer operands
# [ 'abc' -eq 'def' ] && echo "here" # fails

foo=1
[ $foo -eq 2 ] && echo "same" # nothing output
[ $foo -lt 2 ] && echo "less than"

[ $foo -eq 1 ] && echo "same"




<<foo
A few operands work on both strings and integers
foo
