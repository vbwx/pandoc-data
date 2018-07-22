SUFFIX := .md
TEMPLATE := jku
DEFAULT := pdf
ENGINE := xelatex
TO_TEX := latex
FROM := markdown

include pandoc.mk
