Extension: BRCoreAldeia
Id: br-core-address-aldeia
Title: "Aldeia Indígena"
Description: "Extensão que permite informar a aldeia indígena como parte do endereço do paciente, do estabelecimento ou do profissional, no contexto da saúde indígena brasileira."
Context: Patient.address, Organization.address, Practitioner.address

* ^version = "1.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-10-01"
* ^publisher = "HL7 Brasil"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Permitir a identificação precisa da aldeia indígena do endereço, essencial para a organização dos serviços de saúde indígena."
* ^copyright = "Copyright © 2025 HL7 Brasil"
* . 0..1
* . ^short = "Aldeia Indígena"
* . ^definition = "Código da aldeia indígena do endereço, conforme o cadastro de aldeias da SESAI/DATASUS (co_seq_aldeia)."
* . ^comment = "A aldeia é a unidade básica de localização geográfica para populações indígenas. O CodeSystem BRAldeia traz, como propriedades de cada aldeia, o polo base (co_polo_base), o município (co_municipio_ibge, nome_municipio, uf) e, quando validadas, a latitude e a longitude."
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from https://terminologia.saude.gov.br/fhir/ValueSet/BRAldeia (required)
* value[x] ^short = "Código da aldeia"
* value[x] ^definition = "Código da aldeia indígena (co_seq_aldeia) no CodeSystem BRAldeia."
* value[x] ^binding.description = "Aldeias indígenas ativas (SESAI/DATASUS)"
