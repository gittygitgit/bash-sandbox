#!/bin/bash

awk 'BEGIN {
  print "Current time as num of seconds since epoch = " systime()
}'
