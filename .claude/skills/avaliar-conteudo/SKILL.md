---
name: avaliar-conteudo
description: Avalia capítulos e slides do livro sob duas perspectivas independentes — professor da disciplina e aluno do 1º período — e aplica no arquivo as correções mecânicas que o parecer aponta, deixando as decisões pedagógicas para o autor. Use quando o usuário pedir avaliação, revisão pedagógica, parecer sobre um capítulo, ou invocar /avaliar-conteudo. Não roda automaticamente.
---

# Avaliação de conteúdo didático

Produz um parecer sobre material já escrito, a partir de duas leituras
independentes: a de quem ministra a disciplina e a de quem a cursa. As duas
leituras respondem a perguntas diferentes e não devem ser fundidas.

Terminadas as leituras, a skill aplica no arquivo os achados que têm uma única
correção possível e deixa registrados, sem tocar no texto, os que dependem de
decisão do autor. A seção "O que aplicar e o que apenas relatar" define a
fronteira.

## Alvo

O usuário indica o alvo: um capítulo (`chapters/01-apresentacao-e-panorama.qmd`), um intervalo, ou
o livro inteiro. Sem indicação, pergunte antes de ler qualquer coisa — avaliar
o alvo errado desperdiça a leitura toda.

Todo capítulo tem slides correspondentes em `slides/`, com o mesmo prefixo
numérico. Leia os dois: o capítulo é o material de estudo, os slides são a
aula. Divergências entre eles são achado relevante, não detalhe.

Leia também, para situar o alvo no conjunto:

- `index.qmd` — objetivos da disciplina, conhecimentos prévios, marcos do
  projeto em equipe.
- `_quarto.yml` — posição do capítulo na sequência dos 16 capítulos.
- Os capítulos imediatamente anterior e posterior, ao menos nos títulos e
  objetivos de aprendizagem, para julgar progressão e repetição.

## Ordem das duas leituras

Execute **primeiro a leitura do aluno, depois a do professor**. A ordem
importa: uma vez que a análise especialista esteja escrita, ela ancora o
julgamento e a leitura do aluno passa a racionalizar o que o especialista já
justificou. O que o aluno estranha na primeira passagem é justamente o dado
que se perde quando a explicação técnica vem antes.

Cada leitura tem seu arquivo de referência, que deve ser lido antes de
escrever a seção correspondente:

- `references/leitura-aluno.md`
- `references/leitura-professor.md`
- `references/matriz-curricular.md` — o que o aluno já cursou, usado pelas
  duas leituras.

## Regras que valem para as duas leituras

**Ancore todo achado.** Cada ponto cita `arquivo:linha` e transcreve o trecho
comentado. Achado sem localização não entra no relatório — não dá para agir
sobre ele.

**Separe defeito de preferência.** "Está errado", "vai travar o aluno" e "eu
faria diferente" são coisas distintas e devem aparecer com pesos distintos.
Preferência estilística só entra se houver consequência para quem lê.

**Não invente problema para parecer rigoroso.** Se uma dimensão está bem
resolvida, diga isso e siga. Um relatório honesto com quatro achados vale mais
que um com quinze inflados. Mas percorra a lista de verificação inteira antes
de concluir que não há nada: o risco maior é o elogio genérico que não olhou.

**Leia antes de escrever.** Nenhuma correção é aplicada durante as leituras. As
duas leituras são escritas primeiro, inteiras, e só depois o arquivo é alterado.
Corrigir enquanto lê contamina a leitura do aluno, que passa a procurar o que dá
para consertar em vez de relatar onde travou.

**Verifique o que é verificável.** Conversão entre bases, aritmética binária e
representação de dados se conferem por cálculo, e devem ser conferidas, e não
lidas. Afirmação sobre legislação, sobre licenças de software ou sobre dados de
atualidade pode estar desatualizada: consulte a fonte primária antes de afirmar
que está certa ou errada. Não avalie de memória o que muda com o tempo.

