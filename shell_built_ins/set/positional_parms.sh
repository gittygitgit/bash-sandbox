#!/bin/bash
# Assume no args passed to this script.
echo $#

set -- one two


echo $#

if [[ $# -eq 2 ]]; then
  echo "Set two positional parms"
fi

if [[ $1 == one ]]; then
  echo "First pos parm set to one"
fi

if [[ $2 == two ]]; then
  echo "Second pos parm set to two"
fi

