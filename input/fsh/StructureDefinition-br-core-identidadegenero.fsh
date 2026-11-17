Extension: BRCoreIdentidadeGenero
Parent: http://hl7.org/fhir/StructureDefinition/patient-genderIdentity
Id: br-core-identidadegenero
Title: "Identidade de gênero do Core do Brasil"
Description: "Restrição da extensão patient-genderIdentity do FHIR com o ValueSet nacional de identidade de gênero. As instâncias continuam usando a URL http://hl7.org/fhir/StructureDefinition/patient-genderIdentity. Substitui a extensão identidade-genero-br-ips do IPS Brasil, que passa a usar esta."
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
* . 0..1
* . ^short = "Identidade de gênero do paciente"
* . ^definition = "Elemento que define a identidade de gênero do paciente"
* url = "http://hl7.org/fhir/StructureDefinition/patient-genderIdentity" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from https://terminologia.saude.gov.br/fhir/ValueSet/BRIdentidadeGenero (required)
