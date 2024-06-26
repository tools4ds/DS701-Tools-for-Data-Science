#!/bin/bash

# Set the directory containing the .ipynb files
input_dir=$INPUT_DIR

# Set the output directory for .qmd files
output_dir=$INPUT_DIR

echo $INPUT_DIRclear
# Loop through all .ipynb files in the input directory
for file in "$input_dir"/*.ipynb; do
    # Get the file name without extension
    file_name=$(basename "$file" .ipynb)
    
    # Convert .ipynb to .qmd using quarto
    quarto convert "$file" --output "$output_dir/$file_name.qmd"
    
    # Print a success message
    echo "Converted $file to $file_name.qmd"
done

echo "All .ipynb files converted to .qmd files."