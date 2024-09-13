Profile: br-core-medication-request
Parent: MedicationRequestBRIPS
Id: br-core-medication-request
Title: "br-core-medication-request"
Description: "Este perfil restringe a representação de uma requisição de medicamento relacionada ao paciente"
//* reportedReference only Reference(br-core-practitioner or br-core-practitioner-role or br-core-patient or br-core-related-person or br-core-organization)
//* reported[x].reportedReference only Reference(br-core-practitioner or br-core-practitioner-role or br-core-patient or br-core-related-person or br-core-organization)
//* medicationReference only Reference(br-core-medication)
//* subject only Reference(br-core-patient)
//* encounter only Reference(br-core-encounter)
//* requester only Reference(br-core-practitioner or br-core-practitioner-role or br-core-organization or br-core-patient or br-core-related-person or br-core-device)
//* requester.identifier 1..1
//* performer only Reference(br-core-practitioner or br-core-practitioner-role or br-core-organization or br-core-patient or br-core-device or br-core-related-person or br-core-care-team)
//* recorder only Reference(br-core-practitioner or br-core-practitioner-role)
//* reasonReference only Reference(br-core-condition or br-core-observation)
//* basedOn only Reference(br-core-care-plan or br-core-medication-request or br-core-service-request or br-core-immunization-recommendation)
* dosageInstruction.timing.repeat 1..1
//* doseAndRate.dose[x] 1..1
//* doseAndRange.doseQuantity 1..1
//* doseAndRange.doseQuantity 1..1
//* validityPeriod 1..1
//* priorPrescription only Reference(br-core-medication-request)