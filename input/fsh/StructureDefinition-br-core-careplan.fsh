Profile: br-core-careplan
Parent: http://hl7.org/fhir/StructureDefinition/CarePlan
Id: br-core-careplan
Description: "Este perfil "

* basedOn only Reference(br-core-careplan)
* replaces only Reference(br-core-careplan)
* partOf only Reference(br-core-careplan)
* description 1..1
//* subject only Reference(br-core-patient)
* encounter only Reference(br-core-encounter)
* author only Reference(Device or CareTeam)
//* author only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or br-core-patient or br-core-relatedperson or Device or CareTeam)
//* contributor only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or br-core-patient or br-core-relatedperson or Device or CareTeam)
//* addresses only Reference(br-core-condition)
* activity 1..1
//* activity.performedActivity only Reference(br-core-encounter)
//* activity.plannedActivityReference only Reference(br-core-encounter)
* activity.detail 1..1