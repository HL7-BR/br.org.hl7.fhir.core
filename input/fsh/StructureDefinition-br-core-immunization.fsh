Profile: BRCoreImmunization
Parent: http://hl7.org/fhir/StructureDefinition/Immunization
Id: br-core-immunization
Description: "Este perfil restringe o recurso [Immunization](https://hl7.org/fhir/R4/immunization.html) que descreve o evento em que um paciente recebe uma vacina ou um registro de uma imunização conforme relatado por um paciente, um médico ou outra parte."

* id ^short = "ID lógico deste artefato"
* id ^definition = "ID lógico deste artefato"
* meta ^short = "Metadados sobre o recurso"
* meta ^definition = "Metadados sobre o recurso"
* implicitRules ^short = "Regras implícitas de rastreamento"
* implicitRules ^definition = "Regras implícitas de rastreamento"
* language ^short = "Idioma do recurso"
* language ^definition = "Idioma do recurso"
* text ^short = "Texto narrativo, resumo, instruções ou legenda sobre o recurso"    
* text ^definition = "Texto narrativo, resumo, instruções ou legenda sobre o recurso"
* contained ^short = "Recursos contidos no artefato"
* contained ^definition = "Recursos contidos no artefato"
* extension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* extension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* modifierExtension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* modifierExtension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* identifier ^short = "Identificadores externos para este recurso"
* identifier ^definition = "Identificadores externos para este recurso"
* status ^short = "O status do evento de administração de imunobiológico"
* status ^definition = "O status do evento de administração de imunobiológico"
* statusReason ^short = "O motivo pelo qual o imunobiológico não foi administrado"
* statusReason ^definition = "O motivo pelo qual o imunobiológico não foi administrado"
* statusReason 0..0
* vaccineCode ^short = "Imunobiológico administrado"
* vaccineCode ^definition = "Imunobiológico administrado"
* vaccineCode from https://terminologia.saude.gov.br/fhir/ValueSet/BRImunobiologico (required)
* patient ^short = "O paciente que recebeu o imunobiológico"
* patient ^definition = "O paciente que recebeu o imunobiológico"
* patient only Reference(br-core-patient)
* patient.id ^short = "Identificador único para referenciação cruzada"
* patient.id ^definition = "Identificador único para referenciação cruzada"
* patient.extension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* patient.extension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* patient.reference ^short = "Referência literal,relativa, interna ou externa ou URL"
* patient.reference ^definition = "Referência literal,relativa, interna ou externa ou URL"
* patient.type ^short = "O tipo de referência utilizada"
* patient.type ^definition = "O tipo de referência utilizada"
* patient.identifier ^short = "Referência lógica,quando a referência literal não é conhecida"
* patient.identifier ^definition = "Referência lógica,quando a referência literal não é conhecida"
* patient.display ^short = "Texto alternativo para o recurso"
* patient.display ^definition = "Texto alternativo para o recurso"
* encounter ^short = "Referência ao atendimento no qual o imunobiológico foi administrado"
* encounter ^definition = "Referência ao atendimento no qual o imunobiológico foi administrado"
* encounter only Reference(br-core-encounter)
* encounter 0..0
* occurrence[x] ^short = "Data em que o imunobiológico foi administrado"    
* occurrence[x] ^definition = "Data em que o imunobiológico foi administrado"
* recorded ^short = "Data em que o primeiro registro de vacinação foi feito"
* recorded ^definition = "Data em que o primeiro registro de vacinação foi feito"
* recorded 0..0
* primarySource ^short = "Indica se o registro de vacinação foi relatado pelo paciente ou por um profissional de saúde"
* primarySource ^definition = "Indica se o registro de vacinação foi relatado pelo paciente ou por um profissional de saúde"
* reportOrigin ^short = "Indica a fonte do registro de vacinação relatado"
* reportOrigin ^definition = "Indica a fonte do registro de vacinação relatado"
* reportOrigin from https://terminologia.saude.gov.br/fhir/ValueSet/BRRegistroOrigem (required)
* location ^short = "Local onde o imunobiológico foi administrado"
* location ^definition = "Local onde o imunobiológico foi administrado"
* location only Reference(br-core-location)
* manufacturer ^short = "Fabricante do imunobiológico"
* manufacturer ^definition = "Fabricante do imunobiológico"
* manufacturer only Reference(br-core-organization)
* lotNumber ^short = "Número do lote do imunobiológico"
* lotNumber ^definition = "Número do lote do imunobiológico"
* expirationDate ^short = "Data de validade do imunobiológico"
* expirationDate ^definition = "Data de validade do imunobiológico"
* site ^short = "Local de administração do imunobiológico"
* site ^definition = "Local de administração do imunobiológico"
* site 1..1
* site from https://terminologia.saude.gov.br/fhir/ValueSet/BRLocalAplicacao (required)
* route ^short = "Via de administração do imunobiológico"
* route ^definition = "Via de administração do imunobiológico"
* route from https://terminologia.saude.gov.br/fhir/ValueSet/BRViaAdministracao (required)
* route 1..1
* doseQuantity ^short = "Quantidade de imunobiológico administrado"
* doseQuantity ^definition = "Quantidade de imunobiológico administrado"
* performer ^short = "Profissional de saúde que administrou o imunobiológico"
* performer ^definition = "Profissional de saúde que administrou o imunobiológico"
* performer 1..1
* performer.id ^short = "Identificador único para referenciação cruzada"
* performer.id ^definition = "Identificador único para referenciação cruzada"
* performer.extension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* performer.extension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* performer.modifierExtension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* performer.modifierExtension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* performer.function ^short = "Função do profissional de saúde no evento de administração de imunobiológico"
* performer.function ^definition = "Função do profissional de saúde no evento de administração de imunobiológico"
* performer.function from https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao (required)
* performer.function 1..1
* performer.actor ^short = "Profissional de saúde que administrou o imunobiológico"
* performer.actor ^definition = "Profissional de saúde que administrou o imunobiológico"
* performer.actor only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization)
* note ^short = "Observações adicionais sobre o evento de administração de imunobiológico"
* note ^definition = "Observações adicionais sobre o evento de administração de imunobiológico"
* note 0..0
* reasonCode ^short = "Motivo pelo qual o imunobiológico foi administrado"
* reasonCode ^definition = "Motivo pelo qual o imunobiológico foi administrado"
* reasonCode from https://terminologia.saude.gov.br/fhir/ValueSet/BREstrategiaVacinacao (required)
* reasonCode 0..1
* reasonReference ^short = "Referência ao motivo pelo qual o imunobiológico foi administrado"
* reasonReference ^definition = "Referência ao motivo pelo qual o imunobiológico foi administrado"
* reasonReference only Reference(br-core-condition or br-core-observation or br-core-diagnosticreport)
* reasonReference 0..1
* isSubpotent ^short = "Indica se o imunobiológico foi administrado em uma dose menor que a recomendada"
* isSubpotent ^definition = "Indica se o imunobiológico foi administrado em uma dose menor que a recomendada"
* isSubpotent 0..0
* subpotentReason 0..0
* education ^short = "Informações sobre a educação do paciente sobre o imunobiológico"
* education ^definition = "Informações sobre a educação do paciente sobre o imunobiológico"
* education 0..0
* education.id ^short = "Identificador único para referenciação cruzada"
* education.id ^definition = "Identificador único para referenciação cruzada"
* education.extension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* education.extension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* education.modifierExtension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* education.modifierExtension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* education.documentType ^short = "Tipo de documento educacional"
* education.documentType ^definition = "Tipo de documento educacional"
* education.documentType 0..0
* education.reference ^short = "Referência ao documento educacional"
* education.reference ^definition = "Referência ao documento educacional"
* education.reference 0..0
* education.publicationDate ^short = "Data de publicação do documento educacional"
* education.publicationDate ^definition = "Data de publicação do documento educacional"
* education.publicationDate 0..0
* education.presentationDate ^short = "Data de apresentação do documento educacional"
* education.presentationDate ^definition = "Data de apresentação do documento educacional"
* education.presentationDate 0..0
* programEligibility ^short = "Informações sobre a elegibilidade do paciente para o programa de imunização"
* programEligibility ^definition = "Informações sobre a elegibilidade do paciente para o programa de imunização"
* programEligibility from https://terminologia.saude.gov.br/fhir/ValueSet/BRElegibilidadeImunobiologico (required)
* programEligibility 0..0
* fundingSource ^short = "Fonte de financiamento do imunobiológico"
* fundingSource ^definition = "Fonte de financiamento do imunobiológico"
* fundingSource from http://hl7.org/fhir/ValueSet/immunization-funding-source(required)
* fundingSource 0..0
* reaction ^short = "Reações adversas do paciente ao imunobiológico"
* reaction ^definition = "Reações adversas do paciente ao imunobiológico"
* reaction 0..0
* reaction.id ^short = "Identificador único para referenciação cruzada"
* reaction.id ^definition = "Identificador único para referenciação cruzada"
* reaction.extension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* reaction.extension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* reaction.modifierExtension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* reaction.modifierExtension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* reaction.date ^short = "Data em que a reação adversa ocorreu"
* reaction.date ^definition = "Data em que a reação adversa ocorreu"
* reaction.date 0..0
* reaction.detail ^short = "Detalhes sobre a reação adversa"
* reaction.detail ^definition = "Detalhes sobre a reação adversa"
* reaction.detail only Reference(br-core-observation)
* reaction.detail 0..0
* reaction.reported ^short = "Indica que a reação adversa foi relatada pelo paciente"
* reaction.reported ^definition = "Indica que a reação adversa foi relatada pelo paciente"
* reaction.reported 0..0
* protocolApplied ^short = "Protocolos aplicados  durante a administração do imunobiológico"
* protocolApplied ^definition = "Protocolos aplicados  durante a administração do imunobiológico"
* protocolApplied 1..1
* protocolApplied.id ^short = "Identificador único para referenciação cruzada"
* protocolApplied.id ^definition = "Identificador único para referenciação cruzada"
* protocolApplied.extension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* protocolApplied.extension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* protocolApplied.modifierExtension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* protocolApplied.modifierExtension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* protocolApplied.series ^short = "Nome da série do imunobiológico"
* protocolApplied.series ^definition = "Nome da série do imunobiológico"
* protocolApplied.authority ^short = "Autoridade que definiu o protocolo"   
* protocolApplied.authority ^definition = "Autoridade que definiu o protocolo de administração do imunobiológico"
* protocolApplied.authority only Reference(br-core-organization)
* protocolApplied.authority 0..0
* protocolApplied.targetDisease ^short = "Doença alvo do imunobiológico"
* protocolApplied.targetDisease ^definition = "Doença alvo do imunobiológico"
* protocolApplied.doseNumber[x] ^short = "Número da dose do imunobiológico"
* protocolApplied.doseNumber[x] ^definition = "Número da dose do imunobiológico"
* protocolApplied.seriesDoses[x] ^short = "Número de doses da série do imunobiológico"
* protocolApplied.seriesDoses[x] ^definition = "Número de doses da série do imunobiológico"
