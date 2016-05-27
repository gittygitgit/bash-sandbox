#!/bin/bash

awk '
  function foo(datestr) {
    mon=substr(datestr,0,2)
    day=substr(datestr,4,2)
    yr=substr(datestr,7,4)
    h=substr(datestr,12,2)
    m=substr(datestr,15,2)
    s=substr(datestr,18,2)
    ampm=substr(datestr,21,2)

    if (ampm == "PM" && h < 12)
      h += 12

    return mktime(yr " " mon " " day " " h " " m " " s);
  }
  BEGIN {
    #04/24/2016 04:06:52 AM
    print foo("04/24/2016 04:06:52 PM")
    #datestr="04/24/2016 04:06:52 AM"
    datestr="04/24/2016 04:06:52 PM"


  }
'
