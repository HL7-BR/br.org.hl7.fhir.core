Profile: br-core-medication-dispense
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: br-core-medication-dispense
Title: "br-core-medication-dispense"

* category 1..1
//* medication only Reference(br-core-medication)
* subject 1..1
//* subject only Reference(br-core-patient)
* context only Reference(br-core-encounter)
* performer 1..*
//* performer.actor  only Reference(br-core-practitioner or br-core-related-person or Device)
//* performer.actor  only Reference(br-core-practitioner or br-core-practitioner-role or br-core-organization or br-core-patient or br-core-related-person or Device)
* location only Reference(br-core-location)
//* authorizingPrescription only Reference(br-core-medication-request)
* quantity 1..1
* whenHandedOver 1..1
* destination only Reference(br-core-location)
* receiver 1..1
//* receiver only Reference(br-core-practitioner or br-core-patient)
//* substitution.responsibleParty only Reference(br-core-practitioner or br-core-practitioner-role)