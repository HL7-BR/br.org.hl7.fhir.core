Profile: br-core-procedure
Parent: ProcedureBRIPS
Id: br-core-procedure
Description: "Este perfil representa um procedimento."

* statusReason 1..1
* code 1..1
* code from http://hl7.org/fhir/ValueSet/condition-code
* subject.id 0..1
* performer 1..1