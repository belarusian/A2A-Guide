#!/usr/bin/env bash
# Export A2A Guide Markdown to dist/: .txt, .html, .docx (Pandoc), .pdf (Node md-to-pdf)
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT"

DIST="${DIST:-dist}"
README="${README:-A2A_Guide.md}"
CSS_FILE="$ROOT/scripts/a2a-guide-html.css"
PDF_CONFIG="$ROOT/scripts/a2a-guide-pdf-config.js"
REF_DOC="$ROOT/scripts/reference.docx"

mkdir -p "$DIST"

wrote_any=false

if command -v pandoc >/dev/null 2>&1; then
    # Plain text export
    pandoc "$README" -f gfm -t plain --columns=97 -o "$DIST/A2A_Guide.txt"
    echo "Wrote $DIST/A2A_Guide.txt"
    
    # HTML export with CSS
    pandoc "$README" -f gfm --standalone --embed-resources \
        --metadata title="A2A Protocol: A Developer's Guide" \
        --metadata pagetitle="A2A Protocol Guide" \
        --css="$CSS_FILE" -o "$DIST/A2A_Guide.html"
    echo "Wrote $DIST/A2A_Guide.html"
    
    # DOCX export with reference document
    pandoc "$README" -f gfm --reference-doc="$REF_DOC" -o "$DIST/A2A_Guide.docx"
    echo "Wrote $DIST/A2A_Guide.docx"
    
    wrote_any=true
else
    echo "warning: pandoc not installed — skipping .txt, .html, .docx (install: brew install pandoc)" >&2
fi

if ! command -v npx >/dev/null 2>&1; then
    echo "warning: npx not found — skipping PDF (install Node.js from https://nodejs.org)" >&2
else
    readme_dir=$(dirname -- "$README")
    readme_base=$(basename -- "$README")
    stem="${readme_base%.*}"
    pdf_side="${readme_dir}/${stem}.pdf"
    rm -f "$pdf_side"
    npx --yes md-to-pdf "$README" --config-file "$PDF_CONFIG"
    if [[ ! -f "$pdf_side" ]]; then
        echo "error: expected PDF not created at $pdf_side (md-to-pdf). Run: npx md-to-pdf $README" >&2
        exit 1
    fi
    mv -f "$pdf_side" "$DIST/A2A_Guide.pdf"
    if [[ ! -s "$DIST/A2A_Guide.pdf" ]]; then
        echo "error: dist/A2A_Guide.pdf is empty (md-to-pdf failed)." >&2
        exit 1
    fi
    echo "Wrote $DIST/A2A_Guide.pdf"
    wrote_any=true
fi

if [[ "$wrote_any" == false ]]; then
    echo "error: need pandoc and/or Node (npx) to produce any export." >&2
    exit 1
fi
