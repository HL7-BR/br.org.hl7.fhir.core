# Como contribuir com o BR-Core

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
