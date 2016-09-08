#!/bin/sh
for i in 1 2 3 4
do
	echo $i
done

for (( i = 1; i < 100; i++ )); do echo $i; done


for i in `ls`; do echo $i; done

