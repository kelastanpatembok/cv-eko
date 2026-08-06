#!/usr/bin/env bash
#
# generatecv.sh — compose the CV PDF from markdown pieces.
#
# Pieces in content/ are concatenated in filename order, styled with
# src/header.tex, and rendered to output/ via pandoc + xelatex.
#
# Prereqs: pandoc, a TeX engine with xelatex (TeX Live / BasicTeX).
# Optional: put a photo at assets/photo.jpg and set INCLUDE_PHOTO=1 to
# embed it on the first page.

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT"

CONTENT_DIR="${CONTENT_DIR:-content}"
OUT_DIR="${OUT_DIR:-output}"
PDF_NAME="${PDF_NAME:-Eko-Suprapto-Wibowo-CV}"

MAIN_FONT="${MAIN_FONT:-Helvetica Neue}"
MONO_FONT="${MONO_FONT:-Menlo}"

mkdir -p "$OUT_DIR"

PIECES=( "$CONTENT_DIR"/[0-9][0-9]-*.md )
if [[ ${#PIECES[@]} -eq 0 ]]; then
  echo "error: no content pieces found in $CONTENT_DIR (expected 01-*.md, 02-*.md, ...)" >&2
  exit 1
fi

echo "Composing ${#PIECES[@]} pieces:"
for p in "${PIECES[@]}"; do
  echo "  - $p"
done

cat "${PIECES[@]}" > "$OUT_DIR/.combined.md"

cat > "$OUT_DIR/.meta.yaml" <<EOF
---
lang: en
colorlinks: true
linkcolor: ac
urlcolor: ac
geometry: "margin=2cm"
fontsize: 10pt
mainfont: "$MAIN_FONT"
sansfont: "$MAIN_FONT"
monofont: "$MONO_FONT"
---
EOF

pandoc \
  "$OUT_DIR/.meta.yaml" \
  "$OUT_DIR/.combined.md" \
  -o "$OUT_DIR/$PDF_NAME.pdf" \
  --pdf-engine=xelatex \
  --from markdown+pipe_tables \
  -H src/header.tex

rm -f "$OUT_DIR/.combined.md" "$OUT_DIR/.meta.yaml"

echo
echo "PDF generated: $OUT_DIR/$PDF_NAME.pdf"
ls -lh "$OUT_DIR/$PDF_NAME.pdf"
