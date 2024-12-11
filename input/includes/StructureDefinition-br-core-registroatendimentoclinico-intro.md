Esse perfil restringe o perfil [br-core-composition](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-composition.html) para especificar um documento clínico, o registro de atendimento clínico, definido pela [PORTARIA Nº 234, DE 18 DE JULHO DE 2022](https://www.cosemssp.org.br/wp-content/uploads/2022/07/PORTARIA-No-234-DE-18-DE-JULHO-DE-2022-PORTARIA-No-234-DE-18-DE-JULHO-DE-2022-DOU-Imprensa-Nacional.pdf), que institui o Modelo de Informação (MI) Registro de Atendimento Clínico (RAC). Este modelo compreende um conjunto essencial de elementos e dados administrativos e clínicos que fornecem um instantâneo (snapshot) das informações de uma consulta realizada a um indivíduo no âmbito da atenção básica, especializada ou domiciliar (atendimento diário). Apresenta informações relacionadas ao acompanhamento do indivíduo como medições, observações, diagnósticos e/ou problemas, exames, procedimentos, pequenas cirurgias e desfecho.

### Caso de uso

O perfil [Clinical Document](https://hl7.org/fhir/R4/clinicaldocument.html) restringe a Composição para especificar um documento clínico (correspondendo ao modelo CDA). A composição básica é um recurso geral para composições ou documentos sobre qualquer tipo de assunto que possa ser encontrado na área da saúde, incluindo diretrizes, medicamentos, etc. Um documento clínico é focado em documentos relacionados ao processo de prestação de cuidados, onde o sujeito é um paciente, um grupo de pacientes ou um conceito intimamente relacionado. Um documento clínico tem requisitos adicionais de confidencialidade que não se aplicam da mesma forma a outros tipos de documentos.

O  perfil [br-core-registroatendimentoclinico](https://br-core/saude.gov.br/fhir/StructureDefinition/br-core-registroatendimentoclinico.html) é um documento clínico  projetado  para apoiar todos cenários de casos de uso, que incluem a prestação de cuidados planejados e não planejados em regime extra-hospitalar (ambulatórios, consultórios, policlínicas, atenção domiciliar e telessaúde), abrangendo os elementos de dados essenciais, extensões (quando necessárias) e terminologias para o intercâmbio de informações interoperáveis processadas para múltiplos sistemas de informações em saúde,  apoiando a comunicação entre os diversos níveis de atenção: subsidiando a continuidade e transição de cuidados efetivas dos pacientes dentro do Sistema de Saúde; contribuindo para  melhorar a qualidade da atenção em saúde e a segurança do indivíduo e também  a agregação e a análise de dados para tomada de decisão e produção de conhecimento.

### Caso de uso da RNDS

O princípio geral adotado na definição do [br-core-registroatendimentoclinico]() é ser compatível com o Documento Clínico do RAC da RNDS, IPS e br-core, para definir o modelo computacional,  herdou-se a estrutura da  representação canônica do documento clínico do FHIR R4  ([https://hl7.org/fhir/R4/clinicaldocument.html](https://hl7.org/fhir/R4/clinicaldocument.html)) e nas orientações do IG   Clinical Document que servem como um ponto de partida universal comum para aqueles que criam suas próprias especificações de documentos clínicos FHIR e oferece suporte a usuários de CDA que desejam migrar para uma representação de documentos clínicos baseada em FHIR. Este é perfil de domínio universal para uso em todo o mundo para facilitar a consistência  e a conformidade com o padrão FHIR.  A Tabela 1 apresenta o mapeamento de estrutura realizado entre o perfil do RAC da RNDS e o perfil br-core-registroatendimentoclinico.

**Tabela 1. Mapeamento do RAC RNDS para br-core-registroatendimentoclinico**

<table border="1">
  <thead>
    <tr>
      <th>Elemento</th>
      <th>Cardinalidade</th>
      <th>Descrição</th>
      <th>Domínio</th>
      <th>Fhirpath</th>
      <th>Domínio</th>
      <th>Perfil br-core</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Composition.status</td>
      <td>1..1</td>
      <td>O status de fluxo de trabalho/clínico desta composição.</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td><a href="http://hl7.org/fhir/ValueSet/composition-status">http://hl7.org/fhir/ValueSet/br-core-registroatendimentoclinico-status</a></td>
      <td></td>
    </tr>
    <tr>
      <td>Composition.type</td>
      <td>1..1</td>
      <td>Especifica o tipo particular de composição (por exemplo, Sumario de Alta, Registro de Imunização).</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-doc-typecodes.html">BRTipoDocumento</a></td>
      <td>Map from MSBRTipoDocumentoRACRegistro de Atendimento Clínico to LOINC 34108-1 Outpatient Note</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-doc-typecodes.html">http://hl7.org/fhir/R4/valueset-doc-typecodes.html</a></td>
      <td>br-core-registroatendimento clinico.type</td>
    </tr>
    <tr>
      <td>Composition.type.text</td>
      <td>0..1</td>
      <td>Representação em texto livre do conceito</td>
      <td></td>
      <td>Fixo em Resumo do Atendimento Clínico</td>
      <td>Resumo do Atendimento Clínico</td>
      <td>br-core-registroatendimento clinico.type</td>
    </tr>
    <tr>
      <td>Composition.category</td>
      <td>0..1</td>
      <td>Categoria da Composição.</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td><a href="https://hl7.org/fhir/R4/valueset-document-classcodes.html">https://hl7.org/fhir/R4/valueset-document-classcodes.html</a></td>
      <td>br-core-registroatendimento clinico.category</td>
    </tr>
    <tr>
      <td>Composition. confidentiality</td>
      <td>0..1</td>
      <td>O código que especifica o nível de confidencialidade desta composição.</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td><a href="http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification">http://terminology.hl7.org/ValueSet/v3-ConfidentialityClassification</a></td>
      <td>br-core-registroatendimento clinico. confidentiality</td>
    </tr>
    <tr>
      <td>Composition. attester.mode</td>
      <td>1..1</td>
      <td>O tipo de certificação que o autenticador oferece.</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-br-core-registroatendimentoclinico-attestation-mode.html">http://hl7.org/fhir/R4/valueset-br-core-registroatendimentoclinico-attestation-mode.html</a></td>
      <td>br-core-registroatendimento clinico.attester. mode</td>
    </tr>
    <tr>
      <td>Composition. relatesTo.code</td>
      <td>0..1</td>
      <td>Alvo do relacionamento da composição</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-document-relationship-type.html">http://hl7.org/fhir/R4/valueset-document-relationship-type.html</a></td>
      <td>br-core-registroatendimento clinico.relatesTo. code</td>
    </tr>
    <tr>
      <td>Composition.relatesTo. target.reference</td>
      <td>0..1</td>
      <td>Referência a br-core-registroatendimento clinico alvo</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td>Reference(br-core-registroatendimento clinico)</td>
      <td>br-core-registroatendimento clinico.relatesTo. target.reference</td>
    </tr>
    <tr>
      <td>Composition.event. code</td>
      <td>0..*</td>
      <td>Esta lista de códigos representa os principais atos clínicos, como uma colonoscopia ou uma apendicectomia, sendo documentados. Em alguns casos, o evento é inerente ao typeCode, como um "Histórico e Relatório Físico", no qual o procedimento documentado é necessariamente um ato de "Histórico e Físico".</td>
      <td></td>
      <td>Suprimido da RNDS </td>
      <td><a href="http://terminology.hl7.org/ValueSet/v3-ActCode">http://terminology.hl7.org/ValueSet/v3-ActCode</a></td>
      <td>br-core-registroatendimento clinico.event.code</td>
    </tr>
    <tr>
      <td>Composition.section. mode</td>
      <td>0..1</td>
      <td>Método de processamento da seção</td>
      <td></td>
      <td>Suprimido RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-mode.html">http://hl7.org/fhir/R4/valueset-list-mode.html</a></td>
      <td>br-core-registroatendimento clinico.section.mode</td>
    </tr>
    <tr>
      <td>Composition.section. orderedBy</td>
      <td>0..1</td>
      <td>Especifica a ordem dos itens nas sections.entry</td>
      <td></td>
      <td>Suprimido RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-order.html">http://hl7.org/fhir/R4/valueset-list-order.html</a></td>
      <td>br-core-registroatendimento clinico.section. orderedBy</td>
    </tr>
    <tr>
      <td>Composition.section. emptyReason</td>
      <td>0..1</td>
      <td>Explicação porque a seção está vazia</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-empty-reason.html">http://hl7.org/fhir/R4/valueset-list-empty-reason.html</a></td>
      <td>br-core-registroatendimento clinico.section. emptyReason</td>
    </tr>
    <tr>
      <td>Composition.section [diagnosticosAvaliados]. mode</td>
      <td>0..1</td>
      <td>Método de processamento da seção</td>
      <td></td>
      <td>Suprimido RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-mode.html">http://hl7.org/fhir/R4/valueset-list-mode.html</a></td>
      <td>br-core-registroatendimento clinico.section [diagnosticosAvaliados]. mode</td>
    </tr>
    <tr>
      <td>Composition.section [diagnosticosAvaliados]. orderedBy</td>
      <td>0..1</td>
      <td>Especifica a ordem dos itens nas sections.entry</td>
      <td></td>
      <td>Suprimido RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-order.html">http://hl7.org/fhir/R4/valueset-list-order.html</a></td>
      <td>br-core-registroatendimento clinico.section [diagnosticosAvaliados]. orderedBy</td>
    </tr>
    <tr>
      <td>Composition.section [diagnosticosAvaliados]. emptyReason</td>
      <td>1..*</td>
      <td></td>
      <td></td>
      <td>Suprimido RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-empty-reason.html">http://hl7.org/fhir/R4/valueset-list-empty-reason.html</a></td>
      <td>br-core-registroatendimento clinico.section [diagnosticosAvaliados]. emptyReason</td>
    </tr>
    <tr>
      <td>Composition.section [procedimentosRealizados]. mode</td>
      <td>0..1</td>
      <td>Método de processamento da seção</td>
      <td></td>
      <td>Suprimido no RAC</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-mode.html">http://hl7.org/fhir/R4/valueset-list-mode.html</a></td>
      <td>br-core-registroatendimento clinico.section [procedimentosRealizados]. mode</td>
    </tr>
    <tr>
      <td>Composition.section [procedimentosRealizados]. orderedBy</td>
      <td>0..1</td>
      <td>Especifica a ordem dos itens nas sections.entry</td>
      <td></td>
      <td>Suprimido no RAC</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-order.html">http://hl7.org/fhir/R4/valueset-list-order.html</a></td>
      <td>br-core-registroatendimento clinico.section [procedimentosRealizados]. orderedBy</td>
    </tr>
    <tr>
      <td>Composition.section [procedimentosRealizados]. entry</td>
      <td>1..*</td>
      <td>Referência ao recurso que contém os dados desta seção</td>
      <td></td>
      <td>Suprimido no RAC</td>
      <td>Reference(Procedure | DocumentReference)</td>
      <td>br-core-registroatendimento clinico.section [procedimentosRealizados]. entry</td>
    </tr>
    <tr>
      <td>Composition.section [procedimentosRealizados]. emptyReason</td>
      <td>0..1</td>
      <td>Explicação porque a seção está vazia</td>
      <td></td>
      <td>Suprimido no RAC</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-empty-reason.html">http://hl7.org/fhir/R4/valueset-list-empty-reason.html</a></td>
      <td>br-core-registroatendimento clinico.section [procedimentosRealizados]. emptyReason</td>
    </tr>
    <tr>
      <td>Composition.section [sinaisVitais] .mode</td>
      <td>0..1</td>
      <td>Método de processamento da seção</td>
      <td></td>
      <td>Suprimido da RNDS </td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-mode.html">http://hl7.org/fhir/R4/valueset-list-mode.html</a></td>
      <td>br-core-registroatendimento clinico.section [sinaisVitais].mode</td>
    </tr>
    <tr>
      <td>Composition.section [sinaisVitaiss]. orderedBy</td>
      <td>0..1</td>
      <td>Especifica a ordem dos itens nas sections.entry</td>
      <td></td>
      <td>Suprimido da RNDS </td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-order.html">http://hl7.org/fhir/R4/valueset-list-order.html</a></td>
      <td>br-core-registroatendimento clinico.section [sinaisVitais].orderedBy</td>
    </tr>
    <tr>
      <td>Composition.section [sinaisVitais]. emptyReason</td>
      <td>0..1</td>
      <td>Explicação porque a seção está vazia</td>
      <td></td>
      <td>Suprimido da RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-empty-reason.html">http://hl7.org/fhir/R4/valueset-list-empty-reason.html</a></td>
      <td>br-core-registroatendimento clinico.section [sinaisVitais]. emptyReason</td>
    </tr>
    <tr>
      <td>Composition.section [históriaObstétrica]. mode</td>
      <td>0..1</td>
      <td>Método de processamento da seção</td>
      <td></td>
      <td>Suprimido da RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-mode.html">http://hl7.org/fhir/R4/valueset-list-mode.html</a></td>
      <td>br-core-registroatendimentoclinico. section [históriaObstétrica]. mode</td>
    </tr>
    <tr>
      <td>Composition.section [históriaObstétrica]. orderedBy</td>
      <td>0..1</td>
      <td>Especifica a ordem dos itens nas sections.entry</td>
      <td></td>
      <td>Suprimido da RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-order.html">http://hl7.org/fhir/R4/valueset-list-order.html</a></td>
      <td>br-core-registroatendimento clinico.section [históriaObstétrica]. orderedBy</td>
    </tr>
    <tr>
      <td>Composition.section [históriaObstétrica]. emptyReason</td>
      <td>0..1</td>
      <td>Explicação porque a seção está vazia</td>
      <td></td>
      <td></td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-empty-reason.html">http://hl7.org/fhir/R4/valueset-list-empty-reason.html</a></td>
      <td>br-core-registroatendimento clinico.section [históriaObstétrica]. emptyReason</td>
    </tr>
    <tr>
      <td>Composition.section [tipoAleitamentoMaterno]. mode</td>
      <td>0..1</td>
      <td>Método de processamento da seção</td>
      <td></td>
      <td>Não existe na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-mode.html">http://hl7.org/fhir/R4/valueset-list-mode.html</a></td>
      <td>br-core-registroatendimento clinico.section [tipoAleitamentoMaterno]. mode</td>
    </tr>
    <tr>
      <td>Composition.section [tipoAleitamentoMaterno]. orderedBy</td>
      <td>0..1</td>
      <td>Especifica a ordem dos itens nas sections.entry</td>
      <td></td>
      <td>Não existe na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-order.html">http://hl7.org/fhir/R4/valueset-list-order.html</a></td>
      <td>br-core-registroatendimento clinico.section [tipoAleitamentoMaterno]. orderedBy</td>
    </tr>
    <tr>
      <td>Composition.section [tipoAleitamentoMaterno]. emptyReason</td>
      <td>0..1</td>
      <td>Explicação porque a seção está vazia</td>
      <td></td>
      <td>Não existe na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-empty-reason.html">http://hl7.org/fhir/R4/valueset-list-empty-reason.html</a></td>
      <td>br-core-registroatendimento clinico.section [tipoAleitamentoMaterno]. emptyReason</td>
    </tr>
    <tr>
      <td>Composition.section [históriaSocial]. mode</td>
      <td>0..1</td>
      <td>Método de processamento da seção</td>
      <td></td>
      <td>Não existe na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-mode.html">http://hl7.org/fhir/R4/valueset-list-mode.html</a></td>
      <td>br-core-registroatendimento clinico.section [históriaSocial]. mode</td>
    </tr>
    <tr>
      <td>Composition.section [históriaSocial]. orderedBy</td>
      <td>0..1</td>
      <td>Especifica a ordem dos itens nas sections.entry</td>
      <td></td>
      <td>Não existe na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-order.html">http://hl7.org/fhir/R4/valueset-list-order.html</a></td>
      <td>br-core-registroatendimento clinico.section [históriaSocial]. orderedBy</td>
    </tr>
    <tr>
      <td>Composition.section [HistoriaSocial]. emptyReason</td>
      <td>0..1</td>
      <td>Explicação porque a seção está vazia</td>
      <td></td>
      <td>Não existe na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-empty-reason.html">http://hl7.org/fhir/R4/valueset-list-empty-reason.html</a></td>
      <td>br-core-registroatendimento clinico.section [historiaSocial]. emptyReason</td>
    </tr>
    <tr>
      <td>Composition.section [alergiasIntolerancias]. code</td>
      <td>0..1</td>
      <td>Identificador exclusivo para referência entre elementos</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td>Fixed Value: (Complex)</td>
      <td>br-core-registroatendimento clinico.section [alergiasIntolerancias]. code</td>
    </tr>
    <tr>
      <td>Composition.section [alergiasIntolerancias]. code.coding.system</td>
      <td>0..1</td>
      <td>Identificador do sistema de terminologia</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td><a href="http://www.loinc.org/">http://www.loinc.org/</a></td>
      <td>br-core-registroatendimento clinico.section [alergiasIntolerancias]. code.coding.system</td>
    </tr>
    <tr>
      <td>Composition.section [alergiasIntolerancias]. code.coding.code</td>
      <td>0..1</td>
      <td></td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td>Fixo em 48765-2</td>
      <td>br-core-registroatendimento clinico.section [alergiasIntolerancias]. code.coding.code</td>
    </tr>
    <tr>
      <td>Composition.section [alergiasIntolerancias]. code.coding.display</td>
      <td>0..1</td>
      <td></td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td>Alergias e Intolerãncias</td>
      <td>br-core-registroatendimento clinico.section [alergiasIntolerancias]. code.coding.display</td>
    </tr>
    <tr>
      <td>Composition.section [alergiasIntolerancias]. mode</td>
      <td>0..1</td>
      <td>Método de processamento da seção</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-mode.html">http://hl7.org/fhir/R4/valueset-list-mode.html</a></td>
      <td>br-core-registroatendimento clinico.section [alergiasIntolerancias]. mode</td>
    </tr>
    <tr>
      <td>Composition.section [alergiasIntolerancias]. orderedBy</td>
      <td>0..1</td>
      <td>Especifica a ordem dos itens nas sections.entry</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-order.html">http://hl7.org/fhir/R4/valueset-list-order.html</a></td>
      <td>br-core-registroatendimento clinico.section [alergiasIntolerancias]. orderedBy</td>
    </tr>
    <tr>
      <td>Composition.section [alergiasIntolerancias]. emptyReason</td>
      <td>0..1</td>
      <td>Explicação porque a seção está vazia</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-empty-reason.html">http://hl7.org/fhir/R4/valueset-list-empty-reason.html</a></td>
      <td>br-core-registroatendimento clinico.section [alergiasIntolerancias]. emptyReason</td>
    </tr>
    <tr>
      <td>Composition.section [Medicamentos]. mode</td>
      <td>0..1</td>
      <td>Método de processamento da seção</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-mode.html">http://hl7.org/fhir/R4/valueset-list-mode.html</a></td>
      <td>br-core-registroatendimento clinico.section [Medicamentos]. mode</td>
    </tr>
    <tr>
      <td>Composition.section [Medicamentos]. orderedBy</td>
      <td>0..1</td>
      <td>Especifica a ordem dos itens nas sections.entry</td>
      <td></td>
      <td>Suprimido da RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-order.html">http://hl7.org/fhir/R4/valueset-list-order.html</a></td>
      <td>br-core-registroatendimento clinico.section [Medicamentos]. orderedBy</td>
    </tr>
    <tr>
      <td>Composition.section [Medicamentos]. entry</td>
      <td>1..*</td>
      <td>Referência ao recurso que contém os dados desta seção</td>
      <td></td>
      <td>Reference (BRRegistroPrescricaoMedicamento) que referecia o medication request, porém é apenas para um para um, quando no IPS é 0.*. No caso de um sumário, podem ter vários medicationRequests, a RNDS usa o RPM. Não contempla todos os casos de uso de um atendimento clínico, nem mesmo o modelo do RAC</td>
      <td>Reference (MedicationStatement | MedicationRequest | MedicationAdministration | MedicationDispense | DocumentReference)</td>
      <td>br-core-registroatendimento clinico.section [Medicamentos]. entry</td>
    </tr>
    <tr>
      <td>Composition.section [Medicamentos]. emptyReason</td>
      <td>0..1</td>
      <td>Explicação porque a seção está vazia</td>
      <td></td>
      <td>Suprimido na RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-empty-reason.html">http://hl7.org/fhir/R4/valueset-list-empty-reason.html</a></td>
      <td>br-core-registroatendimento clinico.section [Medicamentos]. emptyReason</td>
    </tr>
    <tr>
      <td>Composition.section [planoCuidados]. emptyReason</td>
      <td>0..1</td>
      <td>Explicação porque a seção está vazia</td>
      <td></td>
      <td>Suprimido da RNDS</td>
      <td><a href="http://hl7.org/fhir/R4/valueset-list-empty-reason.html">http://hl7.org/fhir/R4/valueset-list-empty-reason.html</a></td>
      <td>br-core-registroatendimento clinico.section [planoCuidados]. emptyReason</td>
    </tr>
  </tbody>
</table>

### Legibilidade humana e renderização de documentos clínicos FHIR


A [orientação narrativa principal do FHIR](https://hl7.org/fhir/R4/narrative.html) estipula que a narrativa de um recurso "DEVE refletir todo o conteúdo necessário para que um humano entenda as informações clínicas e comerciais essenciais para o recurso". Além disso, para garantir a comunicação inequívoca da narrativa atestada de um documento clínico, este IG exige que:

1.	Deve haver um método determinístico pelo qual um destinatário de um Documento Clínico FHIR arbitrário possa exibir o conteúdo narrativo da nota em um navegador da Web padrão.
2.	A legibilidade humana não deve exigir que um remetente transmita uma folha de estilo especial junto com um Documento Clínico FHIR. Deve ser possível renderizar todos os Documentos Clínicos FHIR com uma única folha de estilo e ferramentas de exibição de mercado geral.
3.	A legibilidade humana se aplica ao conteúdo autenticado. Pode haver informações adicionais transmitidas no documento que estão lá principalmente para processamento de máquina que não são autenticadas e não precisam ser renderizadas.

Metadados de documentos clínicos (por exemplo, nome e data de nascimento do paciente, provedores participantes) também podem precisar ser renderizados, com a ressalva, conforme declarado no padrão [Consolidated CDA Templates for Clinical Notes](https://www.hl7.org/ccdasearch/pdfs/CCDA_Volume_One.pdf), "Metadados carregados no cabeçalho podem já estar disponíveis para renderização de EHRs ou outras fontes externas ao documento. Um exemplo disso seria um médico usando um EHR que já contém o nome do paciente, data de nascimento, endereço atual e número de telefone. Quando um documento CDA é renderizado dentro desse EHR, essas informações podem não precisar ser exibidas, pois já são conhecidas e exibidas na interface do usuário do EHR".

O recurso Composition é especial porque pode transmitir narrativas em Composition.text e Composition.section.text. Este IG recomenda que metadados de documentos sejam transmitidos em Composition.text, enquanto narrativas atestadas sejam transmitidas em Composition.section.text. Além disso, embora o destinatário do documento deva ser capaz de renderizar o conteúdo de Composition.section.text, ele pode opcionalmente renderizar Composition.text ou escolher ignorar Composition.text, especialmente quando for capaz de analisar os campos estruturados de Composition. Para resumir:

-	O criador do Documento Clínico FHIR
    -	**DEVE** colocar a narrativa atestada em Composition.section.text.
    -   **NÃO DEVE** colocar narrativa atestada redundantemente em Composition.text e Composition.section.text.
    -	**PODE** incluir narrativa que não seja derivada de nenhum dado estruturado.
    -   **DEVE** incluir metadados do documento (por exemplo, paciente) em Composition.text.
    -   **PODE** incluir uma lista de seções do documento em Composition.text
-	O destinatário do Documento Clínico FHIR
    - **DEVE** incluir, no mínimo, Composition.title, Composition.section.title e Composition.section.text em qualquer versão do documento.
    - **PODE** incluir Composition.text em uma representação do documento.
    - **PODE** renderizar informações adicionais do documento (como nome do paciente e data de nascimento) derivadas de campos de composição estruturados.

Essas regras se aplicam até mesmo a outros campos do tipo narrativo (por exemplo, FHIR R5 Composition.note, extensão FHIR 'note').

As boas práticas recomendam que, a o seguinte esteja presente sempre que o documento for visualizado: Título do documento e datas do documento; Tipos de serviço e encontro e intervalos de datas, conforme apropriado; Nomes de todas as pessoas, juntamente com suas funções, participações, intervalos de datas de participação, identificadores, endereço e informações de telecomunicações; Nomes de organizações selecionadas, juntamente com suas funções, participações, intervalos de datas de participação, identificadores, endereço e informações de telecomunicações; Data de nascimento do(s) sujeito(s); Informações de identificação do paciente.

Os recursos mandatórios e must support do 
-	br-core-registroatendimentoclinico.identifier
-	br-core-registroatendimentoclinico.text
-	br-core-registroatendimentoclinico.status
-	br-core-registroatendimentoclínico.type
-	br-core-registroatendimentoclinico.subject
-	br-core-registroatendimentoclinico.encounter
-	br-core-registroatendimentoclínico.date
-	br-core-registroatendimentoclínico.author
-	br-core-registroatendimentoclínico.attester
-	br-core-registroatendimentoclínico.attester.party
-	br-core-registroatendimentoclínico.custodian
-	br-core-registroatendimentoclínico.attester.time
-	br-core-registroatendimentoclínico.attester.mode
-	br-core-registroatendimentoclínico.relatesTo.target 
-	br-core-registroatendimentoclinico: event:careProvisioningEvent  
-	br-core-registroatendimentoclinico: event:careProvisioningEvent .code
-	br-core-registroatendimentoclinico. event:careProvisioningEvent.detail  
-	br-core-registroatendimentoclínico.section
-	br-core-registroatendimentoclínico.section-code
-	br-core-registroatendimentoclínico.section-text

Outros recursos referenciados por esses recursos PODEM ser incluídos no Bundle a critério do sistema de autoria, conforme documentado na definição de operação do sistema (como a operação $document) ou conforme especificado por quaisquer perfis aplicáveis.

Sistemas clínicos não têm nenhuma provisão para remover informações errôneas do registro de um paciente, e não há como o usuário saber que o registro não é adequado para uso. Isso não é seguro.

Observações com relação ao padrão CDA estão disponíveis em [https://www.hl7.org/fhir/r4/composition.html#cda](https://www.hl7.org/fhir/r4/composition.html#cda).