#!/bin/bash


OUTPUT_FILE="index.html"

# Convert markdown to HTML and store in a variable
GENERATED_HTML=$(pandoc resume.md)


BODY_LINE=$(awk '/<body>/{print NR; exit}' template.html)


# Extract the first 10 lines of the template
head -n "$BODY_LINE" template.html > "$OUTPUT_FILE"

# Append the generated HTML content
echo "$GENERATED_HTML" >> "$OUTPUT_FILE"

# Add style sheet in style tags:
echo "<style>" >> "$OUTPUT_FILE"
cat resume-css-stylesheet.css >> "$OUTPUT_FILE"
echo "</style>" >> "$OUTPUT_FILE"

# Close the body and html tags
echo "</body>" >> "$OUTPUT_FILE"
echo "</html>" >> "$OUTPUT_FILE"
