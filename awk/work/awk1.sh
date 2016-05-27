#!/bin/bash

time=$1
printf 'Searching for time: %s\n' $time
awk '
  BEGIN {
    # 1 is false
    isStartedDate=1
    print isStartedDate
    pollTime=0
  }
  /DUMP START/ {
    getline;
    pollTime=$0
    printf "=========================== %s==============================\n", pollTime
  }
  /^\"/ {
    print $0
  }
  /DUMP END/ {
    print "=============================================================\n"
  }

' threads.log.8 | sort
