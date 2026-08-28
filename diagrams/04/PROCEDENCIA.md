# Procedência das imagens — capítulo 4

Os arquivos `.tikz.tex` desta pasta são de autoria própria e seguem a licença do
livro. Os SVG correspondentes são gerados a partir deles pelo `Makefile` da
raiz, com LuaLaTeX e `pdftocairo`.

As fotografias abaixo vêm de fora, não têm arquivo-fonte correspondente e não
são tocadas pelo `Makefile`. A licença de cada uma está declarada também na
legenda da figura, no capítulo.

Todas foram obtidas no Wikimedia Commons pela API do site, em 28/08/2026.

## Tratamento aplicado a todas

- Redimensionadas para 1200 px de largura.
- Metadados EXIF e perfil de cor removidos.
- Recomprimidas em JPEG progressivo, qualidade 86.

## Licenças e atribuição

| Arquivo | Autoria | Licença |
|---|---|---|
| `die-zen2.jpg` | Fritzchens Fritz | CC0 |
| `modulo-ddr4.jpg` | PantheraLeo1359531 | CC BY 4.0 |
| `disco-rigido-aberto.jpg` | Zzubnik | domínio público |
| `ssd-m2.jpg` | D-Kuru | CC BY-SA 4.0 |
| `placa-mae.jpg` | Jacek Halicki | CC BY-SA 4.0 |

## Arquivos de autoria própria

- `cpu-interna.tikz.tex` — o interior do processador, com as ligações entre a
  unidade de controle, a unidade lógica e aritmética e os registradores.
- `hierarquia-memoria.tikz.tex` — os cinco níveis da hierarquia, com capacidade,
  tempo de acesso e a linha da volatilidade.
- `escala-de-tempo.tikz.tex` — os mesmos tempos em escala logarítmica, com a
  tradução para uma escala humana.
- `barramentos.tikz.tex` — o barramento do sistema e as três funções que ele
  cumpre.
- `interface-controladora.tikz.tex` — o caminho de um dispositivo até o
  processador, com a fronteira do gabinete.

A figura restante do capítulo é um diagrama Mermaid definido no próprio `.qmd`,
conforme o critério de escolha de ferramenta descrito em `AUTHORING.md`.
