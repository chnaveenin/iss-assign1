#!/bin/bash

file=$1

printf "Total number of words in the file: "
wc -w < $file | awk '{print $1}'