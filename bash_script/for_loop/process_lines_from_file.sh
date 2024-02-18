#!/bin/bash

# Iterate over the lines of a file using 'cat' command
for line in $(cat file.txt)
do
    echo "Line: $line"
done
