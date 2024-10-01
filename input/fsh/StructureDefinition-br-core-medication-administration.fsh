Profile: br-core-medication-administration
Parent: MedicationAdministration
Id: br-core-medication-administration
Description: "Este perfil representa a medicação administrada"

//* partOf only Reference(br-core-medication-administration or br-core-procedure)
//* subject only Reference(br-core-patient)
* context only Reference(br-core-encounter)
* performer.function from https://www.hl7.org/fhir/R4/valueset-med-admin-perform-function.html (preferred)
* performer.actor only Reference(Practitioner or br-core-practitioner-role or br-core-related-person or Device)
//* actor only Reference(br-core-practitioner or br-core-practitioner-role or br-core-patient or br-core-related-person or Device)
//* reason only Reference(br-core-condition)
//* reasonReference only Reference(br-core-condition or br-core-observation or br-core-diagnostic-report)
//* request only Reference(br-core-medication-request)