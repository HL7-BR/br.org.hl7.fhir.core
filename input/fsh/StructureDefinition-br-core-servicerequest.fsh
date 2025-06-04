Profile: BRCoreServiceRequest
Parent: http://hl7.org/fhir/StructureDefinition/ServiceRequest
Id: br-core-servicerequest 
Description: "Este recurso restringe o recurso [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html) que registra uma solicitação de serviço, como investigações diagnósticas, tratamentos ou operações a serem realizadas"

* id ^short = "Identificador lógico deste artefato"
* id ^definition = "Identificador lógico deste artefato"
* meta ^short = "Metadados sobre o recurso"
* meta ^definition = "Metadados sobre o recurso" 
* implicitRules ^short = "Um conjunto de regras sob as quais este conteúdo foi criado"
* implicitRules ^definition = "Um conjunto de regras sob as quais este conteúdo foi criado"
* language ^short = "Idioma do recurso"
* language ^definition = "Idioma do recurso"
* text ^short = "Resumo do texto do recurso em linguagem natural"
* text ^definition = "Resumo do texto do recurso em linguagem natural"
* contained ^definition = "Recursos contidos no recurso"
* contained ^definition = "Recursos contidos no recurso"
* extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* modifierExtension ^short = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
* modifierExtension ^definition = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
* identifier ^short = "Identificadores externos para este recurso"
* identifier ^definition = "Identificadores externos para este recurso"
* instantiatesCanonical ^short = "Instancia o protocolo ou definição FHIR"
* instantiatesCanonical ^definition = "Instancia o protocolo ou definição FHIR"
* instantiatesUri ^short = "Instancia protocolo externo ou definição"
* instantiatesUri ^definition = "Instancia protocolo externo ou definição"
* basedOn ^short = "Referência aos planos de cuidado/solicitações/medicamentos associados a esta requisição"
* basedOn ^definition = "Referência aos planos de cuidado/solicitações/medicamentos associados a esta requisição"
* basedOn only Reference(br-core-careplan or br-core-servicerequest or br-core-medicationrequest)
* replaces ^short = "Referência à requisição a ser substituida"
* replaces ^definition = "Referência à requisição a ser substituida"
* requisition ^short = "Identificador da requisição"
* requisition ^definition = "Identificador da requisição"
* status ^short = "Status da requisição"
* status ^definition = "Status da requisição"
* intent ^short = "Código da intencionalidade desta requisição"
* intent ^definition = "Código da intencionalidade desta requisição"
* category 1..1
* category ^short = "Categoria desta requisição"
* category ^definition = "Categoria desta requisição"
* category from https://terminologia.saude.gov.br/fhir/ValueSet/BRCategoriaProcedimento
* priority 1..1
* priority ^short = "Prioridade desta requisição"
* priority ^definition = "Prioridade desta requisição"
* priority from https://terminologia.saude.gov.br/fhir/ValueSet/BRCaraterAtendimentoMIRA 
* doNotPerform ^short = "Verdadeiro se o serviço/procedimento não deve ser executado"
* doNotPerform ^definition = "Verdadeiro se o serviço/procedimento não deve ser executado"
* code 1..1
* code ^short = "Código do procedimento solicitado"
* code ^definition = "Código do procedimento solicitado"
* code from https://terminologia.saude.gov.br/fhir/ValueSet/BRProcedimentosNacionais
* orderDetail ^short = "Informações adicionais da requesição"
* orderDetail ^definition = "Informações adicionais da requesição"
* quantity[x] ^short = "Quantidade de procedimento solicitados"
* quantity[x] ^definition = "Quantidade de procedimento solicitados"
* subject ^short = "Referência ao paciente/grupo/localidade/dispositivo associado a esta requisição"
* subject ^definition = "Referência ao paciente/grupo/localidade/dispositivo associado a esta requisição"
* subject only Reference(br-core-patient or Group or br-core-location or Device)
* encounter ^short = "Referência ao atendimento relacionado a esta requisição"
* encounter ^definition = "Referência ao atendimento relacionado a esta requisição"
* occurrence[x] ^short = "Quando o procedimento deve ocorrer"
* occurrence[x] ^definition = "Quando o procedimento deve ocorrer"
* asNeeded[x] ^short = "Pré-condições para a realização do procedimento"
* asNeeded[x] ^definition = "Pré-condições para a realização do procedimento"
* authoredOn ^short = "Data de assinatura da requisição"
* authoredOn ^definition = "Data de assinatura da requisição"
* requester 1..1
* requester ^short = "Referência ao profissional/organização/paciente/dispotivo/pessoa relacionada que está solicitando o procedimento"
* requester ^definition = "Referência ao profissional/organização/paciente/dispotivo/pessoa relacionada que está solicitando o procedimento"
* requester only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or br-core-patient or Device or br-core-relatedperson)
* performerType ^short = "Função do profissional executante solicitado"
* performerType ^definition = "Função do profissional executante solicitado"
* performer 0..1
* performer ^short = "Referência ao profissional executante solicitado"
* performer ^definition = "Referência ao profissional executante solicitado"
* performer only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or CareTeam or br-core-healthcareservice or br-core-patient or Device or br-core-relatedperson)
* locationCode ^short = "Localização solicitada"
* locationCode ^definition = "Localização solicitada"
* locationReference ^short = "ReferÇencia à localização solicitada"
* locationReference ^definition = "ReferÇencia à localização solicitada"
* locationReference only Reference(br-core-location)
* reasonCode ^short = "Explicação/Justificativa para procedimento ou serviço"
* reasonCode ^definition = "Explicação/Justificativa para procedimento ou serviço"
* reasonReference 1..1
* reasonReference ^short = "Referência à explicação/justificativa para serviço ou procedimento"
* reasonReference ^definition = "Referência à explicação/justificativa para serviço ou procedimento"
* reasonReference only Reference(br-core-condition or br-core-observation or br-core-diagnosticreport or DocumentReference)
* insurance ^short = "Referência às coberturas associadas"
* insurance ^definition = "Referência às coberturas associadas"
* supportingInfo ^short = "Referência às informações adicionais"
* supportingInfo ^definition = "Referência às informações adicionais"
* specimen ^short = "Referência à amostras associadas"
* specimen ^definition = "Referência à amostras associadas"
* bodySite ^short = "Local anatômico associado ao procedimento"
* bodySite ^definition = "Local anatômico associado ao procedimento"
* bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* note ^short = "Comentários"
* note ^definition = "Comentários"
* patientInstruction ^short = "Instruções para o paciente"
* patientInstruction ^definition = "Instruções para o paciente"
* relevantHistory ^short = "Referência ao recurso Provenance"
* relevantHistory ^definition = "Referência ao recurso Provenance"
* relevantHistory only Reference(Provenance)
