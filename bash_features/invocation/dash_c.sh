#!/bin/bash

# -c Executes the subsequent string.
# non option parameters are assigned to positional paramaters starting
# at $0.

bash -c 'echo $0; echo $1' abc def


