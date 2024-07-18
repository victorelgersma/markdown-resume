# markdown-resume

## Workflow

1. Edit resume.md to add / change content

generate html with:

```zsh
./generate_html.sh
```

or use the watch file to automatically regenerate the html file when the resume.md file is changed:

```zsh
./watch.sh
```

2. Generate pdf with pandoc:

```zsh
pandoc resume.md -o resume.pdf
```

## Notes

- Can't use the browser to print the pdf because links don't render correctly.

## To do

## Notes

- If I try to use software to convert to PDF it doesn't link the stylesheet correctly. Quick hack is to copy the stylesheet into the html file and then use wkhtmltopdf to generate the pdf.

## Links

[Original post detailing workflow](http://sdsawtelle.github.io/blog/output/simple-markdown-resume-with-pandoc-and-wkhtmltopdf.html) are contained in a short blog post.
