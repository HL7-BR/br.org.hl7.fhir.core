Profile: br-core-careteam
Parent: http://hl7.org/fhir/StructureDefinition/CareTeam
Id: br-core-careteam
Description: ""

* identifier ^short = "Identificadores externos para este recurso"
* identifier ^definition = "Identificadores externos para este recurso"
* status ^short = "proposed | active | suspended | inactive | entered-in-error"
* status ^definition = "proposed | active | suspended | inactive | entered-in-error"
* category ^short = "Tipo do time"
* category ^definition = "Tipo do time"
* category from https://terminologia.saude.gov.br/fhir/ValueSer-BRModalidadeAssistencial.html (example)
* name ^short = "Nome da equipe, como equipe de avaliação de crise"
* name ^definition = "Nome da equipe, como equipe de avaliação de crise"
* subject ^short = "Para quem é a equipe de cuidados"
* subject ^definition = "Para quem é a equipe de cuidados"
* subject only Reference(br-core-patient)
* encounter ^short = "Evento de assistência médica"
* encounter ^definition = "Evento de assistência médica"
* encounter only Reference(br-core-encounter)
* period ^short = "O período de tempo que o time abrange"
* period ^definition = "O período de tempo que o time abrange"
* participant ^short = "Lista de participantes envolvidos no atendimento"
* participant ^definition = "Lista de participantes envolvidos no atendimento"
* participant.role ^short = "Tipo de envolvimento"
* participant.role ^definition = "Tipo de envolvimento"
* participant.role from https://terminologia.saude.gov.br/fhir/ValueSet-BRCBO.html (example)
* participant.member ^short = "Quem está envolvido"
* participant.member ^definition = "Quem está envolvido"
* participant.member only Reference(br-core-practitioner or br-core-practitionerrole or br-core-relatedperson or br-core-patient or br-core-organization or br-core-careteam)
* participant.onBehalfOf ^short = "Organização do praticante"
* participant.onBehalfOf ^definition = "Organização do praticante"
* participant.onBehalfOf only Reference(br-core-organization)
* participant.period ^short = "Período de tempo do participante"
* participant.period ^definition = "Período de tempo do participante"
* reasonCode ^short = "Por que a equipe de atendimento existe"
* reasonCode ^definition = "Por que a equipe de atendimento existe"
* reasonCode from http://hl7.org/fhir/sid/icd-10 (example)
* reasonReference ^short = "Por que a equipe de atendimento existe"
* reasonReference ^definition = "Por que a equipe de atendimento existe"
* reasonReference only Reference(br-core-condition)
* managingOrganization ^short = "Organization responsible for the care team"
* managingOrganization ^definition = "Organization responsible for the care team"
* managingOrganization only Reference(br-core-organization)
* telecom ^short = "Um detalhe de contato para a equipe de atendimento (que se aplica a todos os membros)"
* telecom ^definition = "Um detalhe de contato para a equipe de atendimento (que se aplica a todos os membros)"
* note ^short = "Comentários feitos sobre o CareTeam"
* note ^definition = "Comentários feitos sobre o CareTeam"