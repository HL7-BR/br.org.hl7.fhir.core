Extension: BRCoreSexoNascimento
Id: br-core-sexonascimento
Title: "Extensão de sexo no nascimento do Core do Brasil"
Description: "Elemento que define o sexo do paciente no nascimento. Substitui a extensão sexo-nascimento-br-ips do IPS Brasil, que passa a usar esta."
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
* ^purpose = "Elemento que deve ser utilizado para definir o sexo do paciente no nascimento"
* . 0..1
* . ^short = "Extensão de sexo no nascimento"
* . ^definition = "Elemento que define o sexo do paciente no nascimento"
* extension 0..0
* url 1..1
* url = "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-sexonascimento" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from https://terminologia.saude.gov.br/fhir/ValueSet/BRSexoNascimento (required)
