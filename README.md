# Introdução à Ciência da Computação

Livro da disciplina **Introdução à Ciência da Computação**, do Curso de Ciência
da Computação da Universidade Federal do Tocantins (UFT), Câmpus Palmas,
ministrada pelo Prof. Dr. Jackson Gomes de Souza.

O livro é organizado em capítulos na pasta `chapters/`. Cada capítulo possui
slides Reveal.js próprios na pasta `slides/`, com o mesmo prefixo numérico. Os
16 capítulos correspondem às 16 aulas expositivas da disciplina, que tem 18
encontros: os encontros 9 e 18 são destinados às avaliações e não compõem o
livro.

Os capítulos 1 a 8 formam o bloco de fundamentos técnicos, em que o computador é
tratado como objeto: história, estrutura, representação da informação e
software. Os capítulos 9 a 16 formam o bloco de profissão, ética e sociedade, em
que o objeto passa a ser a computação como atividade humana, com um trabalho
integrador que termina em uma análise apresentada pelas equipes.

## Uso

Renderize tudo com:

```bash
quarto render
(cd slides && quarto render)
```

Os arquivos gerados ficam em `_output/`: o livro em HTML e PDF, e um arquivo
HTML de slides para cada capítulo em `_output/slides/`.

Para renderizar apenas um alvo:

```bash
quarto render chapters/05-sistemas-numericos.qmd
(cd slides && quarto render 05-sistemas-numericos.qmd)
```

Adicione referências em `references.bib` e cite-as nos arquivos `.qmd` usando
a sintaxe como `@chave-da-referencia`.

As figuras feitas em Graphviz vêm de arquivos em `diagrams/`. Depois de editar
um `.dot`, regenere os PNG antes de renderizar:

```bash
make diagrams
```

Isso exige o Graphviz instalado (`brew install graphviz` no macOS,
`apt install graphviz` no Linux).

## Estrutura

- `chapters/` — capítulos que compõem o livro.
- `slides/` — projeto Quarto independente com uma apresentação individual por
  capítulo; essa separação permite usar Reveal.js junto de um livro Quarto.
- `diagrams/` — definições Graphviz (`.dot`) das figuras e os PNG gerados a
  partir delas, organizados por capítulo.
- `Makefile` — regeneração dos PNG a partir dos `.dot`.
- `references.bib` — referências bibliográficas BibTeX compartilhadas.
- `avaliacoes/` — pareceres produzidos pela skill de avaliação de conteúdo.

## Licença

Este material está licenciado sob a licença Creative Commons
Atribuição-CompartilhaIgual 4.0 Internacional (CC BY-SA 4.0). Consulte
[LICENSE.md](LICENSE.md).

## Versionamento e changelog

O projeto usa [Versionamento Semântico](https://semver.org/lang/pt-BR/) e
mensagens de commit no padrão [Conventional Commits](https://www.conventionalcommits.org/).
Registre alterações relevantes em [CHANGELOG.md](CHANGELOG.md), inicialmente na
seção **Não publicado**. Ao criar uma versão, mova essas entradas para uma nova
seção com o número e a data da versão e crie a tag Git correspondente, por
exemplo `v1.2.0`.
