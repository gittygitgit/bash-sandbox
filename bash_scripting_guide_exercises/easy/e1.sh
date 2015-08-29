#!/bin/sh

echo $0

fname=`basename $0`
target="backup.sh"
echo "Backing up file: [source=${fname}, target=${target}]"
cat $fname > $target

