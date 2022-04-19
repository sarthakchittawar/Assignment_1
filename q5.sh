#!/bin/bash

echo -n "Enter a string: "
read str
echo
i=${#str}

echo -n "Reversed string: "
revv=$(echo $str | rev)
echo $revv
echo
echo -n "Reverse Output w/ subsequent letter: "
for ((j=0; j<$i; j++))
do
    new=$(echo "${revv:$j:1}" | tr "a-zA-Z" "b-zA-Za" | tr "aA" "Aa" )
    echo -n "$new"
done
echo
echo

echo -n "Half-reversed string: "
z=$((i / 2))
echo -n ${str:0:$z} | rev
echo ${str:$z:$z}