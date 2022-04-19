#!/bin/bash

file=$1

printf "Size of the file in bytes: "
wc -c < $file | awk '{print $1}'