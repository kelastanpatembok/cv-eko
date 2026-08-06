# cv-eko — Eko Suprapto Wibowo CV

Source and generator for Eko Suprapto Wibowo's CV, produced as a PDF.

## Structure

```
content/            Markdown pieces, concatenated in filename order (01-, 02-, ...)
src/header.tex      LaTeX styling preamble (fonts, colors, sections, PDF metadata)
generatecv.sh       Builds the PDF from the pieces
output/             Generated PDF (not committed)
```

## Generate the PDF

```bash
./generatecv.sh
```

Output: `output/Eko-Suprapto-Wibowo-CV.pdf`

Requires `pandoc` and a `xelatex` engine (TeX Live / BasicTeX). Overridable
environment variables: `CONTENT_DIR`, `OUT_DIR`, `PDF_NAME`, `MAIN_FONT`,
`MONO_FONT`.

## Editing

- Add or reorder sections by naming files `NN-description.md` inside `content/`.
- The pipeline is plain markdown + pipe tables; `src/header.tex` controls the
  visual style.
- The rendered PDF is searchable text with embedded fonts, a tagged title block,
  and PDF 1.7 metadata (title/author/subject/keywords) per current PDF best
  practice.
