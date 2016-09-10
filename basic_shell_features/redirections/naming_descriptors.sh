#!/bin/bash

<< DOC
Naming a descriptor refers to how you refer to a descriptor for the purpose
of, for instance, redirecting it.
DOC

# When redirecting a descriptor, we just use a number.
cat test.txt 1> ./test.out

