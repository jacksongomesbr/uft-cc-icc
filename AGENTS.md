## Guias do projeto

Três guias, sem sobreposição. Leia o que corresponde ao que você vai alterar.

- `ESCRITA.md` — prosa: frase, parágrafo, vocabulário controlado e voz.
  **Leia antes de escrever ou revisar qualquer texto corrido**, em capítulo,
  slide, parecer ou changelog.
- `AUTHORING.md` — figuras, tabelas, diagramas, código e referência cruzada.
- `ABNT.md` — citação, referência bibliográfica e apresentação do PDF.

## Verificação automática da escrita

Depois de cada gravação, um hook roda os comandos da seção "Verificação" do
`ESCRITA.md` sobre os `.qmd` modificados e reporta o que encontrou. Ele detecta e
não altera nada: a decisão de corrigir é de quem está escrevendo.

O que ele reporta admite falso positivo, e o próprio relatório diz quais são:
termo dentro de citação direta, fala reproduzida entre aspas, nome de comando, e
dois-pontos de explicação no lugar de revelação. Confira o contexto antes de
trocar, e deixe como está o que for legítimo.

O hook dispara pelo estado do repositório, e não pela ferramenta usada, então
vale também para gravação feita por heredoc ou script. Ele fica em
`~/.claude/hooks/escrita-check.sh` e serve aos quatro livros.

Para prosa em `.md`, como parecer, guia ou changelog, vale a skill `humanizer`.
Ela fica fora dos `.qmd` de propósito: as regras dela divergem do `ESCRITA.md` em
travessão, negrito de glosa e grupo de três, e reescrever texto com notação
LaTeX, chave de citação e referência cruzada é arriscado como passo automático.

## Linguagem do projeto

O detalhamento está em `ESCRITA.md`. Estas são as regras que valem mesmo sem
consultá-lo:

- Use português direto e técnico. Evite terminologia associada a agendas ESG.
- Prefira os termos convencionais adequados ao contexto, como "usuário",
  "aluno", "professor" e "equipe".
- Um conceito, um termo, sempre o mesmo. Não troque de palavra para não repetir.
- Trate o leitor por "vocês". Nunca escreva em primeira pessoa do singular.
- Aspas retas, nunca curvas.
- Afirmação empírica ou tem citação, ou vem declarada como observação.
- Capítulo e slides são o mesmo material: termo que muda em um muda no outro.

## Notação numérica

Esta disciplina apresenta os sistemas de numeração, e a notação precisa ser
uniforme desde a primeira ocorrência.

- Use LaTeX para toda notação: `$1011_2$` no meio da frase e `$$...$$` em bloco.
- A base vai em subscrito, sempre em algarismos decimais: $1011_2$, $13_8$,
  $2\mathrm{F}_{16}$, $47_{10}$. Não escreva `1011b`, `0b1011` nem `0x2F` no
  corpo do texto; essas formas pertencem ao código e ficam em fonte de código.
- Escreva os dígitos hexadecimais maiúsculos e em fonte normal: $2\mathrm{F}$,
  não $2f$.
- Fixe a notação no capítulo 5 e mantenha-a. O capítulo 6 depende dela.
- Separe a vírgula decimal do ponto de milhar conforme o português: $1{,}5$ e
  $1\,024$.
- Ao apresentar uma conversão, mostre o procedimento completo pelo menos uma
  vez. Resultado sem procedimento não ensina a converter.

## Limites de repertório da turma

A disciplina é do 1º período, e é a primeira disciplina de Computação do curso.
O material não pode pressupor nada além do ensino médio.

Em particular, não pressuponha:

- **Programação.** Lógica de Programação é cursada em paralelo, no mesmo
  período, e não antes. Trecho de código serve para ilustrar, nunca para
  explicar. Se a explicação só funciona com código, ela está no lugar errado.
- **Matemática além do ensino médio.** Sem somatório, sem logaritmo como
  ferramenta, sem indução. Potência de base dois é apresentada, não suposta.
- **Arquitetura, sistemas operacionais e redes.** As três disciplinas vêm
  depois. O que este livro apresenta desses assuntos basta para reconhecer o
  problema, não para resolvê-lo.
- **Vocabulário da área.** Termos como "compilar", "processo", "protocolo" e
  "instância" precisam de glosa na primeira ocorrência, mesmo parecendo
  triviais.

Consulte `.claude/skills/avaliar-conteudo/references/matriz-curricular.md`
antes de apoiar uma explicação em outra disciplina.

## Heterogeneidade da turma

É a característica que mais distingue esta disciplina das demais do curso. Parte
da turma programa desde a adolescência; parte nunca usou um terminal, e alguns
nunca tiveram computador próprio.

Por isso, em cada capítulo:

- Deixe explícito o que é piso e o que é extensão, na atividade e na leitura.
- Não trate como óbvio o que só é óbvio para quem já teve contato com a área.
- Não escreva o piso de forma condescendente. Quem já sabe também vai ler.

Material calibrado só para o aluno mais preparado perde metade da turma em
silêncio, porque quem ficou para trás no primeiro período raramente pergunta.
