Profile: br-core-medication-dispense
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: br-core-medication-dispense
Title: "br-core-medication-dispense"
//* medicationReference only Reference(br-core-medication)
//* subject only Reference(br-core-patient)
//* context only Reference(br-core-encounter)
//* actor only Reference(br-core-practitioner or br-core-practitioner-role or br-core-organization or br-core-patient or br-core-related-person or Device)
//* location only Reference(br-core-location)
//* authorizingPrescription only Reference(br-core-medication-request)
//* destination only Reference(br-core-location)
//* receiver only Reference(br-core-practitioner or br-core-patient)
//* responsibleParty only Reference(br-core-practitioner or br-core-practitioner-role)
