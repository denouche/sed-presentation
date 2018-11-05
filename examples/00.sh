#!/bin/bash

man sed | sed -r -n '/NAME/{
    p
    n
    s/^(\s+)(sed) - /\1\2\n\n\1/
    p
    r bio.txt
}'

