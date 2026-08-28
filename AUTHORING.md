# Guia de autoria técnica

## Referência cruzada é obrigatória

Toda figura e toda tabela precisa de legenda, identificador e **pelo menos uma
menção no corpo do texto**, feita com `@id`. O Quarto só numera o elemento e
gera o link quando existe essa referência; sem ela, a numeração pode não
aparecer e o leitor fica sem saber a que trecho o elemento pertence.

Escreva a menção como parte da frase, não como um aviso solto:

```markdown
A @tbl-abordagens resume como cada abordagem se distingue nesses pontos.

O fluxo completo aparece na @fig-fluxo-cliente-servidor.
```

Evite "a tabela abaixo", "a figura anterior" e variações: a posição do elemento
muda entre HTML, PDF e slides, e essas expressões deixam de fazer sentido.

Prefixos: `fig-` para figuras e diagramas, `tbl-` para tabelas.

## Tabelas

A legenda vai depois da tabela, iniciada por `:`, com o identificador entre
chaves:

```markdown
| **Coluna A** | **Coluna B** |
|---|---|
| valor | valor |

: Legenda objetiva da tabela. {#tbl-nome-descritivo}
```

Coloque o cabeçalho em negrito na própria origem Markdown (`| **Coluna A** |`).
O PDF não aplica negrito ao cabeçalho automaticamente, e fazer isso via LaTeX
exigiria alterar as células geradas pelo pandoc, que saem como `minipage`.

## Qual ferramenta de diagrama usar

O projeto usa três, e a escolha não é de gosto:

- **Mermaid**, em célula executável no próprio `.qmd`, para fluxo, sequência e
  estado. É o caso do ciclo de busca e execução, do percurso do código-fonte
  até a execução e da troca de mensagens entre processador e controladora.
- **Graphviz**, em arquivos `.dot`, para figura estrutural em que a posição
  relativa dos blocos carrega significado e o layout automático basta. É o caso
  dos diagramas dos capítulos 1 a 3.
- **TikZ**, em arquivos `.tikz.tex`, quando o desenho pede posição deliberada,
  eixo, escala, rótulo matemático, destaque de uma parte da figura ou
  tipografia igual à do texto. É o caso das figuras do capítulo 4: a hierarquia
  de memória, cuja largura codifica a capacidade, e a escala logarítmica de
  tempos de acesso.

Graphviz e TikZ posicionam cada elemento por coordenada explícita, e Mermaid
não oferece esse controle. Um diagrama de blocos que troca a posição da memória
entre duas figuras faz o aluno duvidar de que seja o mesmo sistema. Um
fluxograma, ao contrário, pode ser rearranjado sem perda, e aí o Mermaid
compensa por ficar no próprio arquivo do capítulo.

Entre Graphviz e TikZ, decide o quanto o desenho precisa de controle. Graphviz
resolve um grafo de blocos e setas com pouca escrita, e é a escolha certa
enquanto a figura for só isso. TikZ custa mais linhas e paga esse custo quando a
figura carrega uma grandeza — uma largura que significa capacidade, um eixo
logarítmico, um agrupamento com moldura e título.

## Diagramas Graphviz

A definição fica em `diagrams/<capítulo>/<nome>.dot` e o PNG correspondente,
com o mesmo nome, é gerado a partir dela. O `.qmd` referencia o PNG:

```markdown
![Legenda objetiva.](../diagrams/04/barramentos.png){#fig-barramentos width=72%
fig-alt="Descrição do que o desenho mostra, para quem não o vê."}
```

O `fig-alt` é obrigatório e descreve a estrutura, não a aparência: quais blocos
existem, como estão ligados e em que sentido a informação corre.

Regenere os PNG com o `Makefile` da raiz, nunca à mão:

```bash
make diagrams
```

O alvo `diagrams` refaz apenas os PNG mais antigos que seu `.dot`; use
`make diagrams-force` quando quiser refazer todos. A resolução vem da variável
`DOT_DPI`, fixada em 200: alta o bastante para o PDF, e uniforme entre as
figuras. Não gere um PNG com outra resolução, porque a diferença aparece lado a
lado na mesma página.

**Edição de `.dot` e regeneração andam no mesmo commit.** O PNG é resultado, e
não fonte; um PNG velho ao lado de um `.dot` novo é defeito silencioso, já que
nada na renderização acusa a divergência.

Imagem de origem externa, como reprodução em domínio público, não tem `.dot` e
não é tocada pelo `Makefile`. Declare a origem e a licença na própria legenda.

## Diagramas Mermaid

Use Mermaid para explicar fluxos, sequências, estados e arquitetura. Inclua
legenda e identificador, para que o diagrama possa ser citado no livro.

````markdown
```{mermaid}
%%| label: fig-nome-descritivo
%%| fig-cap: "Legenda objetiva do diagrama."
%%| fig-width: 6
%%| echo: false
flowchart LR
  A[Aplicação] --> B[API]
```
````

