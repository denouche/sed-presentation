#!/bin/bash

# 1/ Conditions on line numbers
# 2/ Conditions on patterns
# 3/ Negation
# 4/ Blocs

echo "1
2 foo
3 #Movember
4 foo
5" | \
\
sed '2d'

