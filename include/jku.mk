FROM := markdown
TO_TEX := latex
EXT_FROM := md
EXT_TO := pdf
FILTER_TEX := asciimath/asciimathfilter.js
TEMPLATE := jku
ENGINE := xelatex

include pandoc.mk
