#!/bin/sh

foo=

foo[0]=123
foo[1]="mike"
foo[2]=2

echo ${#foo}

for i in ${foo[@]}; do
  echo $i
done

export foo
