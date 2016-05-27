#!/bin/bash

# simple example
cat << DOC
one
two
three four
DOC

# suppress leading tabs
cat <<-DOC2
    one
  two
three four
DOC2
