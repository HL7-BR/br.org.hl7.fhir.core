Extension: BRCoreAldeia
Id: br-core-address-aldeia
Title: "Aldeia Indígena"
Description: "Extensão que permite referenciar a aldeia indígena como parte do endereço do paciente no contexto da saúde indígena brasileira."
Context: Patient.address

* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-30"
* ^publisher = "HL7 Brasil"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Permitir a identificação precisa da aldeia indígena onde o paciente reside, essencial para a organização dos serviços de saúde indígena."
* ^copyright = "Copyright © 2025 HL7 Brasil"
* . 0..1
* . ^short = "Aldeia Indígena"
* . ^definition = "Referência ao recurso Location que representa a aldeia indígena onde o paciente reside."
* . ^comment = "A aldeia é a unidade básica de localização geográfica para populações indígenas. Este elemento permite associar o endereço a uma aldeia específica cadastrada como Location no sistema."
* value[x] 1..1
* value[x] only Reference(BRCoreLocation)
* value[x] ^short = "Referência à Aldeia"
* value[x] ^definition = "Referência ao recurso Location que representa a aldeia indígena."
* value[x] ^comment = "A aldeia deve estar previamente cadastrada como um recurso Location do tipo 'si' (special institution) ou outro tipo apropriado que represente comunidades indígenas."
