#!/bin/bash
<<============================================
two methods of going this: 1) backticks and 2) brace expansion

brace expansion has the advantage of supporting nesting.

backticks have the advantage of readibility
============================================

ls=$(ls -ltra)
echo "$ls"
