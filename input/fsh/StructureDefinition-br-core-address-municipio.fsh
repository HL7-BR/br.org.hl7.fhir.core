Extension: BRCoreMunicipio
Id: br-core-address-municipio
Title: "Município (código IBGE)"
Description: "Extensão que permite informar o código IBGE do município do endereço do paciente."
Context: Patient.address

* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-09-28"
* ^publisher = "HL7 Brasil"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Permitir a identificação inequívoca do município do endereço pelo código IBGE, complementando o nome do município informado em Address.city."
* ^copyright = "Copyright © 2026 HL7 Brasil"
* . 0..1
* . ^short = "Município do endereço (código IBGE)"
* . ^definition = "Código IBGE do município do endereço do paciente."
* . ^comment = "Complementa Address.city, que continua contendo o nome do município em texto."
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from https://terminologia.saude.gov.br/fhir/ValueSet/BRMunicipio (required)
* value[x] ^short = "Código IBGE do município"
* value[x] ^definition = "Código IBGE do município do endereço."
* value[x] ^binding.description = "Municípios brasileiros (código IBGE)"
