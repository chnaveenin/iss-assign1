#!/bin/bash

echo -n "Enter the size of input numbers: "
read size
echo "Enter numbers: "

for ((i=0;i<$size;i++))
do
    read numbers[$i]
done

for ((i=0;i<$size;i++))
do
    swapcount=0
    for ((j=0;j<$size-$i-1;j++))
    do
        if [[ ${numbers[$j]} -gt ${numbers[$((j+1))]} ]]
        then
            temp=${numbers[$((j+1))]}
            numbers[$((j+1))]=${numbers[$j]}
            numbers[$j]=$temp  
            let $((swapcount++))
        fi
    done
    if [[ $swapcount -eq 0 ]]
    then
        break
    fi
done

echo ${numbers[*]}