#!/bin/bash
<< FOO
  Arrays can't be directly passed to a function.  They can only
  be passed indirectly either by name, or expanded such that
  all indexed values are passed.
FOO
function foo() {
  echo ${!1}
  echo $*
}

# declare an array
arr=(one two three four)

if [[ ${#arr[@]} == 4 ]]; then
  echo "array has four elements"
fi

# 
foo arr[@]
foo ${arr[@]}
