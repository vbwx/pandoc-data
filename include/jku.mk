FROM := markdown
TO_TEX := latex
TO_PDF := latex
EXT_FROM := md
EXT_TO := pdf
FILTERS := asciimathfilter/asciimathfilter.js
ENGINE := xelatex
TEMPLATE := jku.tex
META = $(_META)/jku.yaml

include pandoc.mk
