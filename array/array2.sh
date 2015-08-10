#!/bin/sh

arr=(123 "sdfsfds" 2323 "2dfds")

echo "There are ${#arr[@]} elements in arr"
echo "arr[0]=${arr[0]}"


for (( i=0; i < ${#arr[@]}; i++ ))
do
       echo "[array-name=arr, index=$i, value=${arr[$i]}]"
done 	

# print all elements at once
echo ${arr[*]}

# another way to print all els at once
echo ${arr[@]}
