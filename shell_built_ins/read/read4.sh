#!/bin/sh

# redirect here string into read, treating spaces as record ends

while read -d " "; do echo $REPLY; done <<< "one two three "

