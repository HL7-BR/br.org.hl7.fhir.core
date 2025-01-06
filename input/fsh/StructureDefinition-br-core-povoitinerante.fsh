Extension: BRCorePovoItinerante
Id: br-core-povoitinerante
Title: "Extensão de povo itinerante do Core do Brasil"
Description: "Este perfil de extensão representa um povo itinerante com a qual uma pessoa se associa"

* ^version = "1.0"
* ^date = "2024-07-24T09:41:10-03:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^contact.name = "Ministério da Saúde do Brasil"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://gov.br/saude"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Elemento que deve ser utilizado para definir o povo itinerante do paciente"
* ^copyright = "CC-01"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..1
* . ^short = "Extensão de povo itinerante"
* . ^definition = "Conceitos que definem o povo itinerante do paciente"
* url 1..1
* url = "StructureDefinition-br-core-povoitinerante" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from https://terminologia.saude.gov.br/fhir/ValueSet/BRPovoItinerante
* value[x] from StructureDefinition-br-core-povoitinerante (required)
* value[x] ^binding.description = "Povo itinerante"