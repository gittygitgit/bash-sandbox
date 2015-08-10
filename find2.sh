#!/bin/sh

# Performing actions on find results

# setup
touch -m -t 200901011212 ./foo.txt


# run ls on files in home dir
find ~ -exec ls -ltra {} \;




