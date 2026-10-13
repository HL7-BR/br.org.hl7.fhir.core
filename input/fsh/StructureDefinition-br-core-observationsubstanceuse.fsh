Profile: BRCoreObservationSubstanceUse
Parent: br-core-observation
Id: br-core-observationsubstanceuse
Title: "Uso de substância"
Description: "O perfil [br-core-observationsubstanceuse](StructureDefinition-br-core-observationsubstanceuse.html) herda do [br-core-observation](StructureDefinition-br-core-observation.html) para registrar o uso de uma substância (álcool, tabaco ou outra) e a frequência de uso nos últimos 3 meses. Uma observação por substância."

// categoria
* category 1..* MS
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* category ^short = "História social"

// substância
* code MS
* code from https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoSubstanciaUso (extensible)
* code ^short = "Substância usada"
* code ^definition = "Substância cujo uso é avaliado. Substância fora do ValueSet vai em code.text, ou em coding de outra terminologia (SNOMED CT), conforme o binding extensible."

// frequência nos últimos 3 meses
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from https://terminologia.saude.gov.br/fhir/ValueSet/BRFreqUsoSubstancia (required)
* valueCodeableConcept ^short = "Frequência de uso nos últimos 3 meses"
* valueCodeableConcept ^definition = "Frequência de uso da substância nos últimos 3 meses. Quando o dado não é informado, usar data-absent-reason (asked-declined, unknown)."

// período avaliado
* effective[x] MS
* effective[x] only dateTime or Period
* effective[x] ^short = "Data da avaliação ou período avaliado"
* effective[x] ^definition = "Data da avaliação, ou o período de 3 meses a que a frequência se refere. A frequência não vai em effectiveTiming."

* note ^short = "Observações sobre o uso"


Instance: br-core-observationsubstanceuse-exemplo
InstanceOf: br-core-observationsubstanceuse
Usage: #example
Title: "Exemplo: uso de álcool nos últimos 3 meses"
Description: "Uso de bebidas alcoólicas uma ou duas vezes nos últimos 3 meses."
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoSubstanciaUso#alcool "Bebidas Alcóolicas"
* subject.reference = "Patient/c3a40500-5fe8-47f1-b21a-dce205e6c617"
* effectivePeriod.start = "2026-07-13"
* effectivePeriod.end = "2026-10-13"
* valueCodeableConcept = https://terminologia.saude.gov.br/fhir/CodeSystem/BRFreqUsoSubstancia#uma-ou-duas "1 ou 2 vezes"
