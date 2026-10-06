Invariant: br-core-bdoc-1
Description: "O timestamp do documento DEVE ser igual ou posterior à data da Composition (primeira entrada)."
Severity: #error
Expression: "timestamp >= entry.first().resource.date"

Invariant: br-core-bdoc-2
Description: "Todas as entradas do documento DEVEM ter fullUrl."
Severity: #error
Expression: "entry.all(fullUrl.exists())"

Profile: BRCoreBundleDocumento
Parent: Bundle
Id: br-core-bundle-documento
Title: "br-core-bundle-documento"
Description: "Documento clínico FHIR: Bundle do tipo document cuja primeira entrada é uma br-core-composition (ou perfil derivado, como o br-core-sumarioalta), seguida dos recursos que ela referencia. Segue as regras do clinical-document-bundle do FHIR Clinical Documents (HL7, STU1 1.0.1): identificador persistente, timestamp e Composition como primeira entrada."
* ^status = #draft
* obeys br-core-bdoc-1 and br-core-bdoc-2
* . ^short = "Documento clínico (Bundle document)"
* . ^definition = "Documento clínico FHIR: conjunto imutável formado pela Composition e pelos recursos referenciados por ela."
* identifier 1..1 MS
* identifier ^short = "Identificador persistente do documento"
* identifier ^definition = "Identificador do documento, igual em todas as cópias e retransmissões. Retificação gera novo documento com novo identificador e Composition.relatesTo."
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* type = #document
* type MS
* type ^short = "document"
* timestamp 1..1 MS
* timestamp ^short = "Data e hora de montagem do documento"
* timestamp ^definition = "Momento em que o documento foi montado. Igual ou posterior a Composition.date."
* entry 1..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "A Composition é a primeira entrada (bdl-11); as demais são os recursos referenciados por ela."
* entry ^short = "Entradas do documento"
* entry.fullUrl 1..1 MS
* entry.resource 1..1 MS
* entry contains composicao 1..1 MS
* entry[composicao] ^short = "Composition do documento (primeira entrada)"
* entry[composicao].resource only br-core-composition
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0
* signature MS
* signature ^short = "Assinatura digital do documento"
