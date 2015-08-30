#!/usr/bin/env sh

echo -n "Enter a number: "
read num

echo "Checking for prime [number=$num]..."

i=2

while (( $i < $num )); do
  result=`expr $num % $i` 
  if [ $result -eq 0 ]; then
    echo "Not prime"
    exit 1
  fi
  (( i++ ))
done

echo "prime"

