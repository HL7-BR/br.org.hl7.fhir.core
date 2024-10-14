Profile: br-core-medicationrequest
Parent: MedicationRequestBRIPS
Id: br-core-medicationrequest
Title: "br-core-medicationrequest"
Description: "Este perfil restringe a representação de uma requisição de medicamento relacionada ao paciente"

* priority 0..0
* reportedReference only Reference(br-core-practitioner or br-core-practitionerrole or br-core-patient or br-core-relatedperson or br-core-organization)
* medicationReference only Reference(br-core-medication)
* subject only Reference(br-core-patient)
* identifier 1..1
* encounter only Reference(br-core-encounter)
* authoredOn 1..1
* requester 1..1
* requester only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or br-core-patient or br-core-relatedperson or Device)
* performer only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or br-core-patient or Device or br-core-relatedperson or CareTeam)
* recorder only Reference(br-core-practitioner or br-core-practitionerrole)
* reasonReference only Reference(br-core-condition or br-core-observation)
* basedOn 0..1
* basedOn only Reference(br-core-careplan or br-core-medicationrequest or br-core-servicerequest or br-core-immunizationrecommendation)
* dosageInstruction 0..1
* dosageInstruction.timing.repeat 1..1
* dosageInstruction.doseAndRate.dose[x] 1..1
* dispenseRequest.validityPeriod 1..1
* priorPrescription only Reference(br-core-medicationrequest)