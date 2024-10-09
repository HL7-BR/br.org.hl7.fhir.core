Profile: br-core-medication-request
Parent: MedicationRequestBRIPS
Id: br-core-medication-request
Title: "br-core-medication-request"
Description: "Este perfil restringe a representação de uma requisição de medicamento relacionada ao paciente"

* priority 0..0
* reportedReference only Reference(br-core-practitioner or br-core-practitioner-role or br-core-patient or br-core-related-person or br-core-organization)
* medicationReference only Reference(br-core-medication)
* subject only Reference(br-core-patient)
* identifier 1..1
* encounter only Reference(br-core-encounter)
* authoredOn 1..1
* requester 1..1
* requester only Reference(br-core-practitioner or br-core-practitioner-role or br-core-organization or br-core-patient or br-core-related-person or Device)
* performer only Reference(br-core-practitioner or br-core-practitioner-role or br-core-organization or br-core-patient or Device or br-core-related-person or br-core-care-team)
* recorder only Reference(br-core-practitioner or br-core-practitioner-role)
* reasonReference only Reference(br-core-condition or br-core-observation)
* basedOn 0..1
* basedOn only Reference(br-core-care-plan or br-core-medication-request or br-core-service-request or br-core-immunization-recommendation)
* dosageInstruction 0..1
* dosageInstruction.timing.repeat 1..1
* dosageInstruction.doseAndRate.dose[x] 1..1
* dispenseRequest.validityPeriod 1..1
* priorPrescription only Reference(br-core-medication-request)