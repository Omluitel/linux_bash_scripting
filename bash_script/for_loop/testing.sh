#!/bin/bash

# Loop through each .txt file in the specified directory
for file in /home/om/projects/for_loop/*.txt
do
    # Compress the file using tar
    tar -czvf "$file.tar.gz" "$file"
done
