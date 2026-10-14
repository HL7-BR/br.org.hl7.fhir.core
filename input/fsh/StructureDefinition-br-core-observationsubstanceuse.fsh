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
* value[x] 0..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from https://terminologia.saude.gov.br/fhir/ValueSet/BRFreqUsoSubstancia (required)
* valueCodeableConcept ^short = "Frequência de uso nos últimos 3 meses"
* valueCodeableConcept ^definition = "Frequência de uso da substância nos últimos 3 meses. Quando a frequência não é informada, value[x] fica ausente e o motivo vai em dataAbsentReason."

// período avaliado
* effective[x] MS
* effective[x] only dateTime or Period
* effective[x] ^short = "Data da avaliação ou período avaliado"
* effective[x] ^definition = "Data da avaliação, ou o período de 3 meses a que a frequência se refere. A frequência não vai em effectiveTiming."

* dataAbsentReason MS
* dataAbsentReason ^short = "Motivo da ausência da frequência"
* dataAbsentReason ^definition = "Motivo da ausência da frequência de uso (asked-declined, unknown). Só quando value[x] está ausente."

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
* valueCodeableConcept = http://loinc.org#LA26460-8 "Once or twice"
