# Changelog

Este projeto adere ao [Keep a Changelog](https://keepachangelog.com/pt-BR/1.1.0/)
e ao [Versionamento Semântico](https://semver.org/lang/pt-BR/).

## Não publicado

### Adicionado

- Capítulo 4 e seus slides, sobre a organização básica do hardware: o interior
  do processador, o repertório de instruções, a hierarquia de memória em cinco
  níveis, os barramentos e o caminho até os periféricos.
- TikZ como terceira ferramenta de diagrama, para figura que carrega uma
  grandeza — largura que significa capacidade, eixo logarítmico, moldura com
  título. As fontes ficam em `.tikz.tex` e geram SVG pelo `Makefile`, com o
  estilo comum em `diagrams/figuras.sty`.
- Alvo `make site` no `Makefile`, que regenera os diagramas e renderiza livro e
  slides na ordem em que um não apaga o resultado do outro.
- Cinco fotografias em licença permissiva do Wikimedia Commons no capítulo 4,
  com a procedência e o tratamento registrados em `diagrams/04/PROCEDENCIA.md`.
- Verificação automática da escrita depois de cada gravação: hook que roda os
  comandos do `ESCRITA.md` sobre os `.qmd` modificados e reporta sem alterar.
- Estrutura do livro em Quarto, com 16 capítulos, apêndice de apresentações e
  projeto de slides em Reveal.js.
- Plano dos 18 encontros, dividido em fundamentos técnicos e em profissão,
  ética e sociedade, com os marcos do trabalho integrador.
- Objetivos de aprendizagem e conteúdo previsto de cada capítulo, derivados da
  ementa e dos objetivos específicos da disciplina.
- Bibliografia básica e complementar da ementa, com a Lei nº 13.709/2018 como
  fonte primária do capítulo sobre proteção de dados.
- Guias de escrita, autoria técnica e formatação ABNT, com as regras de notação
  numérica e os limites de repertório da turma do 1º período.
- Skill de avaliação de conteúdo, com as rubricas de leitura do aluno e do
  professor calibradas para o primeiro período.
- Capítulo 3, sobre o computador como sistema: noção de sistema com partes,
  relações e fronteira; os cinco componentes; a estrutura funcional básica; o
  ciclo de busca e execução; e a escolha da camada em que atacar um problema.
- Diagramas Graphviz do capítulo 3: fronteira do sistema, cinco componentes,
  estrutura funcional e camadas em que a lentidão pode ser atacada.
- Regra contra negação usada como preparação acrescentada ao `ESCRITA.md` dos
  quatro livros, com o comando de conferência que desdobra os parágrafos.
- Seção sobre o primeiro sistema operacional dividida em duas: o supervisor de
  lote e a pergunta sobre qual foi o primeiro, respondida pelo critério, com o
  GM-NAA I/O em 1956 e o supervisor do Atlas em 1962, e encaminhamento explícito
  do que é função de sistema operacional para o capítulo 7.
- Fontes de Patrick (1987) e Kilburn, Payne e Howarth (1961) na bibliografia.
- Eliminação da construção de negação seguida de revelação em todo o livro, de
  24 ocorrências no capítulo 2 e 10 nos capítulos 1 e 3 para nenhuma.
- As quatro perguntas que descrevem um sistema ganham subseção com título
  próprio e tabela citável no capítulo 3, com uma resposta de exemplo para cada
  uma. A tarefa passa a apontar para a tabela em vez de descrever o caminho, e
  a parte sobre falha de componente remete à tabela que a sustenta.
- Capítulo 3 alinhado à metodologia AOP, como o capítulo 2: propósito na forma
  "ser capaz de", seção de confronto logo depois da tarefa de parada, com a
  pergunta de aprendizagem que ela produz, retirada gradual de apoio no traçado
  do laço e transferência com variação estrutural, incluindo um caso em que o
  instrumento das camadas não se aplica.
- Slides do capítulo 3 executando a fase 4 do ciclo: propósito, três slides de
  fundo escuro para a tentativa escrita e o confronto antes da instrução.
- Traçado de um laço no capítulo 3, com programa próprio e os dez ciclos da
  execução, mostrando a repetição sair de comparar e pular em vez de afirmá-la.
- Correção da terceira observação do traçado do capítulo 3: trocar o limite de
  100 para 10 produz um laço que não termina, o que o texto não dizia.
- Estado da máquina ligado à seção sobre estado do sistema, e o relógio
  apresentado como o que faz o ciclo avançar.
- Slides do capítulo 3, que antes eram um esqueleto de roteiro.
- Bloco de armazenamento renomeado para "armazenamento secundário" no capítulo
  3 e no diagrama da estrutura funcional, alinhando com o vocabulário do
  capítulo 4 e liberando "armazenamento" para nomear só a função.
- Piso e extensão declarados na abertura da tarefa do capítulo 3, com extensão
  própria em cada uma das três partes.
- Correções no capítulo 3 a partir do parecer de 23/08/2026: atribuição a
  Velloso ajustada ao que a fonte sustenta, e três padrões de escrita proibidos
  pelo `ESCRITA.md` removidos.
- Correções no capítulo 2 a partir do parecer de 22/08/2026: bloco de software
  promovido a seção própria, glosa de válvula, criptanálise, sub-rotina,
  escalonamento, comutação de pacotes, protocolo e linguagem de marcação, e
  retirada do superlativo sem critério sobre a produção em série do UNIVAC I.
- Slides do capítulo 2 cobrindo o bloco de software, que a aula não expunha.
- Piso e extensão declarados na tarefa do capítulo 2, com a fonte de onde
  levantar as datas do exercício de aplicação.
- Biografia de Hopper por Beyer (2009) na bibliografia, como fonte do relato
  sobre a resistência à tradução automática e da carreira na Marinha.
- Aprofundamento da seção do capítulo 2 sobre a consolidação do software:
  o UNIVAC I como produto, a trajetória de Grace Hopper, o percurso do A-0 ao
  FLOW-MATIC e a origem do COBOL como linguagem comercial de alto nível.
- Três fotografias de domínio público ou em CC BY no capítulo 2: a entrega do
  UNIVAC I ao Censo dos Estados Unidos, Hopper ao teclado de um UNIVAC e o
  retrato oficial dela na Marinha.
- Fontes primárias de Hopper (1952) e Sammet (1978) na bibliografia, com DOI
  conferido no Crossref.
- Geração dos diagramas Graphviz por `Makefile`.
- Publicação automática no GitHub Pages a cada push na branch principal.
