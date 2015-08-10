#!/bin/sh

IFS=:

:<<FOO
Setting ifs to colon causes read to parse lines using : as
a field delimiter.  Whitespace is the default delimiter.

Fields are created based on the number of variables being read into.
If read contains targets 1 variable but there are 5 fields, all fields
will be inserted into the one variable.
FOO 


while read a b; do
  echo $b
done < /etc/passwd


