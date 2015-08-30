#!/usr/bin/env sh
# See Converting for loops to while and until loops in http://tldp.org/LDP/abs/html/writingscripts.html

# Listing the planets.
planets="Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto"

planets_array=($planets)

i=0

while (( i < ${#planets_array} )); do
  echo ${planets_array[$i]}
  (( i++ ))
done

i=0

until (( i == ${#planets_array} )); do
  echo ${planets_array[$i]}
  (( i++ ))
done

exit 0
