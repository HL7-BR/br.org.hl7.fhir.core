Profile: BRCorePractitionerRole
Parent: http://hl7.org/fhir/StructureDefinition/PractitionerRole
Id: br-core-practitionerrole
Description: "Este perfil restringe o recurso PractitionerRole que representa um conjunto específico de funções/locais/especialidades/serviços que um profissional pode desempenhar em uma organização por um período de tempo"

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
* identifier 0..*
* identifier.id ^short = "Identificador único para referência cruzada"
* identifier.id ^definition = "Identificador único para referência cruzada"
* identifier.extension ^short = "Conteúdo adicional definido por implementações"
* identifier.extension ^definition = "Conteúdo adicional definido por implementações"
* identifier.type ^short = "Tipo do identificador"
* identifier.type ^definition = "Tipo do identificador"
* identifier.type.id ^short = "Identificador único para referência cruzada"
* identifier.type.id ^definition = "Identificador único para referência cruzada"
* identifier.type.extension ^short = "Conteúdo adicional definido por implementações"
* identifier.type.extension ^definition = "Conteúdo adicional definido por implementações"
* identifier.type.coding ^short = "Código do identificador definido pelo sistema terminologico"
* identifier.type.coding ^definition = "Código do identificador definido pelo sistema terminologico"
* identifier.type.coding.id ^short = "Identificador único para referência cruzada"
* identifier.type.coding.id ^definition = "Identificador único para referência cruzada"
* identifier.type.coding.extension ^short = "Conteúdo adicional definido por implementações"
* identifier.type.coding.extension ^definition = "Conteúdo adicional definido por implementações"
* identifier.type.coding.system ^short = "Sistema de terminologia"
* identifier.type.coding.system ^definition = "Sistema de terminologia"
* identifier.type.coding.version ^short = "Versão do sistema de terminologia, se relevante"
* identifier.type.coding.version ^definition = "Versão do sistema de terminologia, se relevante"
* identifier.type.coding.code ^short = "Conteúdo definido pelo sistema de terminologia"
* identifier.type.coding.code ^definition = "Conteúdo definido pelo sistema de terminologia"
* identifier.type.coding.display ^short = "Representação definida pelo sistema de terminologia"
* identifier.type.coding.display ^definition = "Representação definida pelo sistema de terminologia"
* identifier.type.coding.userSelected ^short = "Se este código foi selecionado diretamente pelo usuário"
* identifier.type.coding.userSelected ^definition = "Se este código foi selecionado diretamente pelo usuário"
* identifier.type.text ^short = "Representação em texto do conceito"
* identifier.type.text ^definition = "Representação em texto do conceito"
* identifier.system ^short = "Namespace do valor do identificador"
* identifier.system ^definition = "Namespace do valor do identificador"
* identifier.value ^short = "Valor do identificador"
* identifier.value ^definition = "Valor do identificador"
* identifier.period ^short = "Período de tempo em que o identificador é/foi válido para uso"
* identifier.period ^definition = "Período de tempo em que o identificador é/foi válido para uso"
* identifier.assigner ^short = "Referência à organização que emitiu esse identificador"
* identifier.assigner ^definition = "Referência à organização que emitiu esse identificador"
* identifier.use ^short = "Uso do identificador"
* identifier.use ^definition = "Uso do identificador"
* identifier.use 1..1
* identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required)
* identifier.type 1..1
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* active ^short = "Informa se esta função do profissional está ativa"
* active ^definition = "Informa se esta função do profissional está ativa"
* active 1..1
* period ^short = "Período durante o qual o profissional está autorizado a exercer essa função"
* period ^definition = "Período durante o qual o profissional está autorizado a exercer essa função"
* period 1..1
* practitioner ^short = "Referência ao profissional"
* practitioner ^definition = "Referência ao profissional"
* practitioner only Reference(br-core-practitioner)
* practitioner 1..1
* organization ^short = "Referência à organização"
* organization ^definition = "Referência à organização"
* organization only Reference(br-core-organization)
* organization 1..1
* code ^short = "Códigos das funções dos profissionais de saúde"
* code ^definition = "Códigos das funções dos profissionais de saúde"
* code 1..*
* code from https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao (example)
* specialty ^short = "Especialidades do profissional"
* specialty ^definition = "Especialidades do profissional"
* specialty from https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao (preferred)
* location ^short = "Referência ao local de atuação do profissional"
* location ^definition = "Referência ao local de atuação do profissional"
* location only Reference(br-core-location)
* healthcareService ^short = "Referência à lista de serviços especializados deste profissional"
* healthcareService ^definition = "Referência à lista de serviços especializados deste profissional"
* healthcareService only Reference(br-core-healthcareservice)
* telecom ^short = "Contatos para a função/local/serviço"
* telecom ^definition = "Contatos para a função/local/serviço"
* availableTime ^short = "Horários disponíveis"
* availableTime ^definition = "Horários disponíveis"
* availableTime.id ^short = "Identificador único para referência cruzada"
* availableTime.id ^definition = "Identificador único para referência cruzada"
* availableTime.extension ^short = "Conteúdo adicional definido por implementações"
* availableTime.extension ^definition = "Conteúdo adicional definido por implementações"
* availableTime.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* availableTime.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* availableTime.daysOfWeek ^short = "Dias da semana: seg| ter| qua| qui| sex| sab | dom"
* availableTime.daysOfWeek ^definition = "Dias da semana: seg| ter| qua| qui| sex| sab | dom"
* availableTime.allDay ^short = "Sempre disponível? sim ou não, por exemplo: serviço 24 horas"
* availableTime.allDay ^definition = "Sempre disponível? por exemplo: serviço 24 horas"
* availableTime.availableStartTime ^short = "Horario de abertura (ignorado se allDay = true)"
* availableTime.availableStartTime ^definition = "Horário de abertura (ignorado se allDay = true)"
* availableTime.availableEndTime ^short = "Horário de fechamento (ignorado se allDay = true)"
* availableTime.availableEndTime ^definition = "Horário de fechamento (ignorado se allDay = true)"
* notAvailable ^short = "Não disponível durante este período"
* notAvailable ^definition = "Não disponível durante este período"
* notAvailable.id ^short = "ID exclusivo para referência entre elementos"
* notAvailable.id ^definition = "ID exclusivo para referência entre elementos"
* notAvailable.extension ^short = "Conteúdo adicional definido por implementações"
* notAvailable.extension ^definition = "Conteúdo adicional definido por implementações"
* notAvailable.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* notAvailable.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* notAvailable.description ^short = "Motivo porquê o horário não está disponível"
* notAvailable.description ^definition = "Motivo porquê o horário não está disponível"
* notAvailable.during ^short = "Serviço indisponível a partir desta data"
* notAvailable.during ^definition = "Serviço indisponível a partir desta data"
* availabilityExceptions ^short = "Descrição das exceções de disponibilidade"
* availabilityExceptions ^definition = "Descrição das exceções de disponibilidade"
* endpoint ^short = "Endpoints técnicos que fornecem acesso a serviços eletrônicos operados pela organização"
* endpoint ^definition = "Endpoints técnicos que fornecem acesso a serviços eletrônicos operados pela organização"
* endpoint only Reference(Endpoint)










