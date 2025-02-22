#!/bin/bash

# This script handles absolute paths to images
# It's specifically designed for your Obsidian vault structure

# Configuration
OUTPUT_PDF="$HOME/Desktop/obsidian_vault.pdf"
TEMP_DIR=$(mktemp -d)
TEMP_MD="${TEMP_DIR}/combined.md"
VAULT_DIR="$(pwd)"

echo "=========================================================="
echo "Creating PDF from Obsidian vault..."
echo "Vault directory: $VAULT_DIR"
echo "Temporary directory: $TEMP_DIR"
echo "Output PDF will be saved to: $OUTPUT_PDF"
echo "=========================================================="

# Create the title page
cat > "${TEMP_MD}" << EOF
---
title: "Obsidian Vault Export"
date: "$(date +"%B %d, %Y")"
toc: true
toc-depth: 3
geometry: "margin=1in"
---

# Obsidian Vault Contents

EOF

# Create images directory in temp folder
mkdir -p "${TEMP_DIR}/images"

# Copy all images from the vault's images folder using absolute path
echo "Copying images from the images folder..."
if [ -d "${VAULT_DIR}/images" ]; then
    find "${VAULT_DIR}/images" -type f \( -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.gif" -o -name "*.svg" \) -exec cp {} "${TEMP_DIR}/images/" \;
    
    # Count how many images were found
    IMAGE_COUNT=$(find "${TEMP_DIR}/images" -type f | wc -l)
    echo "Found and copied $IMAGE_COUNT images"
else
    echo "No images folder found at ${VAULT_DIR}/images"
fi

# Function to process and append markdown files
process_file() {
    local file="$1"
    local filename=$(basename "$file")
    
    echo "Processing: $file"
    
    # Add a section header for each file
    echo -e "\n## ${filename%.md}\n" >> "${TEMP_MD}"
    
    # Create a temporary file for processing
    local temp_file=$(mktemp)
    
    # First process Obsidian links
    perl -ne '
        # Convert Obsidian internal links [[Page Name]] to [Page Name](Page Name)
        s/\[\[([^\|\]]+)\]\]/[\1](\1)/g;
        
        # Convert Obsidian internal links with alt text [[Page Name|Alt Text]] to [Alt Text](Page Name)
        s/\[\[([^\|]+)\|([^\]]+)\]\]/[\2](\1)/g;
        
        # Process callouts
        s/^> \[!(\w+)\](.*)/> **\1**\2/g;
        
        print;
    ' "$file" > "$temp_file"
    
    # Now process image references - extract just the filename from any path
    perl -ne '
        # Convert Obsidian image syntax ![[imagename.png]] to standard markdown ![](images/filename.png)
        if (s/!\[\[(.*?\.(?:png|jpg|jpeg|gif|svg))\]\]/![]($1)/gi) {
            # Extract just the filename from the path
            s/!\[\]\(.*\/([^\/]+\.(?:png|jpg|jpeg|gif|svg))\)/![](images\/\1)/gi;
            print;
        }
        # Fix standard markdown image references to point to the images directory
        elsif (s/!\[(.*?)\]\((.*?\.(?:png|jpg|jpeg|gif|svg))\)/![\1]($2)/gi) {
            # Extract just the filename from the path
            s/!\[(.*?)\]\(.*\/([^\/]+\.(?:png|jpg|jpeg|gif|svg))\)/![\1](images\/\2)/gi;
            print;
        }
        else {
            print;
        }
    ' "$temp_file" > "${temp_file}.img"
    
    # Append the processed content to the combined markdown file
    cat "${temp_file}.img" >> "${TEMP_MD}"
    
    # Add a separator
    echo -e "\n---\n" >> "${TEMP_MD}"
    
    # Clean up
    rm "$temp_file" "${temp_file}.img"
}

# First process README.md if it exists to put it at the beginning
if [[ -f "${VAULT_DIR}/README.md" ]]; then
    process_file "${VAULT_DIR}/README.md"
fi

# Process all markdown files, sorted alphabetically
find "${VAULT_DIR}" -type f -name "*.md" | grep -v "README.md" | sort | while read -r file; do
    process_file "$file"
done

# Print a sample of the processed markdown to verify image links
echo "Sample of processed markdown with image links:"
grep -n "images/" "${TEMP_MD}" | head -5

# Ensure the output directory exists
mkdir -p "$(dirname "$OUTPUT_PDF")"

echo "Generating PDF..."
cd "${TEMP_DIR}"

# Debug: Show what's in the images directory
echo "Images in the temporary directory:"
ls -la images/ | head -10

pandoc -s combined.md \
    --pdf-engine=xelatex \
    --toc \
    --number-sections \
    --variable urlcolor=blue \
    --variable linkcolor=blue \
    -o "$OUTPUT_PDF"

# Check if PDF was created successfully
if [[ -f "$OUTPUT_PDF" ]]; then
    echo "=========================================================="
    echo "PDF created successfully!"
    echo "Location: $OUTPUT_PDF"
    echo "=========================================================="
    
    # On macOS, open the PDF
    if [[ "$(uname)" == "Darwin" ]]; then
        open "$OUTPUT_PDF"
    fi
else
    echo "Error: PDF creation failed."
    echo "Temporary files preserved at: $TEMP_DIR"
    exit 1
fi

# Keep the temporary directory for debugging
echo "Temporary files preserved at: $TEMP_DIR for debugging"