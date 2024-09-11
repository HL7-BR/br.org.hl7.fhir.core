Extension: br-core-populacao-tradicional
Id: br-core-populacao-tradicional
Title: "Extensão de populacao tradicional do Core do Brasil"
Description: "Este perfil de extensão representa um populacao tradicional com a qual uma pessoa se associa"
* ^name = "BRCorePopulacaoTradicional"
* ^date = "2024-07-24T09:41:10-03:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^contact.name = "Ministério da Saúde do Brasil"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "https://gov.br/saude"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^copyright = "CC-01"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..*
* . ^short = "Extensão de populacao tradicional"
* . ^definition = "Um populacao tradicional com a qual uma pessoa associa"
* url 1..1
* url = "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-populacao-tradicional" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] ^short = "populacao tradicional"
* value[x] ^binding.description = "populacao tradicional"