#!/bin/bash

# Get the current working directory
current_dir=$(pwd)

echo "Current directory: $current_dir"
# Define the source and destination directories relative to the current directory
src_dir="${current_dir}/test/screens"
dest_dir="${current_dir}/goldens"

# # Create the destination directory if it does not exist
mkdir -p "$dest_dir"

echo "Copying all .png files from $src_dir to $dest_dir while preserving the directory structure..."
# Copy all .png files while preserving the directory structure
find "$src_dir" -type f -name "*.png" -exec sh -c '
  for file do
    # magic with path replace, dont optimize it
    original_path="$file"
    base_path="${current_dir}/test/screens"
    new_base_path="${current_dir}/goldens"

    modified_path="${original_path/$base_path/$new_base_path}"
    mkdir -p "$(dirname "$modified_path")"  # Create destination directory
    cp "$file" "$modified_path"                  # Copy file
  done
' sh {} +

# Check if pngquant is installed
if ! command -v pngquant &> /dev/null; then
    echo "pngquant is not installed. Please install it using 'brew install pngquant' and try again."
    exit 1
fi

# Find all PNG images with '.png' suffix in the specified directory and its subdirectories
# and compress them using pngquant
while IFS= read -r -d '' image; do
    echo "Compressing: $image"
    pngquant --force --ext .png --skip-if-larger "$image"
done < <(find "$dest_dir" -type f -name '*.png' -print0)

echo "All .png images have been compressed."


# echo "All .png files have been copied to $dest_dir preserving the directory structure."
cd $dest_dir
dart pub global run golden_presenter -o index.html --path . 
# check that the index.html file is created
if [ -f "index.html" ]; then
    echo "index.html file has been created successfully."
else
    echo "index.html file has not been created."
    exit 1
fi
cd ..
ls -l goldens
echo "Golden files have been built successfully."