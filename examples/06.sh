#!/bin/bash

# 1/ Multiple lines
# eog ../sed_processing.png


echo "1
2" | \
\
sed -r '
s/\n/,/g # replace \n by ,
'

