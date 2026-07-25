Profile: BRCoreProcedure
Parent: http://hl7.org/fhir/StructureDefinition/Procedure
Id: br-core-procedure
Description: "Este recurso descreve uma ação que é ou foi realizada em ou para um paciente. Pode ser uma intervenção física como uma operação, ou menos invasiva como serviços de longo prazo, aconselhamento ou hipnoterapia"

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
* instantiatesCanonical ^short = "Instâncias ou definições do protocolo FHIR"
* instantiatesCanonical ^definition = "Instâncias ou definições do protocolo FHIR"
* instantiatesUri ^short = "Instâncias externas do protocolo ou definições"
* instantiatesUri ^definition = "Instâncias externas do protocolo ou definições"
* basedOn ^short = "Referência aos planos de cuidado/requisições para este procedimento"
* basedOn ^definition = "Referência aos planos de cuidado/requisições para este procedimento"
* basedOn only Reference(br-core-careplan or br-core-servicerequest)
* partOf ^short = "Referência aos procedimento/observação/administração de medicamentos asssociados a este procedimento"
* partOf ^definition = "Referência aos procedimento/observação/administração de medicamentos asssociados a este procedimento"
* partOf only Reference(br-core-procedure or br-core-observation or br-core-medicationadministration)
* status ^short = "Código do status do procedimento"
* status ^definition = "Código do status do procedimento"
* statusReason ^short = "Motivo para o status atual"
* statusReason ^definition = "Motivo para o status atual"
* statusReason from https://terminologia.saude.gov.br/fhir/ValueSet/BRMotivoProcedimentoNaoRealizado (example)
* category ^short = "Classificação do procedimento"
* category ^definition = "Classificação do procedimento. Exemplo: um código que classifica um procedimento para fins de pesquisa, classificação e exibição"
* category from https://terminologia.saude.gov.br/fhir/ValueSet/BRCategoriaProcedimento (example)
* code ^short = "Código do procedimento"
* code ^definition = "Código do procedimento"
* code from https://terminologia.saude.gov.br/fhir/ValueSet/BRProcedimentosNacionais (example)
* code 1..1
* subject ^short = "Referência ao paciente"
* subject ^definition = "Referência ao paciente"
* subject only Reference(br-core-patient)
* subject.id ^short = "Identificador exclusivo para referência entre elementos"
* subject.id ^definition = "Identificador exclusivo para referência entre elementos"
* subject.id 0..1
* subject.extension ^short = "Conteúdo adicional definido por implementações"
* subject.extension ^definition = "Conteúdo adicional definido por implementações"
* subject.reference ^short = "Referência literal, URL relativa, interna ou absoluta"
* subject.reference ^definition = "Referência literal, URL relativa, interna ou absoluta"
* subject.type ^short = "Tipo ao qual a referência se refere (por exemplo, Paciente)"
* subject.type ^definition = "Tipo ao qual a referência se refere (por exemplo, Paciente)"
* subject.identifier ^short = "Referência lógica, quando a referência literal não é conhecida"
* subject.identifier ^definition = "Referência lógica, quando a referência literal não é conhecida"
* subject.display ^short = "Texto alternativo para o recurso"
* subject.display ^definition = "Texto alternativo para o recurso"
* encounter ^short = "Referência ao atendimento associado a este procedimento"
* encounter ^definition = "Referência ao atendimento associado a este procedimento"
* encounter only Reference(br-core-encounter)
* performed[x] ^short = "Quando o procedimento foi realizado"
* performed[x] ^definition = "Quando o procedimento foi realizado"
* recorder ^short = "Referência à paciente/pessoa/profissional que registrou o procedimento"
* recorder ^definition = "Referência à paciente/pessoa/profissional que registrou o procedimento"
* recorder only Reference(br-core-patient or br-core-relatedperson or br-core-practitioner or br-core-practitionerrole)
* asserter ^short = "Referência à paciente/pessoa/profissional que atestou este procedimento"
* asserter ^definition = "Referência à paciente/pessoa/profissional que atestou este procedimento"
* asserter only Reference(br-core-patient or br-core-relatedperson or br-core-practitioner or br-core-practitionerrole)
* performer ^short = "Executante do procedimento"
* performer ^definition = "Executante do procedimento"
* performer 1..1
* performer.id ^short = "Identificador exclusivo para referência entre elementos"
* performer.id ^definition = "Identificador exclusivo para referência entre elementos"
* performer.extension ^short = "Conteúdo adicional definido por implementações"
* performer.extension ^definition = "Conteúdo adicional definido por implementações"
* performer.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* performer.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* performer.function ^short = "Função do executante"
* performer.function ^definition = "Função do executante"
* performer.actor ^short = "Referência do profispaciente/pessoa/profissional executante"
* performer.actor ^definition = "Referência do profispaciente/pessoa/profissional executante"
* performer.actor only Reference(br-core-patient or br-core-relatedperson or br-core-practitioner or br-core-practitionerrole or br-core-organization or Device)
* performer.onBehalfOf ^short = "Referência à organização associada a este procedimento"
* performer.onBehalfOf ^definition = "Referência à organização associada a este procedimento"
* performer.onBehalfOf only Reference(br-core-organization)
* location ^short = "Referência ao local de execução do procedimento"
* location ^definition = "Referência ao local de execução do procedimento"
* location only Reference(br-core-location)
* reasonCode ^short = "Motivo da realização do procedimento"
* reasonCode ^definition = "Motivo da realização do procedimento"
* reasonCode from https://terminologia.saude.gov.br/fhir/ValueSet/BRProblemaDiagnostico (example)
* reasonReference ^short = "Referência à condição, observação, procedimento, relatório diagnóstico, documento clínico associado ao procedimento"
* reasonReference ^definition = "Referência à condição, observação, procedimento, relatório diagnóstico, documento clínico associado ao procedimento"
* reasonReference only Reference(br-core-condition or br-core-observation or br-core-procedure or br-core-diagnosticreport or DocumentReference)
* bodySite from http://hl7.org/fhir/ValueSet/body-site (example)
* bodySite ^short = "Local anatômico associado ao procedimento"
* bodySite ^definition = "Local anatômico associado ao procedimento"
* outcome ^short = "Resultado do procedimento"
* outcome ^definition = "Resultado do procedimento"
* outcome from https://terminologia.saude.gov.br/fhir/ValueSet/BRDesfechoProcedimento (example)
* report ^short = "Referência ao documento/relatório resultantes deste procedimento"
* report ^definition = "Referência ao documento/relatório resultantes deste procedimento"
* report only Reference(br-core-diagnosticreport or DocumentReference or br-core-composition)
* complication ^short = "Complicações deste procedimento"
* complication ^definition = "Complicações deste procedimento"
* complication from https://terminologia.saude.gov.br/fhir/ValueSet/BRProblemaDiagnostico (example)
* complicationDetail ^short = "Referência às condições resultantes das complicações dete procedimento"
* complicationDetail ^definition = "Referência às condições resultantes das complicações dete procedimento"
* complicationDetail only Reference(br-core-condition)
* followUp ^short = "Instruções para acompanhamento"
* followUp ^definition = "Instruções para acompanhamento"
* note ^short = "Informações adicionais sobre o procedimento"
* note ^definition = "Informações adicionais sobre o procedimento"
* focalDevice ^short = "Dispositivo manipulado, implantado ou removido"
* focalDevice ^definition = "Dispositivo manipulado, implantado ou removido"
* focalDevice.id ^short = "Identificador exclusivo para referência entre elementos"
* focalDevice.id ^definition = "Identificador exclusivo para referência entre elementos"
* focalDevice.extension ^short = "Conteúdo adicional definido por implementações"
* focalDevice.extension ^definition = "Conteúdo adicional definido por implementações"
* focalDevice.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* focalDevice.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* focalDevice.action ^short = "Código do tipo de alteração no dispositivo durante o procedimento"
* focalDevice.action ^definition = "Código do tipo de alteração no dispositivo durante o procedimento"
* focalDevice.manipulated ^short = "Referência ao dispositivo alterado neste procedimento"
* focalDevice.manipulated ^definition = "Referência ao dispositivo alterado neste procedimento"
* focalDevice.manipulated only Reference(Device)
* usedReference ^short = "Referência ao dispositivo/medicamento/substância utilizados durante o procedimento"
* usedReference ^definition = "Referência ao dispositivo/medicamento/substância utilizados durante o procedimento"
* usedReference only Reference(Device or br-core-medication or Substance)
* usedCode ^short = "Tipo de dispositivos utilizados durante o procedimento"
* usedCode ^definition = "Tipo de dispositivos utilizados durante o procedimento"
