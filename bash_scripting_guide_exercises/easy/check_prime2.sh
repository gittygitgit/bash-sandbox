#!/usr/bin/env bash
:<<FOO
A better algorithm for checking primality.


FOO
echo -n "Enter a number: "
read num

echo "Checking for prime [number=$num]..."
newnum=$(( num-1 ))

# find smallest number under num that has a square root
i=1
while [ $((i*i)) -lt $newnum ]; do
  (( i++ ))
  if [ $(( $num % $i )) -eq 0 ]; then
    echo "Not a prime."
    exit
  fi
done

echo "Number is a prime."
exit 0
