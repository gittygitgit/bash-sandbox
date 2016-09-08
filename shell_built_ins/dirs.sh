#!/bin/sh

# list current directory stack
dirs

# Add an entry to the stack without changing directories
pushd -n /etc

# list directory stack, using long paths
dirs -l 

# list directory stach, using long paths, each entry on a separate line, the stack position included
dirs -l -v

# list directory stach, using long paths, each entry on a separate line, the stack position excluded
dirs -l -p

# clear directory stack
dirs -c

# Add a few paths
pushd -n /bin
pushd -n /opt
pushd -n /var

# Display the first stack entry
dirs +0

# Display the second stack entry
dirs +1

# Display the last stack entry
dirs -0

