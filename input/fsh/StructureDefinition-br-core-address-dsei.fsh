Extension: BRCoreDSEI
Id: br-core-address-dsei
Title: "Distrito Sanitário Especial Indígena (DSEI)"
Description: "Extensão que permite referenciar o Distrito Sanitário Especial Indígena (DSEI) como parte do endereço do paciente no contexto da saúde indígena brasileira."
Context: Patient.address

* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-30"
* ^publisher = "HL7 Brasil"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Permitir a identificação do DSEI responsável pela coordenação das ações de saúde indígena na região onde está localizado o endereço do paciente, facilitando a gestão administrativa e epidemiológica dos serviços de saúde."
* ^copyright = "Copyright © 2025 HL7 Brasil"
* . 0..1
* . ^short = "Distrito Sanitário Especial Indígena (DSEI)"
* . ^definition = "Referência ao recurso Organization que representa o Distrito Sanitário Especial Indígena (DSEI) responsável pela região do endereço do paciente."
* . ^comment = "O DSEI é uma unidade administrativa de saúde que coordena as ações de atenção à saúde indígena em uma determinada região geográfica, abrangendo múltiplas aldeias e polos-base. Este elemento permite associar o endereço ao DSEI responsável pela área."
* value[x] 1..1
* value[x] only Reference(BRCoreOrganization)
* value[x] ^short = "Referência ao DSEI"
* value[x] ^definition = "Referência ao recurso Organization que representa o Distrito Sanitário Especial Indígena."
* value[x] ^comment = "O DSEI deve estar previamente cadastrado como um recurso Organization, identificado pelo slice identifier:dsei do perfil br-core-organization. Existem 34 DSEIs no Brasil, cada um responsável por uma região geográfica específica que abrange territórios indígenas."
