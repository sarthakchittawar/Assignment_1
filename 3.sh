#!/bin/bash

echo -n "Enter the file name: "
read file

echo

filesize=$(stat -c%s "$file")

echo "Size of $file = $filesize bytes" 

echo

echo -n "Number of lines in $file = "
wc -l $file | awk '{print $1}'

echo

echo -n "Number of words in $file = "
wc -w $file | awk '{print $1}'

echo

no=1
while read line;
do
    read -a str <<< "$line"
    echo -n "Line No: $no - Count of Words: "
    wc -w <<< "$line"
    ((no=no+1))
done < quotes.txt

echo

cp $file temp.txt

sed -i "s/ /\n/g" $file

sort $file | uniq -c | sort -nr | while read count name
do
    if [ ${count} -gt 1 ]
    then
        echo "Word: ${name} - Count of repetition: ${count}"
    fi
done

mv temp.txt $file