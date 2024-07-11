# markdown-resume

## Workflow

1. Edit resume.md to add / change content

generate html with:

```zsh
./generate_html.sh
```

- use browser's print to PDF to generate a pdf

## To do

- [ ] create a file watcher that watches for changes in the resume.md file and regenerates the html file
- [ ] currently the pdf
- [ ] modify generator file to not use a separate stylesheet file

## Notes

- If I try to use software to convert to PDF it doesn't link the stylesheet correctly. Quick hack is to copy the stylesheet into the html file and then use wkhtmltopdf to generate the pdf.

## Links

[Original post detailing workflow](http://sdsawtelle.github.io/blog/output/simple-markdown-resume-with-pandoc-and-wkhtmltopdf.html) are contained in a short blog post.
