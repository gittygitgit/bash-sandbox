#!/usr/bin/env bash

# redirect stdout to file
echo "here" > foo.txt

# 1 is the standard file descriptor for output, so following is same as >
echo "here2" 1> foo1.txt

# redirect stderr
grep 234234 23423 2> error.txt

# redirect stdout and stderr to file
echo "hello" &> any.txt
grep 234234 2342 &> any1.txt

# redirect stdout and stderr to file, another way
grep 234324 234 > rd.txt 2>&1

# suppress stdout
echo "here234" > /dev/null
echo "here234"
grep 234423 4234 2> /dev/null
echo "here2222" &> /dev/null

# redirect contents of file into std in of command
cat < input.txt
# here string
cat <<< "one two three"
# here doc

cat << EOF
one
two
three
EOF
