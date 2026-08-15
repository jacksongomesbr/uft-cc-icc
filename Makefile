# Regeneração dos diagramas Graphviz.
#
# Cada arquivo .dot em diagrams/ gera um .png de mesmo nome. As imagens de
# origem externa, como as reproduções de domínio público, não têm .dot
# correspondente e não são tocadas por este arquivo.
#
# Uso:
#   make diagrams   # regenera apenas os PNG mais antigos que seu .dot
#   make diagrams-force
#   make clean-diagrams

DOT ?= dot
DOT_DPI ?= 200

DOT_SOURCES := $(shell find diagrams -name '*.dot')
DOT_TARGETS := $(DOT_SOURCES:.dot=.png)

.PHONY: diagrams diagrams-force clean-diagrams

diagrams: $(DOT_TARGETS)

%.png: %.dot
	$(DOT) -Tpng -Gdpi=$(DOT_DPI) $< -o $@

diagrams-force:
	$(MAKE) clean-diagrams
	$(MAKE) diagrams

clean-diagrams:
	rm -f $(DOT_TARGETS)
