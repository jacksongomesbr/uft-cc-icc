# Procedência das imagens — capítulo 5

Os arquivos `.tikz.tex` desta pasta são de autoria própria e seguem a licença do
livro. Os SVG correspondentes são gerados a partir deles pelo `Makefile` da
raiz, com LuaLaTeX e `pdftocairo`.

As reproduções abaixo vêm de fora, não têm arquivo-fonte correspondente e não
são tocadas pelo `Makefile`. A licença de cada uma está declarada também na
legenda da figura, no capítulo.

Todas foram obtidas no Wikimedia Commons pela API do site, em 28/08/2026.

## Tratamento aplicado

- Redimensionadas para 1200 px de largura, salvo a página de Leibniz, mantida
  em 727 px por ser um fac-símile de texto impresso.
- Metadados EXIF e perfil de cor removidos.
- As fotografias foram recomprimidas em JPEG progressivo, qualidade 86. O
  fac-símile continua em PNG, em tons de cinza, porque compressão com perda
  borra o traço da tipografia antiga.

## Licenças e atribuição

| Arquivo | Autoria | Licença |
|---|---|---|
| `tablete-ybc7289.jpg` | A. Urcia, Yale Peabody Museum of Natural History | CC0 |
| `leibniz-1703.png` | Gottfried Wilhelm Leibniz | domínio público |
| `fita-perfurada.jpg` | TedColes | domínio público |

## Arquivos de autoria própria

- `decomposicao-posicional.tikz.tex` — a decomposição de duas sequências de
  quatro dígitos, uma em base dez e outra em base dois, com peso, dígito e
  produto alinhados.
- `dois-niveis.tikz.tex` — o mesmo intervalo de tensão dividido em dois níveis e
  em dez níveis, com a mesma flutuação aplicada às duas divisões.
- `agrupamento-bits.tikz.tex` — a mesma sequência de doze bits agrupada de três
  em três e de quatro em quatro, para leitura em octal e em hexadecimal.
