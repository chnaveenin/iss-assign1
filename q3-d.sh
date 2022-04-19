#!/bin/bash

file=$1

touch "tempfile.txt"
tempfile=tempfile.txt

i=1

while read line
do
    echo $line > $tempfile
    printf "Line No. $i - Count of words: "
    cat $tempfile | wc -w | awk '{print $1}'
    let $((i++))
done < $file

rm $tempfile