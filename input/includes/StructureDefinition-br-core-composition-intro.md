### Escopo/Uso

Uma Composition é a estrutura básica a partir da qual os Documentos FHIR - bundles imutáveis com narrativa atestada - são construídos. Uma única composição lógica pode ser associada a uma série de documentos derivados, cada um dos quais é uma cópia congelada da composição.

Nota: A norma [Health informatics - Electronic Health Record Communication (EN 13606)](https://en.wikipedia.org/wiki/EN_13606) usa o termo "Composition" para se referir a um único commit para um sistema de Registro Eletrônico em Saúde (RES) e oferece alguns exemplos comuns: uma composição contendo uma nota de consulta, uma nota de evolução, um relatório ou uma carta, um relatório de investigação, um formulário de prescrição ou um conjunto de observações de enfermagem de beira de leito. Usar a Composition para um commit num RES é um uso válido do recurso Composition, mas para fins de FHIR, seria comum fazer atualizações mais granulares com declarações de procedência individuais.

O perfil de [ClinicalDocument](https://www.hl7.org/fhir/r4/composition-clinicaldocument.html) restringe o Composition para especificar um documento clínico (correspondente ao padrão HL7 [CDA](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=7) ). Veja também a [comparação com CDA](https://www.hl7.org/fhir/r4/comparison-cda.html). 

### Caso de uso da RNDS

Alguns recursos da RNDS foram definidos em forma de documento, que no canônico são recursos de fluxo de trabalho do FHIR, que exigem a criação de outros recursos para que os processos de request-response possa ser realizado.  (ex: prescrição  e dispensação de medicamentos). Inclui ainda recursos de evento, como DiagnosticReport e Immunization.

No FHIR R4, os casos de uso para esses recursos estão bem definidos, por isso no br-core foram especializados os recursos equivalentes, para atender normas e regulações brasileiras.

Foi criado o recurso br- core- composition canônico e seus derivados (RAC e SA). 
A  modelagem  e perfilização do br-core foi realizada para herdar os perfis do FHIR R4 , para reuso do mesmo perfil em diferentes contextos,  que vão além do contexto da RNDS.

**Tabela 1. Mapeamento dos composition RNDS para br-core**

<table border="1">
  <tbody>
    <tr>
      <td>RIA e RIC</td>
      <td>br-core- immunization  recurso de evento  que deve ser utilizado para o Registro de Vacinas, conforme definido no guia de implementação de imunização <a href="http://www.hl7.org/implement/standards/product_brief.cfm?product_id=185">HL7 v2 existente, domínio POIZ HL7 v3</a> e Modelo de Análise de Domínio de Imunização.</td>
    </tr>
    <tr>
      <td>REL</td>
      <td>br-core-diagnosticreport recurso de evento do ponto de vista do workflow do FHIR.</td>
    </tr>
    <tr>
      <td>RDM e RPM</td>
      <td>br-core-medicationrequest e br-core-medicationdispense, recursos de workflow do FHIR R4, usados para o processo de prescrição/dispensação de medicamentos</td>
    </tr>
    <tr>
      <td>RIRA</td>
      <td>br-core-servicerequest</td>
    </tr>
    <tr>
      <td>RAC e SA</td>
      <td>Remodelados para atender o canônico: br-core-registroatendimentoclinico, br-core-sumarioalta</td>
    </tr>
    <tr>
      <td>CMD</td>
      <td>Informações para compor o CMD foram  incluídas tanto no RAC como no sumário de alta, que foram remodelados e incluíram o encounter, que estava suprimido na RNDS.  O CMD é um resumo de um encounter.</td>
    </tr>
  </tbody>
</table>

### Limites e relacionamentos

O Composition é uma estrutura para agrupar informações para fins de persistência e atestabilidade. Existem várias outras estruturas de agrupamento no FHIR com propósitos distintos:

-	recurso [List](https://www.hl7.org/fhir/r4/list.html) - enumera uma coleção simples de recursos e fornece recursos para gerenciar a coleção. Embora uma instância List específica possa representar um "instantâneo", de uma perspectiva de processo de negócios, a noção de "lista" é dinâmica - itens são adicionados e removidos ao longo do tempo. O recurso List faz Referência à outros recursos. As listas podem ser selecionadas e ter um significado comercial específico.
-	recurso [Group](https://www.hl7.org/fhir/r4/group.html) - define um grupo de pessoas, animais, dispositivos, etc. específicos, enumerando-os ou descrevendo qualidades que os membros do grupo têm. O recurso Group se refere a outros recursos, possivelmente implicitamente. Os grupos devem ser agidos ou observados como um todo (por exemplo, realizando terapia em um grupo, calculando o risco para um grupo, etc.). Este recurso será comumente usado para saúde pública (por exemplo, descrevendo uma população em risco), ensaios clínicos (por exemplo, definindo um pool de sujeitos de teste) e propósitos semelhantes.
-	recurso [Bundle](https://www.hl7.org/fhir/r4/bundle.html) - é um contêiner de infraestrutura para um grupo de recursos. Ele não tem narrativa e é usado para agrupar coleções de recursos para transmissão, persistência ou processamento (por exemplo, mensagens, documentos, transações, respostas de consulta, etc.). O conteúdo dos bundles é normalmente determinado algoritmicamente para uma troca específica ou propósito de persistência.

O recurso [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) - define um conjunto de informações relacionadas à saúde que são reunidas em um único documento lógico que fornece uma única declaração coerente de significado, estabelece seu próprio contexto e que tem atestado clínico com relação a quem está fazendo a declaração. O recurso [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) fornece a estrutura básica de um documento FHIR. O conteúdo completo do documento é expresso usando um Bundle contendo a Composition e suas entradas.

O recurso [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) organiza o conteúdo clínico e administrativo em seções, cada uma contendo uma narrativa e faz Referência à outros recursos para dar suporte a dados. O conteúdo narrativo das várias seções em um [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) é suportado pelos recursos referenciados nas entradas da seção. O conjunto completo de conteúdo para compor um documento inclui o recurso [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) juntamente com vários recursos apontados ou indiretamente conectados à Composition, todos reunidos em um Bundle para transporte e persistência. 

Os recursos associados à seguinte lista de referências de [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) DEVEM ser incluídos no Bundle:
-	br-core-composition.subject
-	br-core-composition.encounter
-	br-core-composition.author
-	br-core-composition.attester.party
-	br-core-composition.custodian
-	br-core-composition.event.detail
-	br-core-composition.section.author
-	br-core-composition.section.focus
-	br-core-composition.section.entry

Outros recursos referenciados por esses recursos PODEM ser incluídos no Bundle a critério do sistema de autoria, conforme documentado na definição de operação do sistema (como a operação $document) ou conforme especificado por quaisquer perfis aplicáveis.

### Contexto

**Códigos de status do br-core-compositon**

Cada composição tem um elemento de status, que descreve o status do conteúdo da composição, retirado deste ValueSet: ([https://terminologia.saude.gov.br/#/orgs/HL7/collections/composition-status/](https://terminologia.saude.gov.br/#/orgs/HL7/collections/composition-status/)):

**Tabela 2. Códigos de status da composition**

<table border="1">
  <tbody>
    <tr>
      <td>preliminar</td>
      <td>Esta é uma composition ou documento preliminar (também conhecido como inicial ou provisório). O conteúdo pode estar incompleto ou não verificado.</td>
    </tr>
    <tr>
      <td>registrado por engano</td>
      <td>A composition ou documento foi originalmente criado/emitido por engano, e esta é uma alteração que marca que toda a série não deve ser considerada válida.</td>
    </tr>
    <tr>
      <td>final</td>
      <td>Esta versão da composition está completa e verificada por uma pessoa autorizada e nenhum outro trabalho está planejado. Quaisquer atualizações subsequentes serão em uma nova versão da composition.</td>
    </tr>
    <tr>
      <td>alterada</td>
      <td>O conteúdo da composition ou os seus recursos referenciados foram modificados (editados ou adicionados) após serem liberados como "finais" e a composition está completa e verificada por uma pessoa autorizada.</td>
    </tr>
  </tbody>
</table>

O status da composição geralmente vai de preliminar para final e, então pode progredir para alterado. Observe que em muitos fluxos de trabalho, apenas composições finais são disponibilizadas e o status preliminar não é usado.

Poucas composições são criadas inteiramente por engano no fluxo de trabalho - geralmente a composição diz respeito ao paciente errado ou é escrita pelo autor errado, e o erro só é detectado depois que a composição foi usada ou documentos foram derivados dela. Para dar suporte à resolução deste caso, a composição é atualizada para ser marcada como inserida por engano e um novo documento derivado pode ser criado. Isso significa que toda a série de documentos derivados agora é considerada criada por engano e os sistemas que recebem documentos derivados com base em composições retiradas DEVEM remover dados retirados de documentos anteriores do uso rotineiro e/ou tomar outras ações apropriadas. Os sistemas não são obrigados a fornecer este fluxo de trabalho ou dar suporte a documentos derivados de composições retiradas, mas NÃO DEVEM ignorar um status de inserido por engano. Observe que os sistemas que manipulam composições ou documentos derivados e não oferecem suporte ao status de erro precisam definir alguma outra maneira de manipular composições criadas por engano; embora isso não seja uma ocorrência comum, alguns sistemas clínicos não têm nenhuma provisão para remover informações errôneas do registro de um paciente, e não há como o usuário saber que o registro não é adequado para uso. Isso não é seguro.

Observações com relação ao padrão CDA estão disponíveis em [https://www.hl7.org/fhir/r4/composition.html#cda](https://www.hl7.org/fhir/r4/composition.html#cda).