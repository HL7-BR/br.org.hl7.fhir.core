Extension: br-core-povo-itinerante
Id: br-core-povo-itinerante
Title: "Extensão de povo itinerante do Core do Brasil"
Description: "Este perfil de extensão representa um povo itinerante com a qual uma pessoa se associa"

* ^url = "https://br-core.saude.gov.br/StructureDefinition/br-core-povo-itinerante"
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
* . ^short = "Extensão de povo itinerante"
* . ^definition = "Um povo itinerante com a qual uma pessoa associa"
* url 1..1
* url = "https://br-core.saude.gov.br/StructureDefinition/br-core-povo-itinerante" (exactly)
* value[x] 0..1
* value[x] only CodeableConcept
//* value[x] from $valueset-br-core-povo-itinerante (extensible)
* value[x] ^short = "povo itinerante"
* value[x] ^binding.description = "povo itinerante"

/*------------
ValueSet-br-core-povo-itinerante.fsh


ValueSet: br-core-povo-itinerante
Id: br-core-povo-itinerante
Description: "Conjunto de todos os povos itinerantes do Brasil"
* ^title = "povos itinerantes do Brasil"
* ^name = "BRCorepovoItinerante"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^identifier.system = "https://br-core.saude.gov.br/sid/valueset"
* ^identifier.value = "br-core-povo-itinerante"
* ^status = #draft
* ^experimental = true
* ^date = "2024-07-24T09:44:16-03:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^contact.name = "Ministério da Saúde do Brasil"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://gov.br/saude"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Este conjunto define conceitos para classificar todos os povo itinerantes do Brasil"
* ^copyright = "CC-1.0"
* include codes from system $codesystem-br-core-povo-itinerante

*/