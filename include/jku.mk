_META := $(HOME)/.pandoc/meta
_INC := $(HOME)/.pandoc/include

CITEPROC := --filter=pandoc-citeproc
APA := $(CITEPROC) $(_META)/apa.yaml

pandoc_pdf = pandoc \
	--read=markdown$(EXT) \
	--write=latex \
	--template=jku.tex \
	--pdf-engine=xelatex \
	--resource-path=$(_INC):include:. \
	--output=$@ \
	$(OPT) $(OPT_PDF) \
	$(_META)/jku.yaml $+ \
	$(APPEND) $(APPEND_PDF)
