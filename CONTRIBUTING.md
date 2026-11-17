# Como contribuir com o BR-Core

## Maturidade e reconhecimento como core nacional

O BR-Core está em FMM 1. Os artefatos estão em construção e podem mudar.

Até concluir o processo abaixo, o BR-Core é a base nacional em construção, e ainda não o core brasileiro endossado pelo HL7. Pelo Acordo de Afiliada (cláusulas 6.10.2 e 6.10.2.2), declarar o guia core nacional é atribuição do HL7 Brasil, depois do processo de votação. O rótulo de release (STU1) indica a sequência de versões, não um padrão de uso experimental aprovado. O mesmo vale para o IPS Brasil, o THO Brasil e os guias da RNDS.

O caminho segue o modelo de maturidade do FHIR (FMM) e o FHIR Community Process, conduzido pelo HL7 Brasil como afiliada do HL7 International:

| Etapa | Evidência | Resultado |
|---|---|---|
| FMM 1 | QA sem erros, exemplos válidos, GT considera o artefato completo | Situação atual |
| FMM 2 | Teste entre ao menos três sistemas independentes em connectathon do HL7 Brasil ou no ambiente de homologação da RNDS | Relatório do connectathon |
| FMM 3 | Ballot do HL7 Brasil, com comentários registrados e respondidos | Versão `-ballot` e reconciliação |
| STU (Trial Use) | Publicação após o ballot | Padrão de uso experimental |
| FMM 4 e 5 | Implementação em pilotos e depois em produção na RNDS | Base para o status Normativo |
| Normativo | Decisão do Ministério da Saúde, a partir do padrão estabilizado | Padrão estável e obrigatório |

O reconhecimento como core nacional vem do ballot, e não da publicação.

## Fluxo de versões: merge contínuo, publicação em lote

Os PRs são pequenos e entram no `main` assim que revisados. A publicação de versão é outro passo e acontece em lote.

### 1. PR de mudança

- Um assunto por PR. PR curto é revisado e integrado mais rápido.
- O PR **não altera** `version` no `sushi-config.yaml` nem o `publication-request.json`.
- O PR acrescenta uma linha em `input/pagecontent/changes.xml`, na seção da próxima versão.
- No GitHub, o PR recebe o milestone da próxima versão (por exemplo, `1.8.0`).
- Depois do merge, o `main` gera o build contínuo em https://br-core-ig.web.app. Nada é publicado.

### 2. Versão de desenvolvimento

- Entre duas publicações, o `sushi-config.yaml` fica com a próxima versão e o sufixo `-cibuild` (por exemplo, `1.8.0-cibuild`).
- Guias que estão sendo construídos ou refatorados sobre o BR-Core (por exemplo, os guias da RNDS) usam essa versão de desenvolvimento enquanto trabalham. Assim, cada correção chega a eles sem esperar publicação.
- Antes de serem publicados, esses guias fixam a dependência numa versão publicada do BR-Core. Um guia publicado não depende de `-cibuild`, `current` ou `dev`.

### 3. PR de publicação

Um PR próprio, curto, feito quando fecha uma rodada de trabalho (por exemplo, a refatoração de um guia da RNDS) ou numa data combinada com o GT:

- tira o `-cibuild` da `version`;
- atualiza `publication-request.json` (`version`, `desc`, `path`);
- fecha a seção da versão em `changes.xml`;
- é aprovado pelo GT do BR-Core antes da publicação.

Todos os PRs do milestone saem juntos nessa versão.

### 4. Correção urgente

Um erro que impede implementadores ou a validação na RNDS pode sair numa versão de correção (patch) fora do lote. É a exceção, não o fluxo normal.

### 5. Número da versão e maturidade

A versão maior identifica a release do guia (1.x.x é a Release 1, STU1). Versões menores e de correção são revisões dentro da mesma release.

- Enquanto o BR-Core estiver em FMM 0 a 2, mudanças, inclusive incompatíveis, são esperadas e saem como versão menor dentro da release. É a fase de construção, e quem consome o guia fixa a versão que usa.
- A partir de FMM 3, mudança que invalida instâncias existentes exige nova versão maior (nova release) e consulta aos implementadores.
- Correção (patch): texto e erros sem efeito em instâncias.

O histórico publicado não é reescrito. Mudança publicada é desfeita por nova versão.

### 6. Calendário com os guias que dependem do BR-Core

O THO Brasil publica primeiro, o BR-Core em seguida e os guias de caso de uso por último. O BR-Core não publica versão que dependa de versão não publicada do THO Brasil.
