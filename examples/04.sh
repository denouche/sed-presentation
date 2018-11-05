#!/bin/bash

# 1/ Conditions on line numbers
# 2/ Conditions on patterns
# 3/ Negation
# 4/ Blocs
# 5/ Last line

echo "1
2 foo
3 #Movember
4
5 foo" | \
\
sed '2d'

