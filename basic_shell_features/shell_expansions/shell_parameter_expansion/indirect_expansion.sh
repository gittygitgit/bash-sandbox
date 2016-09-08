#!/bin/bash
export xyzzy=plugh ; export plugh=cave

echo ${xyzzy}  # normal, xyzzy to plugh

echo ${!xyzzy} # indirection, xyzzy to plugh to cave
