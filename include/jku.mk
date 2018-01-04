SHELL := /bin/bash

META := $(HOME)/.pandoc/meta
INC := $(HOME)/.pandoc/include

RESPATH := include:.
ENGINE := xelatex
TPL := jku
FMT_TEX := latex
FMT := markdown

PDF = pandoc \
	--read=$(FMT) \
	--write=$(FMT_TEX) \
	--template=$(TPL).tex \
	--pdf-engine=$(ENGINE) \
	--resource-path=$(INC):$(RESPATH) \
	--output=$@ \
	$(OPT) $(OPT_PDF) \
	$(META)/$(TPL).yaml

TEX = pandoc \
	--read=$(FMT) \
	--write=$(FMT_TEX) \
	--resource-path=$(INC):$(RESPATH) \
	--output=$@ \
	$(OPT) $(OPT_TEX) \
	$(META)/$(TPL).yaml

VIEW = $(BROWSER) $@
EDIT = $(VISUAL) $@
