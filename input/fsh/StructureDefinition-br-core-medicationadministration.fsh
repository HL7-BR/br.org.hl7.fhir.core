Profile: BRCoreMedicationAdministration
Parent: http://hl7.org/fhir/StructureDefinition/MedicationAdministration
Id: br-core-medicationadministration
Title: "br-core-medicationadministration"
Description: "Descreve o evento de um paciente consumindo ou de algum medicamento sendo administrado a um paciente. Isso pode ser tão simples quanto engolir um comprimido ou pode ser uma infusão de longa duração. Recursos relacionados vinculam esse evento à prescrição de autorização e ao atendimento specífco entre o paciente e o profissional de saúde."

//
//



//
//* reason only Reference(br-core-condition or br-core-observation or br-core-diagnosticreport)
//

* identifier ^short = "Identificadores externos para este recurso"
* identifier ^definition = "Identificadores externos para este recurso"
* instantiates ^short = "Instancia protocolo ou definição"
* instantiates ^definition = "Instancia protocolo ou definição"
* partOf ^short = "Parte do evento referenciado"
* partOf ^definition = "Parte do evento referenciado"
* status ^short = "Códigos de status de administração de medicamentos"
* status ^definition = "in-progress | not-done | on-hold | completed | entered-in-error | stopped | unknown"
* statusReason ^short = "Motivo da administração não realizada"
* statusReason ^definition = "Motivo da administração não realizada"
* category ^short = "Tipo de uso de medicamentos"
* category ^definition = "Tipo de uso de medicamentos"
* medication[x] ^short = "O que foi administrado"
* medication[x] ^definition = "O que foi administrado"
* subject ^short = "Quem recebeu a medicação"
* subject ^definition = "Quem recebeu a medicação"
* subject only Reference(br-core-patient)
* context ^short = "Encontro ou Episódio de Cuidado administrado como parte de"
* context ^definition = "Encontro ou Episódio de Cuidado administrado como parte de"
* context only Reference(br-core-encounter)
* supportingInformation ^short = "Informações adicionais para suporte à administração"
* supportingInformation ^definition = "Informações adicionais para suporte à administração"
* effective[x] ^short = "Hora de início e término da administração"
* effective[x] ^definition = "Hora de início e término da administração"
* performer ^short = "Quem realizou a administração da medicação e o que eles fizeram"
* performer ^definition = "Quem realizou a administração da medicação e o que eles fizeram"
* performer.function ^short = "Tipo de desempenho"
* performer.function ^definition = "Tipo de desempenho"
* performer.function from https://www.hl7.org/fhir/ValueSet/med-admin-perform-function (preferred)
* performer.actor ^short = "Quem realizou a administração do medicamento"
* performer.actor ^definition = "Quem realizou a administração do medicamento"
* performer.actor only Reference(br-core-practitioner or br-core-practitionerrole or br-core-patient or br-core-relatedperson or Device)
* reasonCode ^short = "Motivo da administração realizada"
* reasonCode ^definition = "Motivo da administração realizada"
* reasonReference ^short = "Condição ou observação que respalda o motivo pelo qual o medicamento foi administrado"
* reasonReference ^definition = "Condição ou observação que respalda o motivo pelo qual o medicamento foi administrado"
* request ^short = "Solicitação pela qual a administração foi performada"
* request ^definition = "Solicitação pela qual a administração foi performada"
* request only Reference(br-core-medicationrequest)
* device ^short = "Dispositivo usado para administrar"
* device ^definition = "Dispositivo usado para administrar"
* note ^short = "Informações sobre a administração"
* note ^definition = "Informações sobre a administração"
* dosage ^short = "Detalhes de como a medicação foi administrada"
* dosage ^definition = "Detalhes de como a medicação foi administrada"
* dosage.text ^short = "Instruções de dosagem em texto livre, por exemplo, SIG"
* dosage.text ^definition = "Instruções de dosagem em texto livre, por exemplo, SIG"
* dosage.site ^short = "Local do corpo administrado em"
* dosage.site ^definition = "Local do corpo administrado em"
* dosage.route ^short = "Caminho da substância para o corpo"
* dosage.route ^definition = "Caminho da substância para o corpo"
* dosage.method ^short = "Como a medicação foi administrada"
* dosage.method ^definition = "Como a medicação foi administrada"
* dosage.dose ^short = "Quantidade de medicação por dose"
* dosage.dose ^definition = "Quantidade de medicação por dose"
* dosage.rate[x] ^short = "Quantidade de dose por unidade de tempo"
* dosage.rate[x] ^definition = "Quantidade de dose por unidade de tempo"
* eventHistory ^short = "Uma lista de eventos de interesse no ciclo de vida"
* eventHistory ^definition = "Uma lista de eventos de interesse no ciclo de vida"
* partOf only Reference(br-core-medicationadministration or br-core-procedure)
* reasonReference only Reference(br-core-condition or br-core-observation or br-core-diagnosticreport)
