// Recursos referenciados pelos exemplos de BRCoreCareTeam (StructureDefinition-br-core-careteam.fsh).
// Todos os dados são fictícios.

Instance: ubs-vila-esperanca
InstanceOf: BRCoreOrganization
Usage: #example
Title: "UBS Vila Esperança"
Description: "Unidade Básica de Saúde fictícia que mantém a equipe de Saúde da Família do exemplo br-core-careteam-esf-ine."
* identifier[cnes].use = #official
* identifier[cnes].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
* identifier[cnes].system = "https://saude.gov.br/fhir/sid/cnes"
* identifier[cnes].value = "9990001"
* active = true
* type = https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoEstabelecimentoSaude#2 "CENTRO DE SAUDE/UNIDADE BASICA"
* name = "UBS Vila Esperança"
* alias = "UBS Vila Esperança"
* address.use = #work
* address.type = #physical
* address.line[0] = "Rua das Flores, 100"
* address.district = "Vila Esperança"
* address.city = "São Paulo"
* address.state = "SP"
* address.postalCode = "03600-000"
* address.country = "BR"

Instance: hospital-exemplo
InstanceOf: BRCoreOrganization
Usage: #example
Title: "Hospital Exemplo"
Description: "Hospital fictício que mantém a equipe do exemplo br-core-careteam-hospitalar-local."
* identifier[cnes].use = #official
* identifier[cnes].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
* identifier[cnes].system = "https://saude.gov.br/fhir/sid/cnes"
* identifier[cnes].value = "9990002"
* active = true
* type = https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoEstabelecimentoSaude#5 "HOSPITAL GERAL"
* name = "Hospital Exemplo"
* alias = "HEX"
* address.use = #work
* address.type = #physical
* address.line[0] = "Avenida Brasil, 2000"
* address.district = "Centro"
* address.city = "Campinas"
* address.state = "SP"
* address.postalCode = "13010-000"
* address.country = "BR"

Instance: sms-exemplo
InstanceOf: BRCoreOrganization
Usage: #example
Title: "Secretaria Municipal de Saúde Exemplo"
Description: "Secretaria Municipal de Saúde fictícia que gerencia a EMAD do exemplo br-core-careteam-emad-ine-local."
* identifier[cnes].use = #official
* identifier[cnes].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
* identifier[cnes].system = "https://saude.gov.br/fhir/sid/cnes"
* identifier[cnes].value = "9990003"
* active = true
* type = https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoEstabelecimentoSaude#68 "CENTRAL DE GESTAO EM SAUDE"
* name = "Secretaria Municipal de Saúde Exemplo"
* alias = "SMS Exemplo"
* address.use = #work
* address.type = #physical
* address.line[0] = "Praça da Matriz, 1"
* address.district = "Centro"
* address.city = "Sorocaba"
* address.state = "SP"
* address.postalCode = "18010-000"
* address.country = "BR"

Instance: medica-esf-01
InstanceOf: BRCorePractitionerRole
Usage: #example
Title: "Médica da ESF Vila Esperança 01"
Description: "Papel profissional fictício referenciado pelos exemplos de BRCoreCareTeam."
* identifier.use = #official
* identifier.type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#MD
* identifier.system = "https://saude.gov.br/fhir/sid/crm-sp"
* identifier.value = "100001-SP"
* active = true
* period.start = "2024-01-01"
* practitioner.display = "Ana Paula Souza"
* organization = Reference(Organization/ubs-vila-esperanca) "UBS Vila Esperança"
* code = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO#225142 "MEDICO DA ESTRATEGIA DE SAUDE DA FAMILIA"

Instance: enfermeira-esf-01
InstanceOf: BRCorePractitionerRole
Usage: #example
Title: "Enfermeira da ESF Vila Esperança 01"
Description: "Papel profissional fictício referenciado pelos exemplos de BRCoreCareTeam."
* identifier.use = #official
* identifier.type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#RN
* identifier.system = "https://saude.gov.br/fhir/sid/coren-sp"
* identifier.value = "200001-SP"
* active = true
* period.start = "2024-01-01"
* practitioner.display = "Beatriz Lima"
* organization = Reference(Organization/ubs-vila-esperanca) "UBS Vila Esperança"
* code = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO#223565 "ENFERMEIRO DA ESTRATEGIA DE SAUDE DA FAMILIA"

Instance: nutricionista-uti-01
InstanceOf: BRCorePractitionerRole
Usage: #example
Title: "Nutricionista da EMTN da UTI Adulto"
Description: "Papel profissional fictício referenciado pelos exemplos de BRCoreCareTeam."
* identifier.use = #official
* identifier.type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#NP
* identifier.system = "https://saude.gov.br/fhir/sid/crn-sp-ms"
* identifier.value = "300001-SP"
* active = true
* period.start = "2024-01-01"
* practitioner.display = "Carla Mendes"
* organization = Reference(Organization/hospital-exemplo) "Hospital Exemplo"
* code = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO#223710 "NUTRICIONISTA"

Instance: medico-emad-03
InstanceOf: BRCorePractitionerRole
Usage: #example
Title: "Médico da EMAD Regional Norte 03"
Description: "Papel profissional fictício referenciado pelos exemplos de BRCoreCareTeam."
* identifier.use = #official
* identifier.type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#MD
* identifier.system = "https://saude.gov.br/fhir/sid/crm-sp"
* identifier.value = "100003-SP"
* active = true
* period.start = "2024-01-01"
* practitioner.display = "Daniel Rocha"
* organization = Reference(Organization/sms-exemplo) "Secretaria Municipal de Saúde Exemplo"
* code = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO#225125 "MEDICO CLINICO"
