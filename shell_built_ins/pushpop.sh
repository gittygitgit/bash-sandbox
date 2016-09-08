#!/bin/sh

# store current directory
pushd .

# go to home dir
cd ~

# go to /etc
cd /etc

# return to original directory
popd

# Add entry to dirs without actually changing directories
pushd -n ~/Desktop

# print directory stack
dirs


