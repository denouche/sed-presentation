#!/bin/bash

man sed | sed -r -n '/NAME/{
    p;:loop;n;s/^(\s+)(sed) - /\1\2\n\n\1/;p;/^$/!b loop;r ./bio.txt
}'

