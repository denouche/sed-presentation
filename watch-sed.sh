#!/bin/bash

while read line
do
    if [[ $line =~ \.swp$ ]]
    then
        continue
    fi

    clear
    echo "$ $line"
    echo
    sleep 0.150
    $line
done < <(inotifywait -m --format '%w%f' -e MODIFY ./examples)

