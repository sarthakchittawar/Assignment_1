#!/bin/bash

IFS=','
echo -n "Enter Input: "
read -a input

flag=0
count=0
while flag==1;
do
    array[$count]=${input[$count]}
    ((count=count+1))

    if test -z ${input[$count]}
    then
        break
    fi
done

for ((i=0; i<$count; i++))
do
    for ((j=0; j<$count-i-1; j++))
    do
        if [ ${array[j]} -gt ${array[$((j+1))]} ]
        then
            temp=${array[j]}
            array[$j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
        fi
    done
done
echo "Sorted Output: ${array[*]}"




