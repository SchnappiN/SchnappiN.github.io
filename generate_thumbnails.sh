#!/bin/bash

# Check if the directory path argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 directory_path"
    exit 1
fi

# Set the directory path
dir_path="$1"

# Find all WebP files in the directory and its subdirectories
find "$dir_path" -type f -name "*.webp" -print0 | while read -d $'\0' webp_file; do
    # Get the file name and directory path of the WebP file
    file_name=$(basename "$webp_file")
    dir_name=$(dirname "$webp_file")

    # Create the thumbnail file path
    thumbnail_path="${dir_name}/${file_name%.*}_thumbnail.webp"

    # Create the thumbnail file using Imagemagick
    convert "$webp_file" -thumbnail "256x256>" -quality 85 "$thumbnail_path"
    echo "Created thumbnail for $webp_file at $thumbnail_path"
done

