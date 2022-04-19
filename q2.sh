#!/bin/bash

file=$1

touch speech.txt

> speech.txt

while read line
do
    echo $line | awk 'BEGIN {FS="~"} {printf "%s once said, \"%s\"\n", $2, $1}' >> speech.txt
done < $file