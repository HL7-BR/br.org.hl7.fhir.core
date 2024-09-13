Profile: br-core-medication-administration
Parent: http://hl7.org/fhir/StructureDefinition/MedicationAdministration
Id: br-core-medication-administration
Title: "br-core-medication-administration"
//* partOf only Reference(br-core-medication-administration or br-core-procedure)
//* medicationReference only Reference(br-core-medication)
//* subject only Reference(br-core-patient)
//* context only Reference(br-core-encounter)
//* actor only Reference(br-core-practitioner or br-core-practitioner-role or br-core-patient or br-core-related-person or Device)
//* reasonReference only Reference(br-core-condition or br-core-observation or br-core-diagnostic-report)
//* request only Reference(br-core-medication-request)