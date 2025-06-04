Profile: BRCoreObservationTobaccoUse
Parent: br-core-observation
Id: br-core-observationtobaccouse
Description: "O perfil [br-core-observationtobaccouse](StructureDefinition-br-core-observationtobaccouse.html) herda do recurso FHIR [Observation](https://hl7.org/fhir/R4/observation.html) para representar a avaliação sobre tabagismo em um registro de atendimento clínico ou em um sumário do paciente"

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
* code.text = "Representação do texto livre do conceito"