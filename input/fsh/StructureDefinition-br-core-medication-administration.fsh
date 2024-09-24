Profile: br-core-medication-administration
Parent: http://hl7.org/fhir/StructureDefinition/MedicationAdministration
Id: br-core-medication-administration
Title: "br-core-medication-administration"

* partOf only Reference(br-core-medication-administration or Procedure)
//* subject only Reference(br-core-patient)
* context only Reference(Encounter)
//*  supportingInformation only Reference(Any)
* performer.actor only Reference(Practitioner or Device)
//* actor only Reference(br-core-practitioner or br-core-practitioner-role or br-core-patient or br-core-related-person or Device)
//* reason only Reference(br-core-condition)
//* reasonReference only Reference(br-core-condition or br-core-observation or br-core-diagnostic-report)
//* request only Reference(br-core-medication-request)