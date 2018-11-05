#!/bin/bash

# 1/ Multiple lines

echo "1
2" | \
\
sed -r '
s/\n/,/g # replace \n by ,
'

# eog sed_processing.png

