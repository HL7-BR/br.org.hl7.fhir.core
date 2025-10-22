

Alias: HL7 = http://hl7.org/fhir
Alias: BRSD = http://brcore.saude.gov.br/fhir/StructureDefinition
Alias: BRCS = http://brcore.saude.gov.br/fhir/CodeSystem
Alias: BRVS = http://brcore.saude.gov.br/fhir/ValueSet
Alias: LNC = http://loinc.org
Alias: SCT = http://snomed.info/sct
Alias: UCUM = http://unitsofmeasure.org

Profile: BRCoreConsent
Parent: Consent
Id: br-core-consent
Title: "BR-Core Consent"
Description: "Perfil nacional brasileiro para o recurso FHIR Consent, conforme LGPD (Lei nº 13.709/2018),
Lei nº 14.874/2024 (pesquisa com seres humanos), Lei nº 14.063/2020 (assinaturas digitais),
Resoluções CNS nº 466/2012 e nº 510/2016, e Portaria GM/MS nº 1.434/2020 (RNDS).
Representa consentimentos digitais juridicamente válidos em saúde, integrando aspectos éticos, legais e técnicos.
"

* ^url = "http://brcore.saude.gov.br/fhir/StructureDefinition/br-core-consent"
* ^version = "6.0.0"
* ^status = #active
* ^date = "2025-10-21"
* ^publisher = "Ministério da Saúde do Brasil"
* ^jurisdiction = urn:iso:std:iso:3166#BR "Brasil"
* ^fhirVersion = "4.0.1"
* ^kind = #resource
* ^derivation = #constraint
* ^abstract = false

* identifier 1..1 MS
  * ^short = "Identificador único do consentimento"
  * ^definition = "Identificador persistente que referencia a diretiva de consentimento original (TCLE/DCE)."

* status 1..1 MS
  * ^short = "Estado do consentimento"
  * ^definition = "Estado do ciclo de vida (ativo, revogado, rascunho, inativo)."
  * binding = BRCoreConsentStatusVS (required)

* scope 1..1 MS
  * ^short = "Escopo do consentimento"
  * ^definition = "Domínio de aplicação (privacidade, pesquisa, tratamento, administrativo, telemonitoramento)."
  * binding = BRCoreConsentScopeVS (required)

* category 1..* MS
  * ^short = "Categoria do consentimento"
  * ^definition = "Finalidade ou tipo de consentimento no contexto BR-Core."
  * binding = BRCoreConsentCategoryVS (extensible)

* patient 1..1 MS
  * ^short = "Titular do dado (paciente/cidadão)"
  * ^definition = "Pessoa natural cuja manifestação de vontade gera o consentimento."

* dateTime 1..1 MS
  * ^short = "Data/hora do registro"
  * ^definition = "Momento da assinatura digital ou registro eletrônico do consentimento."

* performer 1..* MS
  * ^short = "Entidade responsável"
  * ^definition = "Organização, pesquisador ou profissional responsável pela coleta do consentimento."

* organization 1..* MS
  * ^short = "Instituição controladora"
  * ^definition = "Entidade que mantém o registro e é responsável pelo tratamento dos dados consentidos."

* sourceReference 0..1 MS
  * ^short = "Referência ao TCLE/DCE"
  * ^definition = "Referencia o DocumentReference do TCLE/DCE assinado digitalmente conforme ICP-Brasil."

* policyRule 1..1 MS
  * ^short = "Base legal aplicável"
  * ^definition = "Base jurídica (LGPD, Lei 14.874/2024, Lei 14.063/2020) que fundamenta o tratamento."
  * binding = BRCoreLegalBasisVS (extensible)

* provision 1..1 MS
  * ^short = "Condições, exceções e regras de uso"
  * ^definition = "Define atores, dados, finalidades, períodos e ações permitidas ou negadas."
  * provision.type from http://hl7.org/fhir/ValueSet/consent-provision-type (required)
  * provision.action from BRCoreConsentActionVS (extensible)
  * provision.purpose from BRCoreConsentPurposeVS (extensible)

* verification 1..1 MS
  * ^short = "Assinatura digital qualificada (ICP-Brasil)"
  * ^definition = "Metadados da assinatura digital qualificada (CAdES/PKCS#7) conforme Lei 14.063/2020."

// =========================[ EXTENSIONS ]=========================
Extension: BRCoreConsentPurpose
Id: br-core-consent-purpose
Title: "Finalidade Específica do Consentimento"
Description: "Finalidade específica do consentimento conforme LGPD e contexto assistencial, científico ou administrativo."
* ^context.type = #element
* ^context.expression = "Consent.provision"
* value[x] only CodeableConcept
* valueCodeableConcept from BRCoreConsentPurposeVS (extensible)

Extension: BRCoreConsentDigitalSignature
Id: br-core-consent-digitalSignature
Title: "Assinatura Digital ICP-Brasil"
Description: "Representa a assinatura digital qualificada do consentimento conforme ICP-Brasil."
* ^context.type = #element
* ^context.expression = "Consent.verification"
* value[x] only Attachment
* valueAttachment.contentType = #application/pkcs7-signature
* valueAttachment.language = #pt-BR
































































































