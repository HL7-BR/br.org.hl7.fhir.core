Profile: BRCoreObservationAlcoholUse
Parent: br-core-observation
Id: br-core-observationalcoholuse
Description: "O perfil [br-core-observationalcoholuse](StructureDefinition-br-core-observationalcoholuse.html) herda do recurso FHIR [Observation](https://hl7.org/fhir/R4/observation.html), projetado para documentar a avaliação do uso de álcool em um resumo de paciente"

// code
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
* code.coding.userSelected ^short = "Se esse código foi selecionado diretamente pelo usuário"
* code.coding.userSelected ^definition = "Se esse código foi selecionado diretamente pelo usuário"
* code.text ^short = "Representação do texto livre do conceito"
* code.text ^definition = "Representação em texto livre do conceito codificado"

// value
* value[x] only Quantity
* valueQuantity ^short = "Número de doses de álcool ingeridas por dia"
* valueQuantity ^definition = "Quantidade de doses de álcool ingeridas por dia, conforme o código LOINC 74013-4 'Alcoholic drinks per day'"
* valueQuantity.value 1..1
* valueQuantity.value ^short = "Valor numérico da quantidade de doses"
* valueQuantity.unit ^short = "Unidade de medida em texto (p.ex. doses/dia)"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.system ^short = "Sistema de unidades (UCUM)"
* valueQuantity.code ^short = "Código UCUM da unidade de medida"