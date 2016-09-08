#!/bin/bash

# Positional parameters are non-name parameters (not variables).

# Denoted by a number other than 0

# May be reassigned using the set command

# May be unassigned using the unset or shift commands.

# Both scripts and functions can have positional parms.

<< DOC
When a function is invoked, the positional parameters are temporarily replaced 
with the parameters passed to the function.
DOC


foo() {
  # How many parms are there?
  echo ${!#}

  # Print parameters
  echo $@

  # Assign to an array variable
  parms=("$@")

  # Another way to determine the number of parms
  echo ${#parms[@]}

  # Print each parameter
  for p in ${parms[@]}; do
    echo $p
  done  

  # Another way to print parameters
 
}

foo 1 2

