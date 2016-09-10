#!/bin/bash

# Redirect output to print nothing
echo "Hello World" 1>/dev/null

# Redirect input to read a file
read foo < test.txt
echo $foo
unset foo

# redirect operators can occur anywhere in a command
read <test.txt foo
echo $foo

# Redirect a string to std-input of a command
cat <<< "Hello world"

