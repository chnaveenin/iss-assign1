#!/bin/bash

read string
len=${#string[0]}

for ((i=$len-1;i>=0;i--))
do
    char=${string:$i:1}
    rev_str=$rev_str$char
done

echo "$rev_str"

for ((i=$len-1;i>=0;i--))
do
    char=${string:$i:1}
    char=$(echo "$char" | tr "0-9a-z" "1-9a-z_")
    subseq_str=$subseq_str$char
done

echo "$subseq_str"

read string
len=${#string[0]}

for ((i=($len-1)/2;i>=0;i--))
do
    char=${string:$i:1}
    rev_str_v2=$rev_str_v2$char
done

for ((i=($len)/2;i<$len;i++))
do
    char=${string:$i:1}
    rev_str_v2=$rev_str_v2$char
done

echo "$rev_str_v2"