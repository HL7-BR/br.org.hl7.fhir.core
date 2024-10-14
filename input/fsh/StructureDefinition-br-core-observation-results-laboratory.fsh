Profile: br-core-observation-results-laboratory
Parent: ObservationResultsLaboratoryBRIPS
Id: br-core-observation-results-laboratory
Description: "Este perfil representa "

* basedOn only Reference(br-core-care-plan or br-core-immunization-recommendation or br-core-medication-request)
//br-core-device-request br-core-nutrition-order br-core-service-request
//* partOf only Reference(br-core-medication-reference or br-core-medication-dispense or br-core-medication-statement or br-core-procedure)
//br-core-immunization or br-core-imaging-study
* category 1..1
* subject only Reference(br-core-patient or br-core-location or Device or Group)
* identifier 1..1
* encounter only Reference(br-core-encounter)
//* effective[x].id.extension only Reference(br-core-encounter)
//* effective[x].extension.id only Reference(br-core-care-team)
//* effective.extension.extension.url only Reference(Goal)
//* effective[x].extension.extension.url only Reference(br-core-goal)
//* effective.extension.data-absent-reason 0..0
* effectiveDateTime 0..0
* effectivePeriod 1..1
* issued 1..1
* performer only Reference(br-core-practitioner or br-core-practitioner-role or br-core-organization or br-core-care-team or br-core-patient or br-core-related-person)
* value[x] 1..1
* interpretation 0..1
* note 0..1
* method 1..1
//* specimen 0..*
//* specimen only Reference(br-core-specimen)
* referenceRange 1..1
* referenceRange.modifierExtension 1..1
* referenceRange.low 1..1
* referenceRange.high 1..1
* referenceRange.text 1..1
* hasMember only Reference(br-core-observation-results-laboratory or br-core-observation-results)