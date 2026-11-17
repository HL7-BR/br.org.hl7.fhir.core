Extension: BRCoreRaca
Id: br-core-raca
Title: "Extensão de raça/cor do Core do Brasil"
Description: "Elemento que define a raça/cor do indivíduo. Substitui a extensão raca-br-ips do IPS Brasil, que passa a usar esta."
* ^status = #active
* ^experimental = false
* ^date = "2026-11-17"
* ^publisher = "Ministério da Saúde do Brasil"
* ^contact.name = "Ministério da Saúde do Brasil"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://gov.br/saude"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^copyright = "CC-01"
* ^context.type = #element
* ^context.expression = "Patient"
* ^purpose = "Elemento que deve ser utilizado para definir a raça/cor do paciente"
* . 0..1
* . ^short = "Extensão de raça/cor"
* . ^definition = "Conceitos que definem a raça/cor do paciente"
* url 1..1
* url = "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-raca" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from https://terminologia.saude.gov.br/fhir/ValueSet/BRRacaCor (required)
* value[x] ^binding.description = "Raça/cor"
