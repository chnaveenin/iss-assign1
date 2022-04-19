#!/bin/bash

file=$1

touch tempfile.txt
tmpfile="tempfile.txt"

grep . $file > $tmpfile
awk '!freq[$0]++' $tmpfile

rm $tmpfile