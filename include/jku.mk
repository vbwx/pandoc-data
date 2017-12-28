_meta := $(HOME)/.pandoc/meta
_inc := $(HOME)/.pandoc/include

CITEPROC := --filter=pandoc-citeproc
APA := $(CITEPROC) $(_meta)/apa.yaml
RESPATH := include:.
ENGINE := xelatex
TPL := jku

pandoc_pdf = pandoc \
	--read=markdown$(EXT) \
	--write=latex \
	--template=$(TPL).tex \
	--pdf-engine=$(ENGINE) \
	--resource-path=$(_inc):$(RESPATH) \
	--output=$@ \
	$(OPT) $(OPT_PDF) \
	$(_meta)/$(TPL).yaml $+ \
	$(APPEND) $(APPEND_PDF)
