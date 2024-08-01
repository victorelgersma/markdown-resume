#!/bin/bash

# Check if the user provided the markdown file as an argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 <markdown-file>"
  exit 1
fi

# Change directory to the parent directory
cd ..

MARKDOWN_FILE="$1"
OUTPUT_FILE="index.html"

# Convert markdown to HTML and store in a variable
GENERATED_HTML=$(pandoc "$MARKDOWN_FILE")

BODY_LINE=$(awk '/<body>/{print NR; exit}' html/template.html)

# Extract the first N lines of the template until the <body> tag
head -n "$BODY_LINE" html/template.html > "$OUTPUT_FILE"

# Append the generated HTML content
echo "$GENERATED_HTML" >> "$OUTPUT_FILE"

# Add style sheet in style tags:
echo "<style>" >> "$OUTPUT_FILE"
cat css/style.css >> "$OUTPUT_FILE"
echo "</style>" >> "$OUTPUT_FILE"

# Close the body and html tags
echo "</body>" >> "$OUTPUT_FILE"
echo "</html>" >> "$OUTPUT_FILE"
