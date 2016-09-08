#!/bin/bash
# indexed arrays are accessed using integers.

# if any variable is assigned based on an index, an indesed array is created
# implicitly
 
a[1]=23
a[30]=1

echo ${#a[@]}
echo ${a[2]}
