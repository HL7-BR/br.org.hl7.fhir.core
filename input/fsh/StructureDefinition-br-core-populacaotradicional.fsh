Extension: BRCorePopulacaoTradicional
Id: br-core-populacaotradicional
Title: "Extensão de populacao tradicional do Core do Brasil"
Description: "Este perfil de extensão representa um populacao tradicional com a qual uma pessoa se associa"

* ^version = "1.0"
* ^date = "2024-11-19T10:41:10-03:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^contact.name = "Ministério da Saúde do Brasil"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://gov.br/saude"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Elemento que deve ser utilizado para representar uma população tradicional do paciente"
* ^copyright = "CC-01"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..1
* . ^short = "Extensão população tradicional"
* . ^definition = "Conceitos que definem a população tradicional do paciente"
* url 1..1
//* url = "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-populacaotradicional" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
//* value[x] from https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-populacaotradicional (required)
* value[x] ^binding.description = "População tradicional"