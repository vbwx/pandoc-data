SHELL := /bin/bash

_META := $(HOME)/.pandoc/meta
_INC := $(HOME)/.pandoc/include

META = $(_META)/$(TEMPLATE).yaml
INC = $(dir $@)include
RESPATH = $(dir $@):$(INC):$(_INC)
ENGINE := xelatex
TEMPLATE := jku
TO_TEX := latex
FROM := markdown

PDF = pandoc \
	--from=$(FROM) \
	--to=$(TO_TEX) \
	--template=$(TEMPLATE).tex \
	--pdf-engine=$(ENGINE) \
	--resource-path=$(RESPATH) \
	--output=$@ \
	$(OPT) $(OPT_PDF) $(META)

TEX = pandoc \
	--from=$(FROM) \
	--to=$(TO_TEX) \
	--resource-path=$(RESPATH) \
	--output=$@ \
	$(OPT) $(OPT_TEX) $(META)

OPEN = $(BROWSER) $@
VIEW = open -a Preview $@
EDIT = $(VISUAL) $@
