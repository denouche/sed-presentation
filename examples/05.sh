#!/bin/bash

# 1/ Advanced substitution using regexp
# "1234";"http://1234.jpg"
# "2345";"http://2345.jpg"
# "3456";"http://3456.jpg"

echo "1234.jpg
2345.jpg
3456.jpg" | \
\
sed -r 's/[0-9]+\.jpg/xxx/'
