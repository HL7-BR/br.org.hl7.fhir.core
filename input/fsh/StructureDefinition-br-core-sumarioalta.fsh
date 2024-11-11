Profile: br-core-sumarioalta
Parent: br-core-composition
Id: br-core-sumarioalta
Title: "br-core-sumarioalta"
Description: "Este perfil representa as restrições aplicadas ao recurso br-core-sumarioalta"

* category 0..1
* subject 1..1
* author 1..1
* relatesTo 0..1
* section.extension 0..1
* section.author 0..1
* section.entry 0..1

//Slicing
* section ^slicing.discriminator.type = #profile
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^short = "Seções do sumário de alta"
* section ^definition = "Seções do sumário de alta"
* section 7..7
* section contains
    diagnosticosAdmissao 1..1 and
    alergiasIntolerancias 1..1 and
    diagnosticosAvaliados 1..1 and
    procedimentosRealizados 1..1 and
    prescricaoAlta 1..1 and
    planoCuidados 1..1 and
    capacidadeFuncional 1..1

//Section diagnosticosAdmissao
* section[diagnosticosAdmissao] ^short = "Seção de Resumo de Diagnósticos Admissão"
* section[diagnosticosAdmissao] ^definition = "Seção de Resumo de Diagnósticos Admissão"
* section[diagnosticosAdmissao].id ^short = "Identificador exclusivo para referência entre elementos"
* section[diagnosticosAdmissao].id ^definition = "Identificador exclusivo para referência entre elementos"
* section[diagnosticosAdmissao].extension ^short = "Conteúdo adicional definido por implementações"
* section[diagnosticosAdmissao].extension ^definition = "Conteúdo adicional definido por implementações" 
* section[diagnosticosAdmissao].modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* section[diagnosticosAdmissao].modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* section[diagnosticosAdmissao].title ^short = "Título da seção - Fixo em 'Diagnósticos Admissão'"
* section[diagnosticosAdmissao].title ^definition = "Título da seção - Fixo em 'Diagnósticos Admissão'"
* section[diagnosticosAdmissao].code ^short = "Classificação da seção da Composition/Document"
* section[diagnosticosAdmissao].code ^definition = "Classificação da seção da Composition/Document"
* section[diagnosticosAdmissao].code.id ^short = "Identificador exclusivo para referência entre elementos"
* section[diagnosticosAdmissao].code.id ^definition = "Identificador exclusivo para referência entre elementos"
* section[diagnosticosAdmissao].code.extension ^short = "Conteúdo adicional definido por implementações"
* section[diagnosticosAdmissao].code.extension ^definition = "Conteúdo adicional definido por implementações"
* section[diagnosticosAdmissao].code.coding ^short = "Código definido por uma terminologia"
* section[diagnosticosAdmissao].code.coding ^definition = "Código definido por uma terminologia"
* section[diagnosticosAdmissao].code.coding.id ^short = "Identificador exclusivo para referência entre elementos"
* section[diagnosticosAdmissao].code.coding.id ^definition = "Identificador exclusivo para referência entre elementos"
* section[diagnosticosAdmissao].code.coding.extension ^short = "Conteúdo adicional definido por implementações"
* section[diagnosticosAdmissao].code.coding.extension ^definition = "Conteúdo adicional definido por implementações"
* section[diagnosticosAdmissao].code.coding.system ^short = "Identificador da terminologia"
* section[diagnosticosAdmissao].code.coding.system ^definition = "Identidade da terminologia"
* section[diagnosticosAdmissao].code.coding.version ^short = "Versão da terminologia - se relevante"
* section[diagnosticosAdmissao].code.coding.version ^definition = "Versão da terminologia  - se relevante"
* section[diagnosticosAdmissao].code.coding.code ^short = "Código do conceito na sintaxe definida pela terminologia"
* section[diagnosticosAdmissao].code.coding.code ^definition = "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#42347-5 'Admission Diagnosis'"
* section[diagnosticosAdmissao].code.coding.display ^short = "Descrição conforme definido pela terminologia"
* section[diagnosticosAdmissao].code.coding.display ^definition = "Representação definida pela terminologia"
* section[diagnosticosAdmissao].code.coding.userSelected ^short = "Se esta codificação foi escolhida diretamente pelo usuário"
* section[diagnosticosAdmissao].code.coding.userSelected ^definition = "Se esta codificação foi escolhida diretamente pelo usuário"
* section[diagnosticosAdmissao].code.text ^short = "Representação em texto do conceito"
* section[diagnosticosAdmissao].code.text ^definition = "Representação em texto do conceito"
* section[diagnosticosAdmissao].author ^short = "Quem/o quê foi o autor desta seção"
* section[diagnosticosAdmissao].author ^definition = "Quem/o quê foi o autor desta seção"
* section[diagnosticosAdmissao].focus ^short = "Sobre quem/o quê é a seção, quando não é sobre o assunto da Composition"
* section[diagnosticosAdmissao].focus ^definition = "Sobre quem/o quê é a seção, quando não é sobre o assunto da Composition"
* section[diagnosticosAdmissao].text ^short = "Resumo de texto da seção"
* section[diagnosticosAdmissao].text ^definition = "Resumo de texto da seção"
* section[diagnosticosAdmissao].mode ^short = "Método de processamento da seção"
* section[diagnosticosAdmissao].mode ^definition = "Método de processamento da seção"
* section[diagnosticosAdmissao].orderedBy ^short = "Ordem dos elementos na seção 'entry'"
* section[diagnosticosAdmissao].orderedBy ^definition = "Ordem dos elementos na seção 'entry'"
* section[diagnosticosAdmissao].entry ^short = "Medicamentos relevantes para o sumário internacional do paciente"
* section[diagnosticosAdmissao].entry ^definition = "Medicamentos relevantes para o sumário internacional do paciente"
/*



* section[diagnosticosAdmissao] ^short = "a"
* section[diagnosticosAdmissao] ^definition = "a"
* section[diagnosticosAdmissao] ^short = "a"
* section[diagnosticosAdmissao] ^definition = "a"
* section[diagnosticosAdmissao].code 0..1
* section[diagnosticosAdmissao] ^short = "a"
* section[diagnosticosAdmissao] ^definition = "a"
* section[diagnosticosAdmissao].code.coding.system = $loinc#42347-5 "Admission Diagnosis" (exactly)
* section[diagnosticosAdmissao] ^short = "a"
* section[diagnosticosAdmissao] ^definition = "a"
* section[diagnosticosAdmissao].code.coding.code = #42347-5
* section[diagnosticosAdmissao] ^short = "a"
* section[diagnosticosAdmissao] ^definition = "a"
* section[diagnosticosAdmissao].author 0..1
* section[diagnosticosAdmissao] ^short = "a"
* section[diagnosticosAdmissao] ^definition = "a"
* section[diagnosticosAdmissao].focus 0..1
* section[diagnosticosAdmissao] ^short = "a"
* section[diagnosticosAdmissao] ^definition = "a"
* section[diagnosticosAdmissao].text 0..1
* section[diagnosticosAdmissao] ^short = "a"
* section[diagnosticosAdmissao] ^definition = "a"
* section[diagnosticosAdmissao].mode 0..1
* section[diagnosticosAdmissao] ^short = "a"
* section[diagnosticosAdmissao] ^definition = "a"
* section[diagnosticosAdmissao].orderedBy 0..1
* section[diagnosticosAdmissao] ^short = "a"
* section[diagnosticosAdmissao] ^definition = "a"
* section[diagnosticosAdmissao].entry 0..1
* section[diagnosticosAdmissao] ^short = "a"
* section[diagnosticosAdmissao] ^definition = "a"
* section[diagnosticosAdmissao].emptyReason 0..1
* section[diagnosticosAdmissao] ^short = "a"
* section[diagnosticosAdmissao] ^definition = "a"
* section[diagnosticosAdmissao].emptyReason ^mustSupport = false

* section[alergiasIntolerancias] ^short = ""
* section[alergiasIntolerancias] ^definition = ""
* section[alergiasIntolerancias].title 1..
* section[alergiasIntolerancias].code 1..
* section[alergiasIntolerancias].code = $loinc#48765-2 "Allergies and adverse reactions Document" (exactly)
* section[alergiasIntolerancias].text 1..
* section[alergiasIntolerancias].emptyReason ..0
* section[alergiasIntolerancias].emptyReason ^mustSupport = false

* section[diagnosticosAvaliados] ^short = ""
* section[diagnosticosAvaliados] ^definition = ""
* section[diagnosticosAvaliados].title 1..
* section[diagnosticosAvaliados].code 1..
* section[diagnosticosAvaliados].code = $loinc#11450-4 "Admission Diagnosis" (exactly)
* section[diagnosticosAvaliados].text 1..
* section[diagnosticosAvaliados].emptyReason ..0
* section[diagnosticosAvaliados].emptyReason ^mustSupport = false

* section[procedimentosRealizados] ^short = ""
* section[procedimentosRealizados] ^definition = ""
* section[procedimentosRealizados].title 1..
* section[procedimentosRealizados].code 1..
* section[procedimentosRealizados].code = $loinc#48765-2 "Allergies and adverse reactions Document" (exactly)
* section[procedimentosRealizados].text 1..
* section[procedimentosRealizados].emptyReason ..0
* section[procedimentosRealizados].emptyReason ^mustSupport = false

* section[prescricaoAlta] ^short = ""
* section[prescricaoAlta] ^definition = ""
* section[prescricaoAlta].title 1..
* section[prescricaoAlta].code 1..
* section[prescricaoAlta].code = $loinc#48765-2 "Allergies and adverse reactions Document" (exactly)
* section[prescricaoAlta].text 1..
* section[prescricaoAlta].emptyReason ..0
* section[prescricaoAlta].emptyReason ^mustSupport = false

* section[planoCuidados] ^short = ""
* section[planoCuidados] ^definition = ""
* section[planoCuidados].title 1..
* section[planoCuidados].code 1..
* section[planoCuidados].code = $loinc#42347-5 "Admission Diagnosis" (exactly)
* section[planoCuidados].text 1..
* section[planoCuidados].emptyReason ..0
* section[planoCuidados].emptyReason ^mustSupport = false

* section[capacidadeFuncional] ^short = ""
* section[capacidadeFuncional] ^definition = ""
* section[capacidadeFuncional].title 1..
* section[capacidadeFuncional].code 1..
* section[capacidadeFuncional].code = $loinc#48765-2 "Allergies and adverse reactions Document" (exactly)
* section[capacidadeFuncional].text 1..
* section[capacidadeFuncional].emptyReason ..0
* section[capacidadeFuncional].emptyReason ^mustSupport = false

*/