# markdown-resume

## Workflow

1. Edit resume.md to add / change content

generate an HTML doc with

```
pandoc -o resume.html resume.md
```

2. Generate resume.html with `pandoc`
3. Add script tag to resume.html to include resume-css-stylesheet.css
4. Print to PDF! with `wkhtmltopdf`

## Links

[Full work flow details](http://sdsawtelle.github.io/blog/output/simple-markdown-resume-with-pandoc-and-wkhtmltopdf.html) are contained in a short blog post.
