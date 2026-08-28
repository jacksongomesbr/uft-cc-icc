# Regeneração dos diagramas.
#
# Duas fontes convivem aqui:
#
#   .dot       -> .png   (Graphviz; layout automático, figura estrutural)
#   .tikz.tex  -> .svg   (LuaLaTeX + TikZ; controle fino, fontes do livro)
#
# Use Graphviz quando a estrutura importa e a posição exata dos blocos é
# indiferente. Use TikZ quando o desenho precisa de posições deliberadas,
# destaques, rótulo matemático ou tipografia igual à do texto.
#
# As imagens de origem externa, como as reproduções em licença permissiva, não
# têm arquivo-fonte correspondente e não são tocadas por este arquivo.
#
# Uso:
#   make diagrams   # regenera apenas as imagens mais antigas que sua fonte
#   make diagrams-force
#   make clean-diagrams
#   make site       # diagramas, livro e slides, na ordem correta

DOT ?= dot
DOT_DPI ?= 200

DOT_SOURCES := $(shell find diagrams -name '*.dot')
DOT_TARGETS := $(DOT_SOURCES:.dot=.png)

# O dvisvgm distribuído aqui não lê PDF (falta suporte a mutool), por isso a
# conversão para SVG passa pelo pdftocairo, do Poppler.
LUALATEX ?= lualatex
PDFTOCAIRO ?= pdftocairo

TIKZ_SOURCES := $(shell find diagrams -name '*.tikz.tex')
TIKZ_TARGETS := $(TIKZ_SOURCES:.tikz.tex=.svg)

.PHONY: diagrams diagrams-force clean-diagrams site

diagrams: $(DOT_TARGETS) $(TIKZ_TARGETS)

%.png: %.dot
	$(DOT) -Tpng -Gdpi=$(DOT_DPI) $< -o $@

# TEXINPUTS aponta para diagrams/ porque as figuras carregam o estilo comum
# com \usepackage{figuras}; sem isso o LuaLaTeX só acharia o .sty se a figura
# estivesse na mesma pasta.
%.svg: %.tikz.tex diagrams/figuras.sty
	TEXINPUTS=diagrams:$$TEXINPUTS $(LUALATEX) -interaction=nonstopmode -halt-on-error \
	  -output-directory=$(dir $<) $< >/dev/null
	$(PDFTOCAIRO) -svg $(<:.tex=.pdf) $@
	rm -f $(<:.tex=.pdf) $(<:.tex=.log) $(<:.tex=.aux)

# Build completo do site. A ordem importa: o Quarto limpa _output/ no início
# do render do livro, e os slides são um projeto separado que grava em
# _output/slides. Renderizar os slides antes do livro perde o resultado.
site: diagrams
	quarto render
	cd slides && quarto render

diagrams-force:
	$(MAKE) clean-diagrams
	$(MAKE) diagrams

clean-diagrams:
	rm -f $(DOT_TARGETS) $(TIKZ_TARGETS)
