SHELL := /bin/bash

_META := $(HOME)/.pandoc/meta
_INC := $(HOME)/.pandoc/include

INC = $(dir $@)include
RESPATH = $(dir $@):$(INC):$(_INC)
ENGINE := xelatex
TEMPLATE := jku
WRITE_TEX := latex
READ := markdown

PDF = pandoc \
	--read=$(READ) \
	--write=$(WRITE_TEX) \
	--template=$(TEMPLATE).tex \
	--pdf-engine=$(ENGINE) \
	--resource-path=$(RESPATH) \
	--output=$@ \
	$(OPT) $(OPT_PDF) \
	$(_META)/$(TEMPLATE).yaml

TEX = pandoc \
	--read=$(READ) \
	--write=$(WRITE_TEX) \
	--resource-path=$(RESPATH) \
	--output=$@ \
	$(OPT) $(OPT_TEX) \
	$(_META)/$(TEMPLATE).yaml

VIEW = $(BROWSER) $@
EDIT = $(VISUAL) $@
