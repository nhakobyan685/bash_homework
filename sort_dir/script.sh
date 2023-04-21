#!/bin/bash

path="$1"

if [ ! -d "$path" ]; then
    echo "Error: $path is not a directory."
    exit 1
fi

for file in "$path"/*; do
    if [ -d "$file" ]; then
        continue
    fi

    ext="${file##*.}"

    if [ ! -d "$path/$ext" ]; then
        mkdir "$path/$ext"
    fi

    mv "$file" "$path/$ext"
done
