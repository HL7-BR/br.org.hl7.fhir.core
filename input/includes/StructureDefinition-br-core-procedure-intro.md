### Escopo e uso

Procedimento é um dos recursos de [evento](https://hl7.org/fhir/r4/workflow.html#event) na especificação do [fluxo de trabalho](https://hl7.org/fhir/r4/workflow.html) FHIR .

Este recurso é usado para registrar os detalhes de procedimentos atuais e históricos de procedimentos realizados em ou para um paciente. Um procedimento é uma atividade que é realizada em, com ou para um paciente como parte da prestação de cuidados. Exemplos incluem procedimentos cirúrgicos, procedimentos de diagnóstico, procedimentos endoscópicos, biópsias, aconselhamento, fisioterapia, serviços de apoio pessoal, serviços de creche para adultos, transporte não emergencial, modificação da casa, exercícios, etc. Os procedimentos podem ser realizados por um profissional de saúde, um provedor de serviços, um amigo ou parente ou, em alguns casos, pelo próprio paciente.

Este recurso fornece informações resumidas sobre a ocorrência do procedimento e não se destina a fornecer instantâneos em tempo real de um procedimento conforme ele se desenrola, embora para procedimentos de longa duração, como psicoterapia, ele possa representar informações de nível resumido sobre o progresso geral. A criação de um recurso para dar suporte a informações detalhadas do procedimento em tempo real aguarda a identificação de um caso de uso de implementação específico para compartilhar tais informações.

### Caso de uso

-	Consulta de procedimentos realizados em um Paciente
-	[Registrar ou atualizar](https://build.fhir.org/ig/HL7/US-Core/future-of-US-core.html#future-candidate-requirements-under-consideration) um procedimento realizado em um paciente

### Caso de uso da RNDS

Na RNDS este recurso é utilizado como parte do RAC – Registro de Atendimento Clínico na seção de Procedimentos Realizados. 

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos de dados devem estar sempre presentes (definição [Mandatory](https://build.fhir.org/ig/HL7/US-Core/must-support.html)) ou devem ser suportados se os dados estiverem presentes no sistema de envio (definição [Must Support](https://build.fhir.org/ig/HL7/US-Core/must-support.html)). Eles são apresentados abaixo em uma explicação simples e legível por humanos. Orientações e exemplos específicos de perfil também são fornecidos. As [Exibições Formais](https://build.fhir.org/ig/HL7/US-Core/StructureDefinition-us-core-procedure.html#profile) abaixo fornecem o resumo formal, definições e requisitos de terminologia.

**Cada procedimento deve ter:**
1.	um status
2.	um código que identifica o tipo de procedimento realizado no paciente
3.	um paciente
4.	quando o procedimento foi realizado

**Cada procedimento deve oferecer suporte a:**
1.	o encontro associado ao procedimento

**Orientações de implementação específicas do perfil:**
-	Procedure.performed é obrigatório se Procedure.status estiver "concluído" ou "em andamento".
-	O Procedure.code tem uma ligação adicional de " atual " e uma ligação base "preferida".
    -	Para as regras de conformidade sobre a vinculação [atual](https://hl7.org/fhir/R5/terminologies.html#binding) para dados codificados, revise [esta seção](https://build.fhir.org/ig/HL7/US-Core/general-requirements.html#current-binding-for-coded-elements) na página Requisitos Gerais.
    -	Os códigos de procedimento podem ser obtidos do ValueSet [BRProcedimentos](https://terminologia.saude.gov.br/#/orgs/MS/collections/BRProcedimentosNacionais-1.0/) Nacionais, que incluem os CS: SIGTAP, TUSS e CBHPM
-	Servidores e Clientes **DEVERÃO** oferecer suporte aos Perfis br-core-servicerequest e br-core-procedure para comunicar o motivo ou justificativa para uma referência como Requisitos adicionais. Normalmente, o motivo ou justificativa para uma referência ou consulta é comunicado por meio da vinculação do procedure.basedOn  do Perfil br-core- servicerequest que inclui serviceRequest.reasonCode ou quando o Procedimento não tem um ServiceRequest associado, ele é comunicado por meio do  ServiceRequest.reasonReference do Perfil br-core- procedure . Dependendo do procedimento que está sendo documentado, um Servidor selecionará o Perfil apropriado para uso. Procedure.reasonCodeProcedure.reasonReference.

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

O recurso [br-core-procedure](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure) não deve ser utilizado para capturar um evento se um recurso mais específico já existir - ou seja, [imunizações](https://hl7.org/fhir/r4/immunization.html), [administrações de medicamentos](https://hl7.org/fhir/r4/medicationadministration.html) e [comunicações](https://hl7.org/fhir/r4/communication.html). O limite entre determinar se uma ação é um Procedimento (treinamento ou aconselhamento) em oposição a uma Comunicação é baseado em se há uma intenção específica de mudar a mentalidade do paciente. A mera divulgação de informações seria considerada uma Comunicação. Um processo que envolve a verificação da compreensão do paciente ou para mudar o estado mental do paciente seria um Procedimento.

Observe que muitos processos de diagnóstico são procedimentos que geram Observations ([br-core-observation](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation)) e DiagnosticReports ([br-core-diagnosticreport](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport)) . Em muitos casos, tal observação não requer uma representação explícita do procedimento usado para criar a observação, mas onde há detalhes de interesse sobre como o procedimento de diagnóstico foi realizado, o recurso Procedure ([br-core-procedure](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure)) deve ser utilizado para  descrever a atividade.

Alguns procedimentos de diagnóstico podem não ter um registro de Procedimento. O registro de Procedimento só é necessário quando há necessidade de capturar informações sobre a intervenção física que foi realizada para capturar as informações de diagnóstico (por exemplo, anestésico, incisão, tamanho do escopo, etc).

Uma Tarefa ([Task](https://hl7.org/fhir/r4/task.html)) é uma etapa do fluxo de trabalho, como cancelar um pedido, atender um pedido, assinar um pedido, mesclar um conjunto de registros, admitir um paciente. Procedimentos são ações que visam resultar em uma mudança física ou mental para ou para o sujeito (por exemplo, cirurgia, fisioterapia, treinamento, aconselhamento). Um recurso [Task](https://hl7.org/fhir/r4/task.html) geralmente existe em paralelo com recursos clínicos. Por exemplo, um [Task](https://hl7.org/fhir/r4/task.html) pode solicitar o atendimento de uma ServiceRequest ([br-core-servicerequest](https://hl7.org/fhir/r4/servicerequest.html)) solicitando um Procedimento. 

