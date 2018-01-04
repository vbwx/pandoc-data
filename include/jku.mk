_meta := $(HOME)/.pandoc/meta
_inc := $(HOME)/.pandoc/include

RESPATH := include:.
ENGINE := xelatex
TPL := jku
FMT_TEX := latex
FMT := markdown

_pdf = pandoc \
	--read=$(FMT) \
	--write=$(FMT_TEX) \
	--template=$(TPL).tex \
	--pdf-engine=$(ENGINE) \
	--resource-path=$(_inc):$(RESPATH) \
	--output=$@ \
	$(OPT) $(OPT_PDF) \
	$(_meta)/$(TPL).yaml

_tex = pandoc \
	--read=$(FMT) \
	--write=$(FMT_TEX) \
	--resource-path=$(_inc):$(RESPATH) \
	--output=$@ \
	$(OPT) $(OPT_TEX) \
	$(_meta)/$(TPL).yaml

_view = $(BROWSER) $@
_edit = $(VISUAL) $@
