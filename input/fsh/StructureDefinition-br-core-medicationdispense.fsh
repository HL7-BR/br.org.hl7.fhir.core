Profile: BRCoreMedicationDispense
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: br-core-medicationdispense
Title: "br-core-medicationdispense"
Description: "Este recurso Indica que um medicamento deve ser ou foi dispensado para uma pessoa/paciente. O recurso inclui a descrição do medicamento (suprimento) fornecido bem como as instruções para a sua administração. A dispensação do medicamento é o resultado de um  pedido de medicamentos feito por um sistema de informações."

* identifier ^short = "Identificadores externos para este recurso"
* identifier ^definition = "Identificadores externos para este recurso"
* partOf ^short = "Evento que a dispensação faz parte de"
* partOf ^definition = "Evento que a dispensação faz parte de"
* status ^short = "Códigos de status da dispensação de medicamentos"
* status ^definition = "preparation | in-progress | cancelled | on-hold | completed | entered-in-error | stopped | declined | unknown"
* statusReason[x] ^short = "Por que uma dispensação não foi realizada"
* statusReason[x] ^definition = "Por que uma dispensação não foi realizada"
* category ^short = "Tipo de dispensação de medicamentos"
* category ^definition = "Tipo de dispensação de medicamentos"
* category 1..1
* medication[x] ^short = "Que medicamento foi fornecido"
* medication[x] ^definition = "Que medicamento foi fornecido"
* medicationReference only Reference(br-core-medication)
* subject ^short = "Para quem é a dispensação"
* subject ^definition = "Para quem é a dispensação"
* subject 1..1
* subject only Reference(br-core-patient)
* context ^short = "Encounter / Episode associado a este evento"
* context only Reference(br-core-encounter)
* context ^definition = "Encounter / Episode associado a este evento"
* supportingInformation ^short = "Informações que subsidiam a dispensação do medicamento"
* supportingInformation ^definition = "Informações que subsidiam a dispensação do medicamento"
* performer ^short = "Quem realizou o evento"
* performer ^definition = "Quem realizou o evento"
* performer 1..*
* performer.function ^short = "Quem realizou a dispensação e o que eles fizeram"
* performer.function ^definition = "Quem realizou a dispensação e o que eles fizeram"
* performer.actor ^short = "Indivíduo que estava realizando"
* performer.actor ^definition = "Indivíduo que estava realizando"
* performer.actor  only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or br-core-patient or br-core-relatedperson or Device)
* location ^short = "Onde ocorreu a dispensação"
* location ^definition = "Onde ocorreu a dispensação"
* location only Reference(br-core-location)
* authorizingPrescription ^short = "Ordem de medicação que autoriza a dispensação"
* authorizingPrescription ^definition = "Ordem de medicação que autoriza a dispensação"
* authorizingPrescription only Reference(br-core-medicationrequest)
* type ^short = "Preenchimento de teste, preenchimento parcial, preenchimento de emergência, etc."
* type ^definition = "Preenchimento de teste, preenchimento parcial, preenchimento de emergência, etc."
* quantity ^short = "Quantidade dispensada"
* quantity ^definition = "Quantidade dispensada"
* quantity 1..1
* daysSupply ^short = "Quantidade de medicamento expressa como uma quantidade de tempo"
* daysSupply ^definition = "Quantidade de medicamento expressa como uma quantidade de tempo"
* whenPrepared ^short = "Quando o produto foi embalado e revisado"
* whenPrepared ^definition = "Quando o produto foi embalado e revisado"
* whenHandedOver ^short = "Quando o produto foi distribuído"
* whenHandedOver ^definition = "Quando o produto foi distribuído"
* whenHandedOver 1..1
* destination ^short = "Para onde o medicamento foi enviado"
* destination ^definition = "Para onde o medicamento foi enviado"
* destination only Reference(br-core-location)
* receiver ^short = "Quem coletou a medicação"
* receiver ^definition = "Quem coletou a medicação"
* receiver 1..1
* receiver only Reference(br-core-practitioner or br-core-patient)
* note ^short = "Informações sobre a dispensação"
* note ^definition = "Informações sobre a dispensação"
* dosageInstruction ^short = "Como o medicamento deve ser usado pelo paciente ou administrado pelo cuidador"
* dosageInstruction ^definition = "Como o medicamento deve ser usado pelo paciente ou administrado pelo cuidador"
* substitution ^short = "Se uma substituição foi realizada na dispensação"
* substitution ^definition = "Se uma substituição foi realizada na dispensação"
* substitution.wasSubstituted ^short = "Se uma substituição foi ou não realizada na dispensação"
* substitution.wasSubstituted ^definition = "Se uma substituição foi ou não realizada na dispensação"
* substitution.type ^short = "Código que indica se um medicamento diferente do prescrito foi dispensado"
* substitution.type ^definition = "Código que indica se um medicamento diferente do prescrito foi dispensado"
* substitution.reason ^short = "Por que a substituição foi feita"
* substitution.reason ^definition = "Por que a substituição foi feita"
* substitution.responsibleParty ^short = "Quem é responsável pela substituição"
* substitution.responsibleParty ^definition = "Quem é responsável pela substituição"
* substitution.responsibleParty only Reference(br-core-practitioner or br-core-practitionerrole)
* detectedIssue ^short = "Problema clínico com ação"
* detectedIssue ^definition = "Problema clínico com ação"
* eventHistory ^short = "Uma lista de eventos relevantes do ciclo de vida"
* eventHistory ^definition = "Uma lista de eventos relevantes do ciclo de vida"