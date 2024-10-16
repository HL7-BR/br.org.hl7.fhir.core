Profile: br-core-observationresultslaboratory
Parent: ObservationResultsLaboratoryBRIPS
Id: br-core-observationresultslaboratory
Description: "Este perfil representa "

* basedOn only Reference(br-core-careplan or DeviceRequest or br-core-immunizationrecommendation or br-core-medicationrequest or NutritionOrder or br-core-servicerequest)
//* partOf only Reference(br-core-medicationreference or br-core-medicationdispense or br-core-medicationstatement or br-core-procedure)
//br-core-immunization or br-core-imagingstudy
* category 1..1
* subject only Reference(br-core-patient or br-core-location or Device or Group)
* identifier 1..1
* encounter only Reference(br-core-encounter)
//* effective[x].id.extension only Reference(br-core-encounter)
//* effective.extension.data-absent-reason 0..0
* effectiveDateTime 0..0
* effectivePeriod 1..1
* issued 1..1
* performer only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or CareTeam or br-core-patient or br-core-relatedperson)
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
* hasMember only Reference(br-core-observationresultslaboratory or br-core-observationresults)