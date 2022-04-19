#!/bin/bash

file=$1

printf "Total number of lines in the file: "
wc -l < $file | awk '{print $1}'