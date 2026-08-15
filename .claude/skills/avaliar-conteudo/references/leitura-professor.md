# Leitura do professor

Esta leitura é a de quem ministra a disciplina há alguns semestres: conhece os
conceitos, conhece a matriz curricular, já viu onde as turmas anteriores
travaram e sabe o que cabe em um encontro.

## Dimensões

### Correção técnica

Em uma disciplina de panorama, o erro típico não é a afirmação falsa: é a
**afirmação simplificada ao ponto de virar falsa**, e a atribuição histórica
frouxa.

Verifique três classes de conteúdo, com métodos diferentes.

**O que se confere por cálculo.** Conversão entre bases, aritmética binária,
complemento de dois, intervalo representável em $k$ bits, múltiplos de byte.
Refaça as contas, uma a uma. Confira também a coerência da notação: base em
subscrito decimal, dígitos hexadecimais maiúsculos, vírgula decimal em
português. Um erro de conta aqui é o pior defeito possível, porque este é o
único conteúdo do livro que o aluno vai reproduzir mecanicamente.

**O que se confere na fonte.** Legislação, licenças de software, datas e
atribuições históricas, dados de atualidade. Consulte a fonte primária. A
história da Computação é especialmente sujeita a atribuição simplificada: "quem
inventou o computador" não tem resposta única, e um texto que dá uma sugere
precisão que não existe.

**O que se confere pelo alcance.** Afirmação sobre o que uma tecnologia atual
faz. Verifique se o texto distingue capacidade demonstrada de promessa
comercial, sobretudo nos capítulos de atualidades e de áreas da Computação.

Cheque as simplificações. Simplificar é a razão de existir desta disciplina; o
problema é a simplificação que o aluno terá de desaprender depois. Distinga:

- Recorte honesto — diz menos do que existe, e sinaliza que há mais.
- Simplificação nociva — cria um modelo mental que a disciplina posterior vai
  precisar demolir.

Analogias pedem atenção redobrada, porque este livro depende delas. A memória
comparada a uma estante, o processador comparado a alguém que segue uma receita:
são úteis, e quebram em pontos específicos que precisam estar ditos. Analogia
sem o limite declarado é a forma mais comum de simplificação nociva.

### Progressão e pré-requisitos

O capítulo depende apenas do que já foi apresentado no livro? Não há disciplina
anterior de onde puxar: ICC é a primeira. Localize qualquer dependência de
Lógica de Programação, que é cursada em paralelo e não antes.

Verifique também o sentido inverso, que é o risco maior aqui: conceito
formalizado cedo demais, invadindo o território de Sistemas Digitais,
Organização de Computadores, Sistemas Operacionais ou Compiladores. Consulte
`matriz-curricular.md` para a fronteira de cada assunto.

E verifique a ordem interna: o capítulo de aritmética binária depende do de
sistemas numéricos, e o de impactos ambientais depende de o aluno saber o que
consome energia dentro de um computador.

### Caráter integrador

Esta disciplina não integra disciplinas anteriores, porque não há anteriores.
Ela integra em três outras direções, e é isso que se verifica.

1. **Para a frente.** O capítulo indica qual disciplina do curso vai aprofundar
   o assunto? Essa sinalização é o principal serviço de uma disciplina de
   panorama, e a mais fácil de esquecer.
2. **Para a experiência do aluno.** O capítulo parte de algo que a turma já
   vive, ou começa do abstrato? Um capítulo sobre LGPD que começa pelo termo de
   uso que o aluno aceitou ontem funciona; um que começa pelo artigo 5º não.
3. **Entre os próprios capítulos.** O bloco técnico e o bloco de ética e
   sociedade são a mesma disciplina. Um capítulo sobre impacto ambiental que não
   retoma o consumo do hardware apresentado no capítulo 4 desperdiçou a própria
   estrutura do livro.

Aponte oportunidades desperdiçadas com a mesma clareza com que aponta erros.
Uma disciplina de panorama que não conecta cumpriu a ementa e falhou no
propósito.

### Alinhamento com objetivos e avaliação

Os objetivos de aprendizagem declarados no início do capítulo são efetivamente
cobertos pelo corpo do texto? Verbo de objetivo é compromisso.

Nesta disciplina, os verbos se dividem em três grupos, e cada um pede um tipo
diferente de evidência:

- **Reconhecer, identificar, descrever** — evidência de reconhecimento. Uma
  questão curta basta.
- **Converter, realizar** — evidência de execução. Exige exercício repetido, e
  um exemplo resolvido não é exercício.
- **Analisar criticamente, avaliar, discutir** — evidência de aplicação a um
  caso. Exige que o capítulo forneça um critério de análise, e não apenas o
  princípio. Pedir opinião não verifica esse objetivo: o aluno já tinha opinião
  antes de ler.

O último grupo é o que mais falha. Verifique se a atividade entrega um roteiro,
uma rubrica ou um conjunto de perguntas que o aluno possa aplicar, ou se apenas
convida a refletir.

Verifique a relação com os marcos do trabalho integrador: o capítulo contribui
para o marco seguinte, ou é conteúdo paralelo que a equipe não vai usar?

### Viabilidade no encontro

O volume cabe em um encontro, considerando exposição, prática e dúvidas? A
atividade cabe no tempo extraclasse de quem está no primeiro semestre de curso
superior e ainda não tem rotina de estudo formada?

Considere a heterogeneidade da turma, que aqui é extrema. Atividade calibrada
para o aluno que já programava deixa metade da sala para trás; calibrada para o
que nunca usou um computador, desperdiça o tempo da outra metade. Aponte onde
falta um piso claro e um caminho de extensão, e verifique se o piso está escrito
sem condescendência.

Considere o encadeamento: o capítulo deixa a turma em condição de começar o
próximo encontro, ou cria dívida que vai se acumular? Os capítulos 5 e 6 são os
que mais acumulam, porque dependem de fluência adquirida por treino.

### Fontes e citações

Toda afirmação que precisa de fonte tem uma? As fontes sustentam o que está
escrito, ou foram anexadas por perto?

Nesta disciplina, três exigências específicas:

- **Legislação vai à fonte primária.** LGPD, direito autoral e lei de software
  citam-se pelo texto legal, e não por página de escritório de advocacia.
- **História vai à bibliografia da ementa**, e atribuição de invento vem com a
  ressalva quando a autoria é disputada.
- **Atualidade não se sustenta em divulgação.** O capítulo 15 ensina o aluno a
  avaliar procedência de fonte; ele não pode violar o próprio critério que
  ensina.

Confira a coerência entre o que é citado no texto e o que está em
`references.bib`, e se o estilo autor-data está aplicado conforme `ABNT.md`.

## Postura

Escreva como parecer de colega de área, não como avaliação institucional.
Julgamento direto, sem rodeio e sem aspereza gratuita.

Diga o que está bom quando estiver, com a mesma precisão com que aponta o que
falta. Elogio localizado informa tanto quanto crítica localizada, porque indica
o que preservar na próxima revisão.

Onde houver decisão pedagógica defensável em mais de uma direção, apresente a
alternativa e o critério, em vez de impor preferência. Em uma disciplina de
panorama, quase toda escolha de profundidade é defensável em mais de uma
direção, e o parecer precisa reconhecer isso em vez de tratar a própria
preferência como norma.
