Profile: br-core-medicationadministration
Parent: http://hl7.org/fhir/StructureDefinition/MedicationAdministration
Id: br-core-medicationadministration
Description: "Este perfil representa a medicação administrada"

//* partOf only Reference(br-core-medicationadministration or br-core-procedure)
//* subject only Reference(br-core-patient)
* context only Reference(br-core-encounter)
* performer.function from https://www.hl7.org/fhir/R4/valueset-med-admin-perform-function.html (preferred)
* performer.actor only Reference(br-core-relatedperson or Device)
//* performer.actor only Reference(br-core-practitioner or br-core-practitionerrole or br-core-patient or br-core-relatedperson or Device)
//* reason only Reference(br-core-condition or br-core-observation or br-core-diagnosticreport)
//* request only Reference(br-core-medicationrequest)