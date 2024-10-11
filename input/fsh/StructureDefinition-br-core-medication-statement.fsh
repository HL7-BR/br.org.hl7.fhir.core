Profile: br-core-medication-statement
Parent: MedicationStatementBRIPS
Id: br-core-medication-statement
Title: "br-core-medication-statement"
Description: "Contém os dados relacionados à medicação tomada por um paciente"

* basedOn only Reference(br-core-care-plan or br-core-service-request)
//* basedOn only Reference(br-core-medication-request or br-core-care-plan or br-core-service-request)
//* partOf only Reference(br-core-medication-administration or br-core-medication-dispense or br-core-medication-statement or br-core-procedure or br-core-observation-results)
//* subject only Reference(br-core-medication)
//* id only Reference(br-core-patient)
* context only Reference(br-core-encounter or EpisodeOfCare)
* informationSource only Reference(br-core-patient or br-core-practitioner or br-core-practitioner-role or br-core-related-person or br-core-organization)
* reasonReference only Reference(br-core-condition or br-core-observation-results or br-core-diagnostic-report)