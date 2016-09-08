#!/bin/bash

# By default, tests only that a parameter is unset.

# If a colon is included, it also tests that the parameter is not null

# Without the colon...
foo=
word="hello"
# Doesn't substitute word
echo ${foo-word}


# With the colon...does substitute word
echo #{foo:-word}


# Here, we'll expand word instead of parm since parm is null
echo ${parm:-word}
# parm is still null
echo ${parm}
if [ ! $parm ]; then
  echo "parm is unset"
fi


# Here, we assign word to parm and then expand parm
echo ${parm:=word}
if [ -n $parm ]; then
  echo "parm is not null"
fi
echo $word
# We only substitute word if bar has a value assigned 
echo ${bar:+word}

bar=
abc="123"
echo ${bar:+abc}

