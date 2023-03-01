#!/bin/bash

# Check if the directory path argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 directory_path"
    exit 1
fi

# Set the directory path
dir_path="$1"

# Find all JPG files in the directory and its subdirectories
find "$dir_path" -type f \( -iname "*.jpg" -o -iname "*.png" \) -print0 | while read -d $'\0' jpg_file; do
    # Check if a corresponding WebP file exists
    webp_file="${jpg_file%.*}.webp"
    if [ ! -f "$webp_file" ]; then
        # Convert the JPG file to WebP using Imagemagick
        convert "$jpg_file" -quality 85 "$webp_file"
        echo "Converted $jpg_file to $webp_file"
    else
        echo "$webp_file already exists"
    fi
done

