Profile: br-core-procedure
Parent: http://hl7.org/fhir/StructureDefinition/Procedure
Id: br-core-procedure
Description: "Este perfil representa as restrições aplicadas ao recurso Procedimento pelo projeto IPS, que especifica uma entrada do Histórico do Procedimento para o resumo internacional do paciente com base no padrão FHIR R4."

* id ^short = "Identificador lógico deste artefato."
* id ^definition = "Identificador lógico deste artefato."
* meta ^short = "Metadados sobre o recurso."
* meta ^definition = "Metadados sobre o recurso." 
* implicitRules ^short = "Conjunto de regras sob as quais este conteúdo foi criado."
* implicitRules ^definition = "Conjunto de regras sob as quais este conteúdo foi criado."
* language ^short = "Idioma do conteúdo do recurso."
* language ^definition = "Idioma do conteúdo do recurso."
* text ^short = "Resumo do texto do recurso em linguagem natural."
* text ^definition = "Resumo do texto do recurso em linguagem natural."
* contained ^short = "Recursos contidos em linha."
* contained ^definition = "Recursos contidos em linha."
* modifierExtension ^short = "Extensão que não pode ser ignorada."
* modifierExtension ^definition = "Extensão que não pode ser ignorada."
* identifier ^short = "Identificadores externos para este item."
* identifier ^definition = "Identificadores externos para este item."
* instantiatesCanonical ^short = "Instâncias ou definições do protocolo FHIR."
* instantiatesCanonical ^definition = "Instâncias ou definições do protocolo FHIR."
* instantiatesUri ^short = "Instâncias externas do protocolo ou definições."
* instantiatesUri ^definition = "Instâncias externas do protocolo ou definições."
* basedOn ^short = "Uma requisição para o procedimento."
* basedOn ^definition = "Uma requisição para o procedimento."
* basedOn only Reference(br-core-careplan or br-core-servicerequest)
* partOf ^short = "Parte do evento referenciado."
* partOf ^definition = "Parte do evento referenciado."
* partOf only Reference(br-core-procedure or br-core-observation or br-core-medicationadministration)
* status ^short = "Código que especifica o estado do procedimento."
* status ^definition = "Um código que especifica o estado do procedimento:preparação | em andamento | não realizado | em espera | paraso | concluído | digitado com erro | desconhecido"
//* status from https://terminologia.saude.gov.br/fhir/ValueSet/BREstadoEvento (required)
* statusReason ^short = "Motivo para o estado atual."
* statusReason ^definition = "Motivo para o estado atual."
* statusReason 1..1
* category ^short = "Classificação do procedimento."
* category ^definition = "Classificação do procedimento. Exemplo: um código que classifica um procedimento para fins de pesquisa, classificação e exibição."
* category from https://terminologia.saude.gov.br/fhir/ValueSet/BRCategoriaProcedimento (required)
* code ^short = "Um conceito que referencia uma terminologia ou apenas texto."
* code ^definition = "Um conceito que referencia uma terminologia ou apenas texto."
* code 1..1
* code from https://terminologia.saude.gov.br/fhir/ValueSet/BRProcedimentosNacionais (preferred)
* subject ^short = "Em quem o procedimento foi realizado."
* subject ^definition = "Em quem o procedimento foi realizado."
* subject only Reference(br-core-patient)
* subject.id ^short = "Identificador exclusivo para referência entre elementos."
* subject.id ^definition = "Identificador exclusivo para referência entre elementos."
* subject.id 0..1
* subject.extension ^short = "Conteúdo adicional definido por implementações."
* subject.extension ^definition = "Conteúdo adicional definido por implementações."
* subject.reference ^short = "Referência literal, URL relativa, interna ou absoluta."
* subject.reference ^definition = "Referência literal, URL relativa, interna ou absoluta."
* subject.type ^short = "Tipo ao qual a referência se refere (por exemplo, Paciente)."
* subject.type ^definition = "Tipo ao qual a referência se refere (por exemplo, Paciente)."
* subject.identifier ^short = "Referência lógica, quando a referência literal não é conhecida."
* subject.identifier ^definition = "Referência lógica, quando a referência literal não é conhecida."
* subject.display ^short = "Texto alternativo para o recurso."
* subject.display ^definition = "Texto alternativo para o recurso."
//=====================================================================
* encounter ^short = "Contato assistencial descrito nesta Composition"
* encounter ^definition = "Contato assistencial descrito nesta Composition"
* encounter only Reference(br-core-encounter)
* performed[x] ^short = "Quando o procedimento foi realizado."
* performed[x] ^definition = "Quando o procedimento foi realizado."
* performed[x].id ^short = "Identificador exclusivo para referência entre elementos."
* performed[x].id ^definition = "Identificador exclusivo para referência entre elementos."
* performedDateTime 1..1
//=======================================================================
* recorder ^short = "Quem registrou o procedimento."
* recorder ^definition = "Quem registrou o procedimento."
* recorder only Reference(br-core-patient or br-core-relatedperson or br-core-practitioner or br-core-practitionerrole)
* asserter ^short = "Pessoa que afirma este procedimento."
* asserter ^definition = "Pessoa que afirma este procedimento."
* asserter only Reference(br-core-patient or br-core-relatedperson or br-core-practitioner or br-core-practitionerrole)
* performer ^short = "As pessoas que realizaram o procedimento."
* performer ^definition = "As pessoas que realizaram o procedimento."
* performer 1..1
* performer.id ^short = "Identificador exclusivo para referência entre elementos."
* performer.id ^definition = "Identificador exclusivo para referência entre elementos."
* performer.extension ^short = "Conteúdo adicional definido por implementações."
* performer.extension ^definition = "Conteúdo adicional definido por implementações."
* performer.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas."
* performer.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas."
* performer.function ^short = "Tipo de performance."
* performer.function ^definition = "Tipo de performance."
* performer.actor ^short = "Referência do profissional."
* performer.actor ^definition = "Referência do profissional."
* performer.actor only Reference(br-core-patient or br-core-relatedperson or br-core-practitioner or br-core-practitionerrole or br-core-organization)
* performer.onBehalfOf ^short = "Organização para a qual o dispositivo ou profissional estava atuando."
* performer.onBehalfOf ^definition = "Organização para a qual o dispositivo ou profissional estava atuando."
* performer.onBehalfOf only Reference(br-core-organization)
* location ^short = "Onde aconteceu o procedimento"
* location ^definition = "Onde aconteceu o procedimento."
* location only Reference(br-core-location)
* reasonCode ^short = "Código do motivo do procedimento realizado."
* reasonCode ^definition = "Código do motivo do procedimento realizado."
* reasonCode from https://terminologia.saude.gov.br/fhir/ValueSet/CID10 (required)
* reasonReference ^short = "A justificativa de que o procedimento foi realizado."
* reasonReference ^definition = "A justificativa de que o procedimento foi realizado."
* reasonReference only Reference(br-core-condition or br-core-observation or br-core-procedure or br-core-diagnosticreport or DocumentReference)
* bodySite ^short = "Conceito - referência a uma terminologia ou apenas texto."
* bodySite ^definition = "Conceito - referência a uma terminologia ou apenas texto."
* outcome ^short = "Resultado do procedimento."
* outcome ^definition = "Resultado do procedimento."
* report ^short = "Qualquer relatório resultante do procedimento."
* report ^definition = "Qualquer relatório resultante do procedimento."
* report only Reference(br-core-diagnosticreport or DocumentReference or Composition)
* complication ^short = "Complicação após o procedimento."
* complication ^definition = "Complicação após o procedimento."
* complicationDetail ^short = "Uma condição que é resultado da complicação do procedimento."
* complicationDetail ^definition = "Uma condição que é resultado da complicação do procedimento."
* complicationDetail only Reference(br-core-condition)
* followUp ^short = "Instruções para acompanhamento."
* followUp ^definition = "Instruções para acompanhamento."
* note ^short = "Informações adicionais sobre o procedimento."
* note ^definition = "Informações adicionais sobre o procedimento."
* focalDevice ^short = "Dispositivo manipulado, implantado ou removido."
* focalDevice ^definition = "Dispositivo manipulado, implantado ou removido."
* focalDevice.id ^short = "Identificador exclusivo para referência entre elementos."
* focalDevice.id ^definition = "Identificador exclusivo para referência entre elementos."
* focalDevice.extension ^short = "Conteúdo adicional definido por implementações."
* focalDevice.extension ^definition = "Conteúdo adicional definido por implementações."
* focalDevice.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas."
* focalDevice.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas."
* focalDevice.action ^short = "Tipo de alteração no dispositivo."
* focalDevice.action ^definition = "Tipo de alteração no dispositivo."
* focalDevice.action from http://hl7.org/fhir/R4/valueset-device-action.html (preferred)
* focalDevice.manipulated ^short = "Dispositivo que foi alterado."
* focalDevice.manipulated ^definition = "Dispositivo que foi alterado."
* focalDevice.manipulated only Reference(Device)
* usedReference ^short = "Itens usados ​​durante o procedimento."
* usedReference ^definition = "Itens usados ​durante o procedimento."
* usedReference only Reference(Device or br-core-medication or Substance)
* usedCode ^short = "Itens codificados usados ​durante o procedimento."
* usedCode ^definition = "Itens codificados usados ​​durante o procedimento."
* usedCode from https://terminologia.saude.gov.br/fhir/ValueSet/BROrtesesProtesesImplantaveis (required)