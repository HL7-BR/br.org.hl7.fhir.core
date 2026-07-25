Extension: BRCorePesquisaClinica
Id: br-core-pesquisaclinica
Title: "Extensão de pesquisa clínica do Core do Brasil"
Description: "Este perfil de extensão representa uma pesquisa clínica"

* ^version = "1.0"
* ^date = "2025-02-25T10:41:10-03:00"
* ^publisher = "Ministério da Saúde do Brasil"
* ^contact.name = "Ministério da Saúde do Brasil"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://gov.br/saude"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Elemento que deve ser utilizado para representar uma pesquisa clínica"
* ^copyright = "CC-01"
* ^context.type = #element
* ^context.expression = "Immunization.protocolApplied"

// Definição da extensão principal
* . 0..1
* . ^short = "Extensão pesquisa clínica"
* . ^definition = "Conceitos que definem a pesquisa clínica"

// URL fixa da extensão
* url = "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-pesquisaclinica" (exactly)

// Sub-extensões adicionadas
* extension contains 
    numeroProtocoloEstudoANVISA 0..1 and
    numeroVersaoProtocoloEstudo 0..1 and
    numeroRegistroVacinaAnvisa 0..1

* extension[numeroProtocoloEstudoANVISA] ^short = "Número do protocolo do estudo na ANVISA"
* extension[numeroProtocoloEstudoANVISA] ^definition = "Número do protocolo do estudo registrado na ANVISA"
* extension[numeroProtocoloEstudoANVISA].value[x] 1..1
* extension[numeroProtocoloEstudoANVISA].value[x] only string

* extension[numeroVersaoProtocoloEstudo] ^short = "Número da versão do protocolo do estudo"
* extension[numeroVersaoProtocoloEstudo] ^definition = "Versão do protocolo de estudo"
* extension[numeroVersaoProtocoloEstudo].value[x] 1..1
* extension[numeroVersaoProtocoloEstudo].value[x] only string

* extension[numeroRegistroVacinaAnvisa] ^short = "Número do registro da vacina na ANVISA"
* extension[numeroRegistroVacinaAnvisa] ^definition = "Registro oficial da vacina na ANVISA"

* extension[numeroRegistroVacinaAnvisa].value[x] 1..1
* extension[numeroRegistroVacinaAnvisa].value[x] only string
