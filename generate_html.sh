#!/bin/bash




# Convert markdown to HTML and store in a variable
GENERATED_HTML=$(pandoc resume.md)


BODY_LINE=$(awk '/<body>/{print NR; exit}' template.html)


# Extract the first 10 lines of the template
head -n "$BODY_LINE" template.html > resume.html

# Append the generated HTML content
echo "$GENERATED_HTML" >> resume.html

# Add style sheet in style tags:
echo "<style>" >> resume.html
cat resume-css-stylesheet.css >> resume.html
echo "</style>" >> resume.html

# Close the body and html tags
echo "</body>" >> resume.html
echo "</html>" >> resume.html
