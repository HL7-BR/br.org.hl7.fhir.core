Profile: br-core-practitionerrole
Parent: http://hl7.org/fhir/StructureDefinition/PractitionerRole
Id: br-core-practitionerrole
Description: "Um conjunto específico de funções / locais / especialidades / serviços que um profissional pode executar em uma organização por um período de tempo."

* id ^short = "ID lógico deste artefato"
* id ^definition = "ID lógico deste artefato"
* meta ^short = "Metadados sobre o recurso"
* meta ^definition = "Metadados sobre o recurso" 
* implicitRules ^short = "Conjunto de regras sob as quais este conteúdo foi criado"
* implicitRules ^definition = "Conjunto de regras sob as quais este conteúdo foi criado"
* language ^short = "Idioma do conteúdo do recurso"
* language ^definition = "Idioma do conteúdo do recurso"
* text ^short = "Resumo textual do recurso em linguagem natural"
* text ^definition = "Resumo textual do recurso em linguagem natural"
* contained ^short = "Recursos contidos em linha"
* contained ^definition = "Recursos contidos em linha"
* modifierExtension ^short = "Extensão que não pode ser ignorada"
* modifierExtension ^definition = "Extensão que não pode ser ignorada"
* identifier ^short = "Identificadores externos para este item"
* identifier ^definition = "Identificadores externos para este item"
* identifier 1..*
* identifier.use 1..1
* identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required)
* identifier.type 1..1
* identifier.type.coding.system = "http://www.saude.gov.br/fhir/r4/ValueSet/BRTipoDocumentoIndividuo-1.0" (exactly)
* active ^short = "Informa de o registro de função do profissional está em uso ativo"
* active ^definition = "Informa de o registro de função do profissional está em uso ativo"
* active 1..1
* period ^short = "Período durante o qual o profissional está autorizado a exercer essa(s) função(ões)."
* period ^definition = "Período durante o qual o profissional está autorizado a exercer essa(s) função(ões)."
* period 1..1
* practitioner ^short = "Profissional capaz de fornecer os serviços definidos para a organização"
* practitioner ^definition = "Profissional capaz de fornecer os serviços definidos para a organização"
* practitioner only Reference(br-core-practitioner)
* practitioner 1..1
* organization ^short = "Organização onde as funções estão disponíveis."
* organization ^definition = "Organização onde as funções estão disponíveis."
* organization only Reference(br-core-organization)
* organization 1..1
* code ^short = "Códigos dos papeis dos profissionais de saúde."
* code ^definition = "Códigos dos papeis dos profissionais de saúde."
* code 1..*
* code from http://www.saude.gov.br/fhir/r4/CodeSystem/BRCBO (required)
* specialty ^short = "Especialidade específica do profissional."
* specialty ^definition = "Especialidade específica do profissional."
* location ^short = "Local em que este profissional presta cuidados."
* location ^definition = "Local em que este profissional presta cuidados."
* location only Reference(br-core-location)
* healthcareService ^short = "A lista de serviços de saúde que este profissional fornece para a organização/local(is) desta função."
* healthcareService ^definition = "A lista de serviços de saúde que este profissional fornece para a organização/local(is) desta função."
* healthcareService only Reference(br-core-healthcareservice)
* telecom ^short = "Detalhes de contato específicos para a função/local/serviço."
* telecom ^definition = "Detalhes de contato específicos para a função/local/serviço."
* availableTime ^short = "Horários em que o site do serviço está disponível."
* availableTime ^definition = "Horários em que o site do serviço está disponível."
* availableTime.id ^short = "ID exclusivo para referência entre elementos."
* availableTime.id ^definition = "ID exclusivo para referência entre elementos."
* availableTime.extension ^short = "Conteúdo adicional definido por implementações."
* availableTime.extension ^definition = "Conteúdo adicional definido por implementações."
* availableTime.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas."
* availableTime.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas."
* availableTime.daysOfWeek ^short = "Dias da semana: seg| ter| qua| qui| sex| sab | dom."
* availableTime.daysOfWeek ^definition = "Dias da semana: seg| ter| qua| qui| sex| sab | dom."
* availableTime.allDay ^short = "Sempre disponível? sim ou não, por exemplo: serviço 24 horas."
* availableTime.allDay ^definition = "Sempre disponível? por exemplo: serviço 24 horas."
* availableTime.availableStartTime ^short = "Hora de abertura do dia (ignorado se allDay = true)"
* availableTime.availableStartTime ^definition = "Hora de abertura do dia (ignorado se allDay = true)"
* availableTime.availableEndTime ^short = "Horário de fechamento do dia (ignorado se allDay = true)."
* availableTime.availableEndTime ^definition = "Horário de fechamento do dia (ignorado se allDay = true)."
* notAvailable ^short = "Não disponível durante este período devido ao motivo fornecido."
* notAvailable ^definition = "Não disponível durante este período devido ao motivo fornecido."
* notAvailable.id ^short = "ID exclusivo para referência entre elementos."
* notAvailable.id ^definition = "ID exclusivo para referência entre elementos."
* notAvailable.extension ^short = "Conteúdo adicional definido por implementações."
* notAvailable.extension ^definition = "Conteúdo adicional definido por implementações."
* notAvailable.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas."
* notAvailable.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas."
* notAvailable.description ^short = "Motivo apresentado ao usuário explicando porque o horário não está disponível."
* notAvailable.description ^definition = "Motivo apresentado ao usuário explicando porque o horário não está disponível."
* notAvailable.during ^short = "Serviço indisponível a partir desta data."
* notAvailable.during ^definition = "Serviço indisponível a partir desta data."
* availabilityExceptions ^short = "Descrição da disponibilidade das exceções."
* availabilityExceptions ^definition = "Descrição da disponibilidade das exceções."
* endpoint ^short = "Endpoints que fornecem acesso a serviços operados para o profissional com esta função."
* endpoint ^definition = "Endpoints que fornecem acesso a serviços operados para o profissional com esta função."
* endpoint only Reference(Endpoint)










