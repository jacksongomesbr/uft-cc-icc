# Guia de escrita

Este guia trata da **prosa**: frase, parágrafo, vocabulário e voz. Os outros dois
guias do projeto tratam de coisas distintas e não se sobrepõem a este:

- `AUTHORING.md` — figuras, tabelas, diagramas, trechos de código e referência
  cruzada.
- `ABNT.md` — citação, referência bibliográfica e apresentação do PDF.

## Bases

A ABNT NBR ISO 24495-1:2024, tradução da ISO 24495-1:2023, define os princípios
de linguagem simples e organiza o trabalho em planejar, desenvolver e testar.
Ela dá o critério geral deste guia.

A ASD-STE100, especificação de inglês técnico simplificado mantida pela ASD, dá
o mecanismo: **linguagem controlada**. A diferença entre as duas importa.
Linguagem simples orienta escolhas e se verifica com leitores; linguagem
controlada restringe o vocabulário por lista e se verifica por ferramenta. As
regras abaixo são adaptadas dos princípios da ASD-STE100 para o português, e não
traduzidas dela.

Não confunda os dois instrumentos ao justificar uma decisão de escrita.

## Os quatro princípios

Um capítulo cumpre a norma quando o aluno consegue, na ordem:

1. **Relevante** — encontrar apenas o que precisa para a entrega da semana, sem
   conteúdo que não será usado nem cobrado.
2. **Localizável** — achar o trecho pelo título da seção, sem ler o capítulo
   inteiro.
3. **Compreensível** — entender na primeira leitura, sem consultar outra fonte
   para decifrar um termo.
4. **Utilizável** — aplicar o que leu ao próprio projeto, e não apenas repetir.

O quarto é o que a avaliação verifica. Seção que o aluno entende e não usa está
mal posicionada, mesmo quando cada frase está correta.

## Frase e parágrafo

**Uma frase, uma afirmação.** Se a frase tem duas afirmações independentes,
separe em duas.

**Comprimento.** Até 25 palavras em frase explicativa, até 20 em instrução. O
limite é gatilho de revisão, não proibição: frase longa que se lê bem em voz
alta pode ficar.

**Parágrafo com um assunto e no máximo seis frases.** O primeiro período diz do
que o parágrafo trata.

**Voz ativa, com sujeito explícito.** Escreva quem faz. A construção impessoal
com `-se` é legítima em português técnico e aparece no material quando o agente
é irrelevante ou óbvio. Em roteiro de laboratório, porém, nomeie o agente: quem
executa cada passo precisa estar dito.

- Evite: "Definem-se os papéis mínimos."
- Prefira: "A equipe define os papéis mínimos."

**Ordem direta.** Sujeito, verbo, complemento. Deslocamento só quando ele carrega
ênfase que a frase precisa.

**No máximo dois níveis de `de` encadeado.** Cadeias longas de substantivos são o
equivalente português dos aglomerados nominais do inglês.

- Evite: "o processo de controle de mudança de requisito do projeto"
- Prefira: "o controle de mudanças de requisito, no projeto"

**Afirme.** Uma negação por frase, no máximo. Dupla negação é reescrita.

**Tempos simples.** Presente para o que é sempre verdadeiro, futuro para o que a
equipe vai fazer. Evite futuro do pretérito composto e locuções longas.

**Não corte para encurtar.** Artigo, preposição e pronome relativo (`que`, `cujo`)
ficam. Omiti-los economiza duas palavras e custa uma releitura.

## Vocabulário controlado

**Um conceito, um termo, sempre o mesmo.** Trocar de palavra para não repetir é
elegância que confunde: o aluno pergunta se são duas coisas. Repita o termo.

**Um termo, um conceito.** Se a mesma palavra serve a duas ideias no material,
uma das duas precisa de outro nome.

**Glose na primeira ocorrência**, em negrito, e não use negrito para ênfase
genérica depois disso.

### Termos decididos

Estas escolhas valem para os quatro livros. A coluna da direita não é erro de
português: é forma que o material não usa, para que o texto fique uniforme.

| Conceito | Use | Não use |
|---|---|---|
| Resposta que volta ao processo | realimentação | feedback |
| Colocar o sistema em ambiente de uso | implantação, implantar | deploy, deployar |
| Linha de trabalho no repositório | ramo | branch |
| Juntar duas linhas de trabalho | integração, integrar | merge (como conceito) |
| Comportamento incorreto do software | defeito | bug |
| Tempo e recurso consumidos | desempenho | performance |
| Biblioteca ou plataforma de apoio | framework | arcabouço |
| Leitura do código por outra pessoa | revisão de código | code review |
| Custo adicional de uma prática | esforço adicional | overhead |

### Comando não é conceito

