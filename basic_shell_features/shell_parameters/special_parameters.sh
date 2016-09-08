#!/bin/bash

# *
# Resolves to the positional parameters

# set the positional parameters
set -- one two three

# prints one two three
echo $*

# As an array
pp=($*)
if [ ${#pp[@]} -eq 3 ]; then
  echo "three parms"
fi

# @
# Almost same as *, except when quoting.

# $
# Expands to the pid of the shell
echo $$

# 0
<< EOF
Expands to the name of the shell when expanded in an interactive shell, or
script in a script.
EOF
name=$(basename $0)
[[ $name == "special_parameters.sh" ]] && echo "filename is special_parameters.sh"

