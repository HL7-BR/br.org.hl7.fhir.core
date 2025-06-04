Profile: BRCoreObservationPregnancyEDD
Parent: br-core-observation
Id: br-core-observationpregnancyedd
Description: "Este perfil restringe o recurso [Observation](https://hl7.org/fhir/R4/observation.html) para representar a data prevista para o parto"

* code from http://hl7.org/fhir/uv/ips/ValueSet/edd-method-uv-ips (required)
* code.coding.system = "http://loinc.org"
* code.coding.system ^short = "Identificador da terminologia"
* code.coding.system ^definition = "Identidade da terminologia"
* code.coding.code ^short = "Código do conceito na sintaxe definida pela terminologia"
* code.coding.code ^definition = "Código do conceito na sintaxe definida pela terminologia"
* code.coding.userSelected ^short = "Se esse código foi selecionado diretamente pelo usuário"
* code.coding.userSelected ^definition = "Se esse código foi selecionado diretamente pelo usuário"
* code.text = "Representação do texto livre do conceito"
* issued MS