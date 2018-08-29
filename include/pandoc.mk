SHELL := /bin/bash

_META := $(HOME)/.pandoc/meta
_INC := $(HOME)/.pandoc/include
_DIRS := $(subst /,,$(sort $(dir $(wildcard */*.$(EXT_FROM)))))
_FILES := $(addsuffix .$(EXT_TO),$(sort $(basename $(wildcard *.$(EXT_FROM) *.$(EXT_TO)))))

INC = $(dir $@)include
RESPATH = $(dir $@):$(INC):$(_INC)

PDF = pandoc \
	--from=$(FROM) \
	--to=$(TO_PDF) \
	--output=$@ \
	$(addprefix --filter=,$(FILTERS)) \
	--template=$(TEMPLATE) \
	--pdf-engine=$(ENGINE) \
	--resource-path=$(RESPATH) \
	$(OPT) $(OPT_PDF) $(META)

TEX = pandoc \
	--from=$(FROM) \
	--to=$(TO_TEX) \
	--output=$@ \
	$(addprefix --filter=,$(FILTERS)) \
	--resource-path=$(RESPATH) \
	$(OPT) $(OPT_TEX) $(META)

OPEN = $(BROWSER) $@
VIEW = open -a Preview $@
EDIT = $(VISUAL) $@

.PHONY: all $(_DIRS)

all: $(_DIRS) $(_FILES)

$(_DIRS):
	@make $@/$@.$(EXT_TO)
