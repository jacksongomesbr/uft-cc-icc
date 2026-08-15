# Referências e apresentação em ABNT

## Configuração adotada

O projeto usa o sistema autor-data, com a ABNT NBR 10520:2023 para citações,
ABNT NBR 6023:2025 para referências e ABNT NBR 14724:2024 como referência para
a apresentação do PDF. O PDF é gerado com uma classe LaTeX compatível com o
Quarto, em A4, com margens de 3 cm (superior e
esquerda), 2 cm (inferior e direita), fonte de 12 pt, espaçamento de 1,5 e
recuo de primeira linha de 1,25 cm.

O arquivo `abnt.csl` é aplicado ao livro e aos slides. Ele automatiza o sistema
autor-data e a formatação dos tipos bibliográficos mais comuns. Como estilos CSL
podem não cobrir imediatamente todas as mudanças e tipos digitais específicos
da NBR 6023:2025, revise manualmente referências de redes sociais, podcasts,
software, datasets e outros formatos não usuais antes de uma entrega formal.

## Escopo da conformidade

Este é um livro didático, não um TCC, dissertação ou tese: a ABNT aqui serve
como referência de **formatação básica e de citações/referências**, não como
checklist formal completo. Elementos pré-textuais obrigatórios em trabalhos
acadêmicos formais (folha de aprovação, ficha catalográfica, errata, lista de
abreviaturas obrigatória, resumo em língua estrangeira etc.) não se aplicam
aqui e não devem ser adicionados. Mantemos: margens, fonte, espaçamento,
numeração de página, folha de rosto simples e o sistema autor-data com lista
de referências no padrão NBR 6023. Divergências de detalhe tipográfico frente
à norma estrita são aceitáveis quando favorecem a leitura didática.

## Citações no Quarto

O sistema autor-data admite duas formas, e a escolha depende da **posição da
citação na frase**:

| Posição | Forma | Sintaxe no Quarto | Resultado |
|---|---|---|---|
| Início ou meio da frase | Narrativa — o autor é parte do texto e só o ano fica entre parênteses | `@forouzan2011` | Forouzan e Mosharraf (2011) |
| Fim da frase | Entre parênteses — autor e ano juntos | `[@forouzan2011]` | (Forouzan; Mosharraf, 2011) |

```markdown
@forouzan2011 apresenta a hierarquia de memória em quatro níveis.

A hierarquia de memória troca velocidade por capacidade [@forouzan2011].

Uma citação direta precisa do localizador [@forouzan2011, p. 142].
```

**A forma entre parênteses só aparece no fim da frase.** Citação entre
parênteses no meio de uma oração interrompe a leitura e não corresponde ao
previsto na norma. Quando a referência precisar aparecer antes do ponto final,
use a forma narrativa ou divida a frase, de modo que a citação caia no fim de
uma delas.

Evite, por isso, citar dentro de listas separadas por ponto e vírgula: ou a
citação encerra a frase, ou o autor entra no texto.

Em citações diretas, informe página, seção, tempo ou outro localizador que
permita encontrar o trecho. Em citações indiretas, o localizador é opcional.

### Caixa alta

A NBR 10520:2023 eliminou a caixa alta nas citações: escreve-se `(Forouzan; Mosharraf, 2011)` e
`Forouzan e Mosharraf (2011)`, e não `(FOROUZAN; MOSHARRAF, 2011)`. O sobrenome em maiúsculas permanece apenas
na lista de referências, conforme a NBR 6023. O arquivo `abnt.csl` foi ajustado
para esse comportamento — a versão distribuída originalmente ainda aplicava
maiúsculas na citação, apesar de um comentário interno já registrar a mudança.

O ponto final encerra a frase, e não a citação: fica **depois** do parêntese de
fechamento.

## Metadados BibTeX

Cadastre os elementos essenciais e, quando úteis para identificar o documento,
os complementares. Para fontes online, informe `url` e `urldate`; para artigos,
inclua DOI quando houver; para livros, inclua local, editora e edição quando
disponíveis. Somente obras efetivamente citadas devem compor a lista final.

```bibtex
@online{exemplo,
  author  = {{Entidade Responsável}},
  title   = {Título do documento},
  year    = {2026},
  url     = {https://exemplo.edu.br/documento},
  urldate = {2026-08-07}
}
```

## Validação

Renderize e confira especialmente a página final de referências no PDF:

```bash
quarto render
(cd slides && quarto render)
```

Se a UFT ou o curso publicar um manual próprio, ele prevalece nos detalhes
institucionais sobre esta configuração geral.

Arquivos auxiliares `*_files/` que possam ser gerados durante a conversão para
PDF são ignorados pelo Git.
