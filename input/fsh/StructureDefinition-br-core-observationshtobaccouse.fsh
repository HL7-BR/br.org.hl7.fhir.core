Profile: br-core-observationshtobaccouse
Parent: br-core-observation
Id: br-core-observationshtobaccouse
Description: "O recurso [br-core-Observationshtobaccouse](https://saude.gov.br/fhir/StructureDefinition/br-core-observationshtobaccouse.html) herda do recurso FHIR R4 [observation](https://hl7.org/fhir/R4B/observation.html) e registra medidas e afirmações simples feitas sobre um paciente, dispositivo ou outro assunto."

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
* code.text = "Status de uso de tabaco"