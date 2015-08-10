#!/bin/sh

# double parens ((...)) is used to perform arithmetic expansion and evaluation
# bad...
echo 23 - 3

# ...good
echo $(( 23 - 3 ))


# [ ] is another way of performing arithmetic evaluation

