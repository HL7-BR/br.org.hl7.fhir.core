### Escopo/Uso

O recurso [br-core-careplan](StructureDefinition-br-core-careplan.html) é um dos recursos de solicitação na especificação do fluxo de trabalho do FHIR .

Os Planos de Cuidados ([CarePlan](https://hl7.org/fhir/R4/careplan.html)) são usados em muitas áreas da assistência médica com uma variedade de escopos. Eles podem ser tão simples quanto um clínico geral controlando quando seu paciente deve tomar a próxima imunização contra tétano até um plano detalhado para um paciente oncológico cobrindo dieta, quimioterapia, radiação, trabalho de laboratório e aconselhamento com relações de tempo detalhadas, pré-condições e objetivos. Eles podem ser usados em cuidados veterinários ou pesquisa clínica para descrever o cuidado de um rebanho ou outra coleção de animais. Na saúde pública, eles podem descrever campanhas de educação ou imunização.

Este recurso adota uma abordagem intermediária para a complexidade. Ele captura detalhes básicos sobre quem está envolvido e quais ações são pretendidas sem lidar com dados discretos sobre dependências e relacionamentos de tempo. Eles podem ser suportados quando necessário usando o mecanismo de extensão.

O escopo do recurso [br-core-careplan](StructureDefinition-br-core-careplan.html) pode variar amplamente. Exemplos incluem:
-	Planos de cuidados multidisciplinares e interorganizacionais; por exemplo, um plano de oncologia que inclua o oncologista, a equipe domiciliar de enfermagem, a farmácia e outros;
-	Planos para gerenciar doenças/condições específicas (por exemplo, plano nutricional para um paciente após ressecção intestinal, plano neurológico após traumatismo craniano, plano pré-natal, plano pós-parto, plano de gerenciamento do luto, etc.);
-	Planos de suporte à decisão gerados seguindo diretrizes de prática específicas (por exemplo, plano de tratamento de AVC, plano de diabetes, prevenção de quedas, etc.)
-	Planos auto-mantidos pelo paciente ou cuidador, identificando seus objetivos e uma compreensão integrada das ações a serem tomadas

O recurso [br-core-careplan](StructureDefinition-br-core-careplan.html) pode ser usado para representar tanto os planos propostos (por exemplo, recomendações de um mecanismo de suporte à decisão ou retornados como parte de um relatório de consulta) quanto os planos ativos. A natureza do plano é comunicada pelo elemento status. Alguns sistemas podem precisar filtrar [CarePlan](https://hl7.org/fhir/R4/careplan.html) para garantir que apenas planos apropriados sejam expostos por meio de uma determinada interface de usuário.

### Caso de uso

A seguir estão alguns exemplos de cenários de uso para este perfil:
-	Consultar o plano de cuidados pertencente a um Paciente;
-	Registrar ou atualizar um plano de cuidados existente.

### Caso de uso da RNDS

Descreve o plano de um ou mais profissionais para o cuidado de um paciente em particular, grupo ou comunidade em um período, possivelmente limitado ao cuidado de uma condição específica ou conjunto de condições.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support). 

**Cada Perfil [br-core-careplan](StructureDefinition-br-core-careplan.html) deve ter:**
1.	Status – indica se o plano está sendo executado atualmente, representa intenções futuras ou agora é um registro histórico.
2.	Intent – códigos que indicam o grau de autoridade/intencionalidade associado a um plano de cuidados (proposta | plano | pedido | opção).

**Cada Perfil [br-core-careplan](StructureDefinition-br-core-careplan.html) deve oferecer suporte a:**
Não há elementos.

### Limites e relacionamentos

Para simplificar, o [br-core-careplan](StructureDefinition-br-core-careplan.html) permite a definição inline de atividades como parte de um plano usando o elemento activity.detail. No entanto, as atividades também podem ser definidas usando referências aos vários recursos "request". Essas referências podem ser para recursos com status "planejado" ou para um pedido ativo. É possível que atividades planejadas existam (por exemplo, compromissos) sem precisar de um [CarePlan](https://hl7.org/fhir/R4/careplan.html). Os recursos [br-core-careplan](StructureDefinition-br-core-careplan.html) são usados quando há necessidade de agrupar atividades, metas e/ou participantes para fornecer algum grau de contexto.

Os recursos [br-core-careplan](StructureDefinition-br-core-careplan.html) podem ser vinculados a condições ([br-core-condition](StructureDefinition-br-core-condition)) específicas, mas também podem ser independentes da condição e, em vez disso, focados em um tipo específico de cuidado (por exemplo, psicológico, nutricional) ou no cuidado prestado por um profissional ou grupo de profissionais específico.

Uma recomendação de imunização ([ImmunizationRecommendation](https://hl7.org/fhir/R4/ImmunizationRecommendation.html)) pode ser interpretada como um tipo restrito de [CarePlan](https://hl7.org/fhir/R4/careplan.html) lidando apenas com eventos de imunização. Onde tais informações podem aparecer em qualquer recurso, o recurso específico de imunização é o preferido.

Os recursos [br-core-careplan](StructureDefinition-br-core-careplan.html) representam uma instância de plano específica para um paciente ou grupo específico. Não se destina a ser usado para definir planos ou protocolos genéricos que sejam independentes de um indivíduo ou grupo específico. O [br-core-careplan](StructureDefinition-br-core-careplan.html) representa uma intenção específica, não uma definição geral. Protocolos e conjuntos de pedidos são suportados por meio de [PlanDefinition](https://hl7.org/fhir/R4/plandefinition.html).

Este recurso é referenciado por [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.html), [GuidanceResponse](https://hl7.org/fhir/R4/guidanceresponse.html#GuidanceResponse), [ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html#ImagingStudy), [Media](https://hl7.org/fhir/R4/media.html#Media), [br-core-medicationrequest](StructureDefinition-br-core-medicationrequest.html),  [br-core-medicationstatement](StructureDefinition-br-core-medicationstatement.html), [br-core-observation](StructureDefinition-br-core-observation.html), [br-core-procedure](StructureDefinition-br-core-procedure.html), [QuestionnaireResponse](https://hl7.org/fhir/R4/questionnaireresponse.html#QuestionnaireResponse) e [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html#ServiceRequest).