Nome de comando, opção, arquivo e identificador fica em inglês, em fonte de
código, exatamente como se digita: `git merge`, `git branch`, `main`,
`PROCESSO.md`. A regra da tabela acima vale para o **conceito** no corpo do
texto, não para o comando.

- Correto: "o `git merge` faz a integração".
- Errado: "o `git integrar`".

### Estrangeirismo consolidado

Alguns termos não têm tradução corrente na área e ficam em inglês, sem itálico,
porque o aluno vai encontrá-los assim em qualquer lugar: commit, pull request,
issue, tag, backlog, sprint, software, hardware, script.

Termo estrangeiro usado **como palavra**, e não como conceito adotado, vai em
itálico: *iterative enhancement*, *safety*.

## Voz do material

**O leitor é o aluno, tratado por "vocês".** É a escolha do material e vale em
todos os capítulos.

**Não use primeira pessoa do singular.** Nem "eu", nem "na minha experiência",
nem "como eu disse". Quando a afirmação depende de experiência docente e não de
fonte, diga isso de forma impessoal: "é uma observação de experiência, não um
dado".

**Não use "nós" para se referir ao autor.** "Nós" só quando incluir de fato o
aluno.

**Afirmação sem fonte precisa ser marcada como tal.** Todo número e toda
afirmação empírica ou tem citação, ou vem declarada como observação. O material
critica estatística sem procedência; ele não pode produzir uma.

**Português direto e técnico.** Evite terminologia associada a agendas ESG.
Prefira os termos convencionais do contexto: usuário, aluno, professor, equipe.

## Tipografia

- **Aspas retas** (`"`), nunca curvas. Vale também para os arquivos de
  instrução, não só para os capítulos.
- **Travessão** é pontuação normal do português. Use quando for a pontuação
  certa; não o troque por vírgula só para evitá-lo.
- **Negrito** define termo na primeira ocorrência. Não use para ênfase avulsa
  nem para criar título dentro de lista.
- **Itálico** para termo estrangeiro usado como palavra e para título de obra.
- Sem emoji.
- Quebre as linhas do Markdown em torno de 80 colunas, como o restante do
  material.

## Padrões a evitar

Estes aparecem com regularidade na revisão e todos têm a mesma origem: escrever
sobre o texto em vez de escrever o texto.

**Anunciar em vez de dizer.** "Vale registrar que", "é importante notar que",
"duas leituras precisam ser feitas". Corte o anúncio e faça a afirmação.

**Parágrafo que repete o título.** Depois de um título de seção, o primeiro
parágrafo entra no assunto. Não reformule o título em uma linha antes.

**Conclusão genérica.** Encerre na última afirmação concreta. Não escreva
parágrafo de fechamento que só recapitula.

**Grupos de três forçados.** Enumerar três itens porque três soa completo. Se
são dois, diga dois.

**Variação elegante.** Ver vocabulário controlado, acima. É o defeito mais
frequente e o mais difícil de enxergar relendo o próprio texto.

## Verificação

Antes de considerar um capítulo pronto:

```bash
LC_ALL=en_US.UTF-8 grep -rniE "feedback|deploy|performance|arcabouço" chapters slides
```

```bash
LC_ALL=en_US.UTF-8 grep -rl '[“”‘’]' --include='*.qmd' --include='*.md' .
```

```bash
LC_ALL=en_US.UTF-8 grep -rnwE "eu|meu|minha|meus|minhas" chapters slides
```

Duas armadilhas de ambiente, ambas já resolvidas nas linhas acima. O `grep` do
macOS não tem a opção `-P`, então os padrões usam apenas expressão regular
estendida. E, com a locale vazia, esse mesmo `grep` compara byte a byte: sem o
`LC_ALL`, qualquer palavra acentuada casa com uma classe que contenha caractere
multibyte, e a busca por aspas curvas acusa quase todos os arquivos.

O primeiro e o terceiro comandos produzem falso positivo quando o termo está
dentro de citação direta ou é nome de comando. Fala de aluno reproduzida entre
aspas fica como foi dita, mesmo em primeira pessoa. Confira o contexto antes de
trocar. Os três comandos acusam este guia, que cita os termos e os caracteres
proibidos para poder proibi-los.

Um capítulo e seus slides são o mesmo material em dois formatos. Quando um termo
muda no capítulo, ele muda no deck também.

## Decidir um termo novo

Quando aparecer um conceito sem termo decidido:

1. Verifique como o material já o chama, com `grep`, nos quatro livros.
2. Se houver mais de uma forma, escolha a majoritária, salvo motivo explícito.
3. Acrescente a linha à tabela deste guia, nos quatro projetos.
4. Uniformize as ocorrências divergentes no mesmo commit.

Termo decidido em um livro vale nos outros. Divergência entre eles é defeito,
não estilo local.
