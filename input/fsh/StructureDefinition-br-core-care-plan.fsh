Profile: br-core-care-plan
Parent: http://hl7.org/fhir/StructureDefinition/CarePlan
Id: br-core-care-plan
Description: "Este perfil "

* basedOn only Reference(br-core-care-plan)
* replaces only Reference(br-core-care-plan)
* partOf only Reference(br-core-care-plan)
* description 1..1
//* subject only Reference(br-core-patient)
* encounter only Reference(br-core-encounter)
* author only Reference(Device or CareTeam)
//* author only Reference(br-core-practitioner or br-core-practitioner-role or br-core-organization or br-core-patient or br-core-related-person or Device or CareTeam)
//* contributor only Reference(br-core-practitioner or br-core-practitioner-role or br-core-organization or br-core-patient or br-core-related-person or Device or CareTeam)
//* addresses only Reference(br-core-condition)
* activity 1..1
//* activity.performedActivity only Reference(br-core-encounter)
//* activity.plannedActivityReference only Reference(br-core-encounter)
* activity.detail 1..1