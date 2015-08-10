#!/bin/bashz
<<foo
operators used to compare strings are different from those used to compare numbers
foo

# test for empty string
foo=""

[ -z $foo ] && echo "foo is empty"

foo="x"

[ -z $foo ] && echo "foo is empty" # nothing output here

[ -n "$foo" ] && echo "foo is not empty"

