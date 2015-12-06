#!/bin/bash
<<======
operators used to compare strings are different from those used to compare numbers

When testing strings, always quote the string being tested.
======


<<======
Checking for null string

"" is considered the null string

Undefined variables also resolve to the null string
======
[ "    " ] && echo "\"    \" is not considered null"

# "" is also called the null string
[ "" ] || echo "this is the null string"

[ "" ] && echo "This wont print since is the null string"

[ "$abc" ] || echo "abc is not defined"


<<======
Checking for empty string

A string filled with spaces is considered empty

undefined variables resolve to empty strings
======

[ -z "$sss" ] && echo "Undefined variables are considered empty"

[ -z "$foo" ] && echo "empty"
foo=""
[ -z "$foo" ] && echo "foo is empty"

foo="x"

[ -z "$foo" ] && echo "foo is empty" # nothing output here


<<======
-n tests for non-zero-length string
======
[ -n "$foo" ] && echo "foo is not empty"
bar=""
[ -n "$bar" ] && echo "here" # outputs here 

[ -n "$bar" ] && echo "here" # outputs nothing since this is a string comparison and the string is empty

<<======
string equality
======
foo="abc"
bar="abc"
[ "$foo" = "$bar" ] && echo "foo and bar are equal"   
