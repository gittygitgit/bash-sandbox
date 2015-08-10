#!/bin/sh

printf -v foo "Assigning a string to foo, with subs %s and %s" 1 2

echo $foo
