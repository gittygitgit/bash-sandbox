#!/bin/sh
. ./setup.sh
# purge a file
echo 'hello there' >> foo.out

ls -l foo.out

echo > foo.out

ls -l foo.out
