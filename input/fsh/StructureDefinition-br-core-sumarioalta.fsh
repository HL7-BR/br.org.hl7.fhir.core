Profile: br-core-sumarioalta
Parent: br-core-composition
Id: br-core-sumarioalta
Title: "br-core-sumarioalta"
Description: "Este perfil representa as restrições aplicadas ao recurso br-core-sumarioalta"

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

* section[diagnosticosAdmissao] ^short = ""
* section[diagnosticosAdmissao] ^definition = ""
* section[diagnosticosAdmissao].title 1..
* section[diagnosticosAdmissao].code 1..
* section[diagnosticosAdmissao].code = $loinc#42347-5 "Admission Diagnosis" (exactly)
* section[diagnosticosAdmissao].text 1..
* section[diagnosticosAdmissao].emptyReason ..0
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

