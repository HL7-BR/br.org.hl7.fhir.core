Profile: br-core-practitioner
Parent: PractitionerBRIPS
Id: br-core-practitioner
Description: "Indivíduo que realiza atividades profissionais."

* identifier.type 1..1
* identifier.use 1..1
* identifier.type from http://www.saude.gov.br/fhir/r4/ValueSet/BRTipoDocumentoIndividuo-1.0 (required)
* active 1..1
* qualification 0..1
* qualification.code from https://simplifier.net/redenacionaldedadosemsaude/valueset-brocupacao-1.0 (required)
//* qualification.issuer only Reference(br-core-organization)
