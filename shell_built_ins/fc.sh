#!/bin/sh

:<<----------------------------
----------------------------
# list recent commands
fc -l

# edit commands from history, then rerun
# note, when editor opens, you can clear the content to avoid running anything.
fc 1161 1163

# edit commands from history, the oldest first
fc -r 1161 1163

# edit / rerun last command starting with ls
fc ls

# edit / rerun oldest comman starting with ls
fc -r ls

# rerun last command
fc -s 

# rerun nth command
fc -s 1160

# rerun last command starting with string
fc -s ls

