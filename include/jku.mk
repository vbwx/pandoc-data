_META := ~/.pandoc/meta
_INC := ~/.pandoc/include

pandoc_pdf = pandoc \
	--write=latex \
	--template=jku.tex \
	--pdf-engine=xelatex \
	--resource-path=$(_INC):include:. \
	--output=$@ \
	$(OPT) \
	$(OPT_PDF) \
	$(PREPEND) $(_META)/jku.yaml $+ $(APPEND)

OPT_APA := --csl=apa.csl
APA := $(_META)/apa.yaml
