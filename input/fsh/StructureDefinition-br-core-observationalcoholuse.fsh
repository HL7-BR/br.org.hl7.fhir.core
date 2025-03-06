Profile: BRCoreObservationAlcoholUse
Parent: br-core-observation
Id: br-core-observationalcoholuse
Description: "O perfil [br-core-observationalcohooluse](StructureDefinition-br-core-observationalcoholuse.html) herda do recurso FHIR [Observation](https://hl7.org/fhir/R4/observation.html), projetado para documentar a avaliação do uso de álcool em um resumo de paciente."

* code.coding ^short = "Código definido por uma terminologia"
* code.coding ^definition = "Código definido por uma terminologia"
* code.coding.system = "http://loinc.org"
* code.coding.system ^short = "Identificador da terminologia"
* code.coding.system ^definition = "Identidade da terminologia"
* code.coding.code = http://loinc.org#74013-4 (exactly)
* code.coding.code ^short = "Código do conceito na sintaxe definida pela terminologia"
* code.coding.code ^definition = "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#74013-4 'Alcoholic drinks per day'"
* code.coding.display = "Alcoholic drinks per day"
* code.coding.display ^short = "Descrição conforme definido pela terminologia"
* code.coding.display ^definition = "Representação definida pela terminologia"
* code.text = "Número de doses de álcool ingeridos por dia"