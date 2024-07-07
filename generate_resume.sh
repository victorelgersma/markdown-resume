#!/bin/bash

# Convert markdown to HTML and store in a variable
GENERATED_HTML=$(pandoc resume.md)

# Extract the first 10 lines of the template
head -n 10 template.html > resume.html

# Append the generated HTML content
echo "$GENERATED_HTML" >> resume.html

# Close the body and html tags
echo "</body>" >> resume.html
echo "</html>" >> resume.html
