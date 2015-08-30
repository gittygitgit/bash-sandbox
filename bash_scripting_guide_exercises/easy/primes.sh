#!/usr/bin/env sh
# Print (to stdout) all prime numbers between 60000 and 63000. The output should be nicely formatted in columns (hint: use printf).

:<< X
Prime number is divisible by 1 and itself
X

i=60000

function check_prime() {
  num=$1

  newnum=$(( $num-1 ))

  j=1
  while [ $(( j*j )) -lt $newnum ]; do
    (( j++ ))
    if [ $(( $num % $j )) -eq 0 ]; then
      return 1 
    fi
  done 
  return 0 
}

primes=()

while (( $i <= 63000 )); do
  check_prime $i
  if [ $? -eq 0 ]; then
    printf "%d is a prime number\n" $i
  fi
  (( i++ ))
done

