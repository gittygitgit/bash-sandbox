#!/bin/sh
<<====================================================
arrays 

====================================================

<<====================================================
Arrays can be created in a few different ways
====================================================
# manually assigning values to variable indicees
animals[0]="cow"
animals[1]="chicken"
animals[2]="duck"

# using compound assignment
planes=(bomber biplane jet)

<<====================================================
De-referencing array values
====================================================
# Failure to provide an array index defaults to referencing the first el of an array
echo $animals # Prints cow

# Use curly braces to de-reference array indices
echo ${animals[1]} # Prints chicken
[ ${animals[1]} = "chicken" ] && echo "Referenced the el containing chicken"

# Use of @ or * as an index prints out all the array's values
echo ${animals[@]}

<<====================================================
Deleting arrays and array values
====================================================
# TODO

<<====================================================
Other information
====================================================
# length

echo ${#animals} # prints 3

for i in ${animals[@]}; do
  echo $i
done

export animals 
