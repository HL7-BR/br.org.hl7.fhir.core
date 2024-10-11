Profile: br-core-procedure
Parent: ProcedureBRIPS
Id: br-core-procedure
Description: "Este perfil representa um procedimento."

* statusReason 1..1
* status from https://terminologia.saude.gov.br/fhir/ValueSet/BREstadoEvento (required)
* code 1..1
* subject.id 0..1
* performer 1..1