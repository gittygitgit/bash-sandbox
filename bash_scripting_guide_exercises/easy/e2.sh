#!/usr/bin/env sh


# detect os
os="unknown"
os=`uname`

fname="homedir_listing.txt"
ls -R ~ > $fname

if [[ -f $fname ]]; then
  echo "here"
  gzip -k $fname
fi

mount_pt="foo"
echo -n "Enter name of USB device where you want to export the data."
read mount_pt
echo "Device name entered [name=$mount_pt]"

echo -n "Enter USB device and press [ENTER]."
read -n 1 val

if [ "$val" == "" ]; then
  # enter key pressed
  # verify device mounted
  mounted=`df -Hl|awk "/$mount_pt/ {print}"|wc -l`
  if (($mounted)); then
    mount_pt=`df -Hl|awk "/$mount_pt/"'{print $9}'`
    echo "Copying information to USB device [name=$mount_pt]"
    cp "${fname}.gz" $mount_pt
  fi
fi


