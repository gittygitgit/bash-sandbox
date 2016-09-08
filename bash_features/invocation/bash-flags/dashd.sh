#!/bin/bash -D

<< DOC
  -D simply outputs a list of double quoted strings preceded by $.

  Useful doesn't execute any commands.
DOC


x="1"
y=2
echo $"x"

echo "${x}"


echo "hello"
