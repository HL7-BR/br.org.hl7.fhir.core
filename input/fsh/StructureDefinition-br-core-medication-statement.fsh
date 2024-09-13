Profile: br-core-medication-statement
Parent: MedicationStatementBRIPS
Id: br-core-medication-statement
Title: "br-core-medication-statement"
Description: "Contém os dados relacionados à medicação tomada por um paciente"
* identifier 1..1
//* basedOn only Reference(br-core-medication-administration or br-core-medication-dispense or  br-core-medication-statement or  br-core-procedure or br-core-bservation-results)
//* medication[x].medicationReference only Reference(br-core-medication)
//* subject only Reference(br-core-patient)
//* context only Reference(br-core-encounter, EpisodeOfCare)
//* informationSource only Reference(br-core-patient or br-core-practitioneror br-core-practitioner-role or RelatedPerson or br-core-organization)
//* reasonReference only Reference(br-core-condition or br-core-observation or br-core-diagnostic-report)