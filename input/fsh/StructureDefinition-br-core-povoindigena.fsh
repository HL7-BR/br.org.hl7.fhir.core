Extension: BRCorePovoIndigena
Id: br-core-povoindigena
Title: "Extensão de povo indígena do Core do Brasil"
Description: "Este perfil de extensão representa um povo indígena com o qual uma pessoa se associa. Substitui a extensão povo-indigena-br-ips do IPS Brasil, que passa a usar esta."
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
* ^purpose = "Elemento que deve ser utilizado para definir o povo indígena do paciente"
* . 0..*
* . ^short = "Extensão de povo indígena"
* . ^definition = "Um povo indígena com o qual uma pessoa se associa"
* url 1..1
* url = "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-povoindigena" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from https://terminologia.saude.gov.br/fhir/ValueSet/BREtniaIndigena (extensible)
* value[x] ^short = "Povo indígena"
* value[x] ^binding.description = "Povo indígena"
