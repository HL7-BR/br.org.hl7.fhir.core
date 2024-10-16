Profile: br-core-medicationstatement
Parent: MedicationStatementBRIPS
Id: br-core-medicationstatement
Title: "br-core-medicationstatement"
Description: "Contém os dados relacionados à medicação tomada por um paciente"

* basedOn only Reference(br-core-careplan or br-core-servicerequest)
//* basedOn only Reference(br-core-medicationrequest or br-core-careplan or br-core-servicerequest)
//* partOf only Reference(br-core-medicationadministration or br-core-medicationdispense or br-core-medicationstatement or br-core-procedure or br-core-observationresults)
* subject only Reference(br-core-patient)
* context only Reference(br-core-encounter or EpisodeOfCare)
* informationSource only Reference(br-core-patient or br-core-practitioner or br-core-practitionerrole or br-core-relatedperson or br-core-organization)
* reasonReference only Reference(br-core-condition or br-core-observationresults or br-core-diagnosticreport)