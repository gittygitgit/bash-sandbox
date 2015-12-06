#/bin/bash

<<=============================================
Read can process multiline here documents using $'' syntax
=============================================

while read line; do
  echo $line
done <<< $'this is the first line\nand this is the second line.\nNow the thirdline...\nand the final line ends here!'

