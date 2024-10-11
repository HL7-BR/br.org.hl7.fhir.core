Profile: br-core-practitioner-role
Parent: PractitionerRoleBRIPS
Id: br-core-practitioner-role
Description: "Um conjunto específico de funções / locais / especialidades / serviços que um profissional pode executar em uma organização por um período de tempo."

* identifier 1..*
* identifier.use 1..1
* identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required)
* identifier.type 1..1
* identifier.type.coding.system = "http://www.saude.gov.br/fhir/r4/ValueSet/BRTipoDocumentoIndividuo-1.0" (exactly)
* active 1..1
* period 1..1
* practitioner 1..1
* practitioner only Reference(br-core-practitioner)
* code 1..*
* code from http://www.saude.gov.br/fhir/r4/CodeSystem/BRCBO (required)
* organization 1..1
* organization only Reference(br-core-organization)
* location only Reference(br-core-location)
* healthcareService only Reference(br-core-healthcare-service)