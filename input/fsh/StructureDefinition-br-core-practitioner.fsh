Profile: br-core-practitioner
Parent: PractitionerBRIPS
Id: br-core-practitioner
Description: "Indivíduo que realiza atividades profissionais."
* identifier.type 1..1
* identifier.use 1..1
* identifier.type.coding.system = "http://www.saude.gov.br/fhir/r4/ValueSet/BRTipoDocumentoIndividuo-1.0" (exactly)
* active 1..1
* qualification.code.coding.system = "http://www.saude.gov.br/fhir/r4/ValueSet/BROcupacao-1.0" (exactly)