#!/bin/bash

# By referencing, we mean targeting a descriptor.

# Reference stderr as the redirect target of stdout.
echo "hello world" 1>&2