Use sempre as quatro opções acima. O bloco precisa ser uma célula executável,
com `{mermaid}` entre chaves: escrito como ```` ```mermaid ````, o Quarto o trata
como bloco de código comum e o PDF mostra o texto do diagrama, não a figura.
`echo: false` esconde a definição e deixa apenas a imagem; `fig-width: 6`
mantém a figura dentro da mancha da página, já que o padrão pode ultrapassar a
largura útil no PDF.

O projeto usa Mermaid nativo em HTML e Reveal.js. Para PDF, o Quarto gera PNG
com o Chrome instalado no ambiente; mantenha `mermaid-format: png` para evitar
dependências adicionais e problemas de conversão SVG.

Para diagramas extensos, mantenha a definição em um arquivo `.mmd` na pasta
`diagrams/` e utilize a opção `file` no bloco Mermaid. Prefira rótulos curtos,
alto contraste e um diagrama por ideia principal.

## Diagramas TikZ

A fonte fica em `diagrams/<capítulo>/<nome>.tikz.tex` e gera
`diagrams/<capítulo>/<nome>.svg`, referenciado pelo `.qmd` como qualquer outra
figura. O mesmo `make diagrams` cuida das duas famílias, e as regras de
`fig-alt` e de commit conjunto valem igualmente aqui.

O arquivo é um documento `standalone` compilado com LuaLaTeX, a mesma engine do
PDF do livro, e carrega o estilo comum com `\usepackage{figuras}`.
`diagrams/figuras.sty` concentra a paleta, os estilos de bloco, seta, moldura e
rótulo, e as fontes do livro. A paleta continua a dos diagramas Graphviz dos
capítulos anteriores: cada função do sistema tem a sua cor, e ela não muda de
figura para figura. Um bloco de hardware reaparece em figuras de capítulos
diferentes, e o aluno o reconhece pela cor e pela forma antes de ler o rótulo.

A saída é SVG, e não PNG, por dois motivos. O desenho é vetorial na origem, de
modo que o SVG preserva a resolução em tela e no papel; e o Quarto converte o
SVG para PDF na renderização com `rsvg-convert`, que precisa estar no `PATH` do
ambiente. A conversão intermediária de PDF para SVG usa `pdftocairo`, do
Poppler, porque o `dvisvgm` distribuído aqui foi compilado sem leitura de PDF.

Duas armadilhas, para quem for editar a regra do `Makefile` ou uma figura:

- O LuaLaTeX nomeia a saída pelo *jobname*, que inclui o `.tikz` do nome. O PDF
  intermediário sai como `<nome>.tikz.pdf`, e a regra remove esse arquivo junto
  com o `.log` e o `.aux` ao final.
- Dentro do texto de um nó, `\\` quebra a linha, e um grupo aberto com chaves
  cancela esse mecanismo. `{\footnotesize a\\b}` produz erro de compilação;
  escreva `a\\[1pt]{\footnotesize b}`, com a quebra fora do grupo.

Quando uma figura migrar de Graphviz para TikZ, apague o `.dot` e o PNG no
mesmo commit. Uma figura com duas fontes diverge em silêncio, já que nada na
renderização acusa a divergência.

## Trechos de código

Sempre indique a linguagem e, quando representar um arquivo, o nome do arquivo.
Mostre apenas o trecho necessário para o objetivo didático e não inclua chaves,
tokens ou dados pessoais.

````markdown
```{.typescript filename="src/services/products.ts"}
export async function listProducts() {
  // ...
}
```
````

Nos slides, destaque linhas relevantes apenas quando isso ajudar a explicação:

````markdown
```{.typescript code-line-numbers="2-4"}
const response = await fetch(url);
if (!response.ok) throw new Error("Falha");
return response.json();
```
````

Os blocos HTML e Reveal.js exibem botão de cópia, usam realce de sintaxe GitHub
e fazem quebra de linhas longas. Em PDF, mantenha exemplos curtos; a numeração
de linhas deve ser ativada localmente apenas quando for citada no texto.

## Validação

Antes de publicar, regenere os diagramas e renderize os dois projetos:

```bash
make site
```

O alvo cuida da ordem. Feito na mão, ele equivale a:

```bash
make diagrams
quarto render
(cd slides && quarto render)
```

**A ordem importa, e não é intercambiável.** Os slides saem em `_output/slides/`
e referenciam as imagens como `../diagrams/`, que resolve para
`_output/diagrams/`. Essa pasta é criada pelo render do livro. Renderizar apenas
os slides em um `_output/` limpo produz um deck com todas as imagens quebradas,
sem nenhum aviso durante a renderização. O fluxo do GitHub Actions já executa os
dois na ordem correta.

Ao acrescentar Mermaid, confira principalmente o PDF e a apresentação HTML.
