#!/bin/bash

while read line;
do
    IFS='~'
    read -a strarr <<< "$line"

    if test -z "$line"
    then
        echo "$line" >> speech.txt
    else
        echo "${strarr[1]} once said, ${strarr[0]}." >> speech.txt
    fi
done < quotes.txt