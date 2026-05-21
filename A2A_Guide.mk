# Makefile for A2A Protocol Guide

# Variables
DIST ?= dist
README ?= A2A_Guide.md
PDF_SIDE := $(addsuffix .pdf,$(basename $(README)))
export DIST README

.DEFAULT_GOAL := export

.PHONY: help export txt html docx pdf clean

help:
	@echo "make (default) - all formats under $(DIST)/"
	@echo "make txt|html|docx - needs pandoc"
	@echo "make pdf - needs Node + npx"
	@echo "make clean - remove $(DIST)/"

export:
	@./scripts/export-a2a-guide.sh

txt:
	@mkdir -p $(DIST)
	@command -v pandoc >/dev/null || (echo "Install pandoc: brew install pandoc" >&2; exit 1)
	pandoc $(README) -f gfm -t plain --columns=97 -o $(DIST)/A2A_Guide.txt
	@echo Wrote $(DIST)/A2A_Guide.txt

html:
	@mkdir -p $(DIST)
	@command -v pandoc >/dev/null || (echo "Install pandoc: brew install pandoc" >&2; exit 1)
	pandoc $(README) -f gfm --standalone --embed-resources \
		--metadata title="A2A Protocol: A Developer's Guide" \
		--metadata pagetitle="A2A Protocol Guide" \
		--css=scripts/a2a-guide-html.css -o $(DIST)/A2A_Guide.html
	@echo Wrote $(DIST)/A2A_Guide.html

docx:
	@mkdir -p $(DIST)
	@command -v pandoc >/dev/null || (echo "Install pandoc: brew install pandoc" >&2; exit 1)
	pandoc $(README) -f gfm --reference-doc=scripts/reference.docx -o $(DIST)/A2A_Guide.docx
	@echo Wrote $(DIST)/A2A_Guide.docx

pdf:
	@mkdir -p $(DIST)
	@command -v npx >/dev/null || (echo "Install Node.js for PDF export, or use: make pdf-latex" >&2; exit 1)
	@rm -f $(PDF_SIDE)
	npx --yes md-to-pdf $(README) --config-file scripts/a2a-guide-pdf-config.js
	@mv -f $(PDF_SIDE) $(DIST)/A2A_Guide.pdf
	@echo Wrote $(DIST)/A2A_Guide.pdf

pdf-latex:
	@mkdir -p $(DIST)
	@command -v pandoc >/dev/null || (echo "Install pandoc" >&2; exit 1)
	pandoc $(README) -f gfm -o $(DIST)/A2A_Guide.pdf --pdf-engine=xelatex \
		-V geometry:margin=1in -V fontsize=11pt
	@echo Wrote $(DIST)/A2A_Guide.pdf

clean:
	rm -rf $(DIST)
