### Escopo/Uso

O recurso [br-core-careteam](https://saude.gov.br/fhir/StructureDefinition/br-core-careteam.html) inclui todas as pessoas, equipes e organizações que planejam participar da coordenação e entrega de cuidados para um único paciente ou um grupo (como um casal em terapia ou um grupo de apoio). O recurso [br-core-careteam](https://saude.gov.br/fhir/StructureDefinition/br-core-careteam.html) também pode ser atribuído organizacionalmente sem um sujeito em contexto, como uma equipe de código azul ou equipe de resposta a emergências. Isso não se limita a profissionais, mas pode incluir outros cuidadores, como familiares, tutores, o próprio paciente ou outros. O recurso [br-core-careteam](https://saude.gov.br/fhir/StructureDefinition/br-core-careteam.html), dependendo de onde utilizado, pode incluir membros da equipe de cuidados específicos para um plano de cuidados específico, um episódio, um encontro ou pode refletir todos os membros conhecidos da equipe nessas perspectivas. O recurso [br-core-careteam](https://saude.gov.br/fhir/StructureDefinition/br-core-careteam.html) de um indivíduo pode ser dinâmico ao longo do tempo, de modo que pode haver transitoriedade de membros da equipe, como uma equipe de reabilitação.

### Caso de uso

A seguir estão alguns exemplos de cenários de uso para este perfil:
-	Consultar a equipe de cuidados de um paciente;
-	Registrar ou atualizar os dados da equipe de cuidado de um paciente.


### Caso de uso da RNDS

Este perfil ainda não está implementado na RNDS.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support). 

**Cada Perfil [br-core-careteam](https://saude.gov.br/fhir/StructureDefinition/br-core-careteam.html) deve ter:**
- Não há elementos obrigatórios.

**Cada Perfil [br-core-careteam](https://saude.gov.br/fhir/StructureDefinition/br-core-careteam.html) deve oferecer suporte a:**
- Não há elementos.

### Limites e relacionamentos

O recurso [br-core-careteam](https://saude.gov.br/fhir/StructureDefinition/br-core-careteam.html)é diferente de um grupo (Group). O grupo é independente do paciente e identifica um conjunto indiferenciado de indivíduos que devem ser alvo de uma ou mais atividades clínicas (por exemplo, conjunto de participantes de ensaios clínicos, conjunto de indivíduos impactados por ou em risco de um evento de saúde pública, um rebanho ou bando, etc.). O recurso [br-core-careteam](https://saude.gov.br/fhir/StructureDefinition/br-core-careteam.html) estabelece um conjunto de relacionamentos e funções e é específico para um determinado paciente. Os atores são os membros individuais ou grupo organizado de indivíduos. O [br-core-careteam](https://saude.gov.br/fhir/StructureDefinition/br-core-careteam.html) pode ser referenciado por EpisodeOfCare, [Encounter](https://www.hl7.org/fhir/encounter.html) ou [CarePlan](https://hl7.org/fhir/R4/careplan.html#CarePlan) para identificar o conjunto de indivíduos (e suas respectivas funções) que devem estar envolvidos no fornecimento do atendimento definido por esses recursos.

Este recurso é referenciado por [br-core-careplan](https://saude.gov.br/fhir/StructureDefinition/br-core-careplan.html), [ChargeItem](https://hl7.org/fhir/R4/chargeitem.html#ChargeItem), [Communication](https://hl7.org/fhir/R4/communication.html#Communication), [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html#CommunicationRequest), [Consent](https://hl7.org/fhir/R4/consent.html#Consent), [Contract](https://hl7.org/fhir/R4/contract.html#Contract), [DeviceRequest](https://hl7.org/fhir/R4/devicerequest.html#DeviceRequest), [br-core-diagnosticreport](https://saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html), [EpisodeOfCare](https://hl7.org/fhir/R4/episodeofcare.html#EpisodeOfCare), [ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html#ImagingStudy), [Media](https://hl7.org/fhir/R4/media.html#Media), [br-core-medicationrequest](https://saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest.html), [br-core-observation](https://saude.gov.br/fhir/StructureDefinition/br-core-observation.html), [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html#ServiceRequest) e [Task](https://hl7.org/fhir/R4/task.html#Task).
