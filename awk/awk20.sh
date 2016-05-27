#!/bin/bash

<< ====================
A line can match multiple patterns.
====================

awk '
  /^[0-9]/ {
    print "line starts w/ a number"
  }

  /^.*$/ {
    print "a line"
  }
' << DOC
1row one\n
another row\n
DOC
