#!/bin/sh
echo "Running setup..."

FILE=foo.out

rm -f $FILE
touch $FILE
chmod +xwr $FILE

echo "...setup complete."