## Severidade

Classifique cada achado:

- **Bloqueia** — erro técnico, ou lacuna que impede o aluno de concluir a
  atividade proposta. Corrigir antes de usar em aula.
- **Atrapalha** — o aluno chega ao fim, mas com esforço desnecessário ou
  entendimento parcial. Corrigir na próxima revisão.
- **Vale considerar** — melhoria real, sem urgência.

## O que aplicar e o que apenas relatar

Depois de escritas as duas leituras, aplique no arquivo os achados da primeira
lista e deixe os da segunda apenas no parecer.

**Aplique.** São os achados com uma única correção defensável, sem escolha
pedagógica no meio:

- Padrão de escrita proibido pelo `ESCRITA.md`, incluindo negação usada como
  preparação, anunciar em vez de dizer, conclusão genérica, aspas curvas,
  primeira pessoa do singular e termo fora da tabela de vocabulário controlado.
- Termo técnico ou sigla sem glosa na primeira ocorrência.
- Referência posicional a figura ou tabela, que o `AUTHORING.md` proíbe.
- Erro de conta, de data ou de atribuição, depois de conferido na fonte.
- Citação faltando para afirmação que já está no texto. Acrescente a fonte, nunca
  a afirmação.
- Divergência de termo entre capítulo e slides, alinhando os dois.

**Apenas relate.** São os achados em que existe mais de uma direção defensável, e
escolher é do autor:

- Ordem, recorte e proporção entre seções.
- O que entra e o que sai do escopo do capítulo.
- Volume, piso e extensão, e o que a atividade exige.
- Redação de atividade nova ou de seção nova.
- Slides que faltam.
- Qualquer achado em que o próprio parecer apresente duas saídas. A regra de
  conduta da leitura do professor manda oferecer a alternativa em vez de impor
  preferência, e aplicar uma delas contraria isso.

Na dúvida sobre a qual lista um achado pertence, ele pertence à segunda.

**Depois de aplicar**, renderize o alvo e rode os comandos da seção
"Verificação" do `ESCRITA.md`. Uma correção que quebra a renderização ou que
introduz outro padrão proibido custa mais que o defeito que ela removeu.

## Formato do parecer

Escreva em português direto e técnico, conforme `AGENTS.md`. Estrutura:

```markdown
# Avaliação — <alvo>

<data> · <arquivos avaliados>

## Leitura do aluno

### Onde travei
### O que ficou solto
### Se isso caísse na prova ou no projeto
### Tempo e esforço

## Leitura do professor

### Correção técnica
### Progressão e pré-requisitos
### Caráter integrador
### Alinhamento com objetivos e avaliação
### Viabilidade no encontro
### Fontes e citações

## Achados por severidade

| Severidade | Local | Achado | Direção da correção | Situação |
|---|---|---|---|---|

## Síntese
```

A coluna "Situação" recebe **aplicado** ou **pendente**, e o parecer é o registro
de qual foi qual. Um achado aplicado descreve o que estava no arquivo antes da
correção, porque é isso que a comparação entre pareceres de revisões diferentes
vai precisar.

Na síntese, responda em três a cinco linhas: o material está pronto para ir
para a aula como está? Se não, o que precisa mudar primeiro? Diga também quantos
achados foram aplicados e quantos ficaram pendentes de decisão do autor.

## Registro

Salve o parecer em `avaliacoes/AAAA-MM-DD-<alvo>.md` e informe o caminho.
Pareceres antigos ficam no repositório e servem para comparar revisões — não
sobrescreva um parecer anterior; crie um novo arquivo.

Depois de salvar, apresente no chat apenas a tabela de achados e a síntese.
O parecer completo fica no arquivo.

Informe também o que foi alterado em cada arquivo do livro, para que a revisão do
que a skill escreveu seja possível sem abrir o diff. Se o usuário pedir só o
parecer, sem gravação, obedeça e marque todos os achados como pendentes.
