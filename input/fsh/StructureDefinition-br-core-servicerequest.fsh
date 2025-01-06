Profile: BRCoreServiceRequest
Parent: http://hl7.org/fhir/StructureDefinition/ServiceRequest
Id: br-core-servicerequest 
Description: "Este recurso restringe o recurso [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html) que registra uma solicitação de serviço, como investigações diagnósticas, tratamentos ou operações a serem realizadas."

* id ^short = "ID lógico deste artefato"
* id ^definition = "ID lógico deste artefato"
* identifier ^short = "ID lógico deste artefato"
* identifier ^definition = "ID lógico deste artefato"
* meta ^short = "Metadados sobre o recurso"
* meta ^definition = "Metadados adicionais sobre o recurso"
* language ^short = "Linguagem do recurso"
* language ^definition = "A linguagem humana natural do recurso"
* text ^short = "Resumo de texto para o recurso, para interpretação humana"
* text ^definition = "Um texto narrativo resumindo as informações do recurso"
* instantiatesCanonical ^short = "Instancia o protocolo ou definição FHIR"
* instantiatesCanonical ^definition = "Instancia o protocolo ou definição FHIR"
* instantiatesUri ^short = "Instancia protocolo externo ou definição"
* instantiatesUri ^definition = "Instancia protocolo externo ou definição"
* basedOn ^short = "Que pedido atende"
* basedOn ^definition = "Que pedido atende"
* basedOn only Reference(br-core-careplan or br-core-servicerequest or br-core-medicationrequest)
* replaces ^short = "Qual solicitação substitui"
* replaces ^definition = "Qual solicitação substitui"
* requisition ^short = "ID de solicitação composta"
* requisition ^definition = "ID de solicitação composta"
* status ^short = "Códigos que identificam o estágio do ciclo de vida de uma solicitação."
* status ^definition = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* intent ^short = "Códigos que indicam o grau de autoridade/intencionalidade associado a uma solicitação."
* intent ^definition = "proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option"
* category 1..1
* category ^short = "Códigos que indicam o grau de autoridade/intencionalidade associado a uma solicitação."
* category ^definition = "Códigos que indicam o grau de autoridade/intencionalidade associado a uma solicitação."
* category from https://terminologia.saude.gov.br/fhir/ValueSet/BRCategoriaProcedimento
* priority 1..1
* priority ^short = "A prioridade clínica de uma ordem diagnóstica."
* priority ^definition = "routine | urgent | asap | stat"
* priority from https://terminologia.saude.gov.br/fhir/ValueSet/BRCaraterAtendimentoMIRA(required) 
* doNotPerform ^short = "Verdadeiro se o serviço/procedimento não deve ser executado"
* doNotPerform ^definition = "Verdadeiro se o serviço/procedimento não deve ser executado"
* code 1..1
* code ^short = "What is being requested/ordered"
* code ^definition = "What is being requested/ordered"
// * code from https://terminologia.saude.gov.br/fhir/ValueSet/BRProcedimentosNacionais (example)
* orderDetail ^short = "Informações adicionais sobre o pedido"
* orderDetail ^definition = "Informações adicionais sobre o pedido"
* quantity[x] ^short = "Valor do serviço"
* quantity[x] ^definition = "Valor do serviço"
* subject ^short = "Indivíduo ou entidade para a qual o serviço é solicitado"
* subject ^definition = "Indivíduo ou entidade para a qual o serviço é solicitado"
* subject only Reference(br-core-patient or Group or br-core-location or Device)
* encounter ^short = "Encontro em que a solicitação foi criada"
* encounter ^definition = "Encontro em que a solicitação foi criada"
* occurrence[x] ^short = "Quando o serviço deve ocorrer"
* occurrence[x] ^definition = "Quando o serviço deve ocorrer"
* asNeeded[x] ^short = "Pré-condições para o serviço"
* asNeeded[x] ^definition = "Pré-condições para o serviço"
* authoredOn ^short = "Data de solicitação assinada"
* authoredOn ^definition = "Data de solicitação assinada"
* requester 1..1
* requester ^short = "Quem/o que está solicitando o serviço"
* requester ^definition = "Quem/o que está solicitando o serviço"
* requester only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or br-core-patient or Device or br-core-relatedperson)
* performerType ^short = "Papel do performador"
* performerType ^definition = "Papel do performador"
* performer 0..1
* performer ^short = "Performador solicitado"
* performer ^definition = "Performador solicitado"
* performer only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or CareTeam or br-core-healthcareservice or br-core-patient or Device or br-core-relatedperson)
* locationCode ^short = "Localização solicitada"
* locationCode ^definition = "Localização solicitada"
* locationReference ^short = "Localização solicitada"
* locationReference ^definition = "Localização solicitada"
* locationReference only Reference(br-core-location)
* reasonCode ^short = "Explicação/Justificativa para procedimento ou serviço"
* reasonCode ^definition = "Explicação/Justificativa para procedimento ou serviço"
* reasonReference 1..1
* reasonReference ^short = "Explicação/Justificativa para serviço ou assistência"
* reasonReference ^definition = "Explicação/Justificativa para serviço ou assistência"
* reasonReference only Reference(br-core-condition or br-core-observation or br-core-diagnosticreport or DocumentReference)
* insurance ^short = "Cobertura de seguro associada"
* insurance ^definition = "Cobertura de seguro associada"
* supportingInfo ^short = "Informações clínicas adicionais"
* supportingInfo ^definition = "Informações clínicas adicionais"
* specimen ^short = "Amostras de Procedimentos"
* specimen ^definition = "Amostras de Procedimentos"
* bodySite ^short = "Localização no corpo"
* bodySite ^definition = "Localização no corpo"
* note ^short = "Comentários"
* note ^definition = "Comentários"
* patientInstruction ^short = "Instruções orientadas para o paciente ou consumidor"
* patientInstruction ^definition = "Instruções orientadas para o paciente ou consumidor"
* relevantHistory ^short = "Solicitar proveniência"
* relevantHistory ^definition = "Solicitar proveniência"
* relevantHistory only Reference(Provenance)
