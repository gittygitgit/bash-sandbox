#!/bin/bash

<<=============

=============

awk '
  BEGIN {
    FS=","
  }
  {print $1}
' <<DOC
1,2,3,4
4,5,6,7
DOC