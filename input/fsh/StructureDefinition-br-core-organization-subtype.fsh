Extension: BRCoreOrganizationSubType
Id: br-core-organization-subtype
Title: "Subtipo do Estabelecimento de Saúde"
Description: "Extensão que representa o subtipo do estabelecimento de saúde, detalhando o tipo informado em Organization.type (por exemplo, Distrito Sanitário Especial Indígena (DSEI) e Polo-base da Saúde Indígena)."
Context: Organization

* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-09-28"
* ^publisher = "HL7 Brasil"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Permitir a classificação do estabelecimento de saúde em um subtipo, complementando o tipo de estabelecimento."
* ^copyright = "Copyright © 2026 HL7 Brasil"
* . 0..1
* . ^short = "Subtipo do estabelecimento de saúde"
* . ^definition = "Subtipo do estabelecimento de saúde, que detalha o tipo informado em Organization.type."
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from https://terminologia.saude.gov.br/fhir/ValueSet/SubtipoEstabelecimento (preferred)
* value[x] ^short = "Código do subtipo do estabelecimento"
* value[x] ^definition = "Código que representa o subtipo do estabelecimento de saúde."
* value[x] ^binding.description = "Subtipo do estabelecimento de saúde"
