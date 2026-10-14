Profile: BRCoreObservationTobaccoUse
Parent: br-core-observation
Id: br-core-observationtobaccouse
Description: "O perfil [br-core-observationtobaccouse](StructureDefinition-br-core-observationtobaccouse.html) herda do recurso FHIR [Observation](https://hl7.org/fhir/R4/observation.html) para representar a avaliação sobre tabagismo em um registro de atendimento clínico ou em um sumário do paciente"

// code
* code.coding ^short = "Código definido por uma terminologia"
* code.coding ^definition = "Código definido por uma terminologia"
* code.coding.system = "http://loinc.org"
* code.coding.system ^short = "Identificador da terminologia"
* code.coding.system ^definition = "Identidade da terminologia"
* code.coding.code = http://loinc.org#72166-2 (exactly)
* code.coding.code ^short = "Código do conceito na sintaxe definida pela terminologia"
* code.coding.code ^definition = "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#72166-2 'Tobacco smoking status'"
* code.coding.display = "Tobacco smoking status"
* code.coding.display ^short = "Descrição conforme definido pela terminologia"
* code.coding.display ^definition = "Representação definida pela terminologia"
* code.coding.userSelected ^short = "Se esse código foi selecionado diretamente pelo usuário"
* code.coding.userSelected ^definition = "Se esse código foi selecionado diretamente pelo usuário"
* code.text ^short = "Representação do texto livre do conceito"
* code.text ^definition = "Representação em texto livre do conceito codificado"

// value
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/uv/ips/ValueSet/current-smoking-status-uv-ips (preferred)
* valueCodeableConcept ^short = "Situação tabágica"
* valueCodeableConcept ^definition = "Situação tabágica (LOINC 72166-2). A frequência de uso nos últimos 3 meses vai no br-core-observationsubstanceuse."
* valueCodeableConcept.coding 1..
* valueCodeableConcept.coding ^short = "Código definido por uma terminologia"
* valueCodeableConcept.coding ^definition = "Código definido por uma terminologia"
* valueCodeableConcept.coding.system ^short = "Identificador da terminologia"
* valueCodeableConcept.coding.system ^definition = "Identidade da terminologia"
* valueCodeableConcept.coding.code ^short = "Código da situação tabágica"
* valueCodeableConcept.coding.code ^definition = "Código da situação tabágica"
* valueCodeableConcept.coding.display ^short = "Descrição conforme definido pela terminologia"
* valueCodeableConcept.coding.display ^definition = "Representação definida pela terminologia"
* valueCodeableConcept.coding.userSelected ^short = "Se esse código foi selecionado diretamente pelo usuário"
* valueCodeableConcept.coding.userSelected ^definition = "Se esse código foi selecionado diretamente pelo usuário"
* valueCodeableConcept.text ^short = "Representação em texto livre da situação tabágica"
* valueCodeableConcept.text ^definition = "Representação em texto livre da situação tabágica"