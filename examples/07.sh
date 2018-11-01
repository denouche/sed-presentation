#!/bin/bash

# 1/ GOTO
# :foo  # define a foo label
# b foo # goto foo (branch to foo)

echo "1
2
3
4
5" | \
\
sed -r '
N   # append next line to pattern space
s/\n/,/g # replace \n by ,
'

