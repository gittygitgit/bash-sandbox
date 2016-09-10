#!/bin/bash

# Associate file descriptor #6 with stdin
# This means descriptor 6 is the handle that accepts input from the terminal now.
exec 6<&0

# Associate descriptor 0 with a file
exec < test.txt

# By default, read command takes input from stdin (file descriptor 0)
read a1
if [[ $a1 == "one" ]]; then
  echo "read 'one' from the file"
fi

read a2
if [[ $a2 == "two" ]]; then
  echo "read 'two' from the file"
fi

# now free up descriptor 6, and restore descriptor 0 to the terminal
exec 0<&6 6<&-

read -p "enter something" foo
echo $foo

