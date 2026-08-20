Extension: BRBaseLegalLGPD
Id: br-core-base-legal-lgpd
Title: "Extensão do perfil BRCoreConsent define extensões específicas para atender aos requisitos da Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018)"
Description: "Este perfil de extensão representa um povo itinerante com a qual uma pessoa se associa"

* ^version = "1.0"
* ^date = "2026-01-10T09:41:10-03:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^contact.name = "Ministério da Saúde do Brasil"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://gov.br/saude"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Elemento que deve ser utilizado para atender aos requisitos da Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018)"
* ^copyright = "CC-01"
* ^context.type = #element
* ^context.expression = "Patient"
* . 0..1
* . ^short = "Extensão de brcoreconsent para LGPD"
* . ^definition = "Conceitos que definem os requisitos da Lei Geral de Proteção de Dados (LGPD - Lei nº 13.709/2018)"
* url 1..1
* url = "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-base-legal-lgpd" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept