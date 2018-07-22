TEMPLATE := jku
ENGINE := xelatex
TO_TEX := latex
FROM := markdown
EXT_FROM := md
EXT_TO := pdf

include pandoc.mk
