#!/usr/bin/env sh
echo -n "Type enter"
read -n 1 inp

if [ "$inp" == "" ]; then
  echo "Heard enter!"
else
  echo "Heard something else [entered=$inp]"
fi
