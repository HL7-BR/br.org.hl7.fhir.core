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
//* custodian only Reference(br-core-practitioner or br-core-practitioner-role or br-core-organization or br-core-patient or br-core-related-person or Device or br-core-care-team)
//Reference(br-core-practitioner | br-core-practitionerRole | br-core-organization | br-core-patient | br-core-relatedPerson | br-core-device|br-core-careteam). Criar o careteam
//* contributor only Reference(br-core-practitioner or br-core-practitioner-role or br-core-organization or br-core-patient or br-core-related-person or Device or br-core-care-team)
//* careTeam only Reference(br-core-care-plan)
//* addresses only Reference(br-core-condition)
//* goal only Reference(br-core-goal)
* activity 1..1
//* activity.performedActivity only Reference(br-core-encounter)
//* activity.plannedActivityReference only Reference(br-core-encounter)
* activity.detail 1..1