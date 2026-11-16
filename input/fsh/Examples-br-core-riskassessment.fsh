// Exemplo do perfil br-core-riskassessment.
// Probabilidade qualitativa com o CodeSystem HL7 risk-probability, como no
// ValueSet RiscoPaciente do Hospital Sírio-Libanês (low, moderate, high).
// Todos os dados são fictícios.
// Autoria: Jussara Macedo Pinho Rötzsch.

// Recursos referenciados (input/examples):
//   Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e        João Carlos Silva
//   Practitioner/d3b61455-f432-48f0-b83b-ba825922d735   Maria Clara
//   Encounter/c6d553d8-cce0-404b-9d1f-eeffbf7fc6df      atendimento ambulatorial de 12/12/2023
//   Condition/91d8d24f-a70d-4ebf-8dea-71cf92ce1bd5      B34.2 Infecção por coronavírus

Instance: br-core-riskassessment-risco-moderado
InstanceOf: BRCoreRiskAssessment
Usage: #example
Title: "Avaliação de risco moderado de evolução para forma grave"
Description: "Classificação de risco feita no atendimento ambulatorial: paciente com infecção por coronavírus com probabilidade moderada de evoluir para forma grave."
* language = #pt-BR
* status = #final
* code.text = "Classificação de risco do paciente"
* subject = Reference(Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e) "João Carlos Silva"
* encounter = Reference(Encounter/c6d553d8-cce0-404b-9d1f-eeffbf7fc6df)
* occurrenceDateTime = "2023-12-12T09:20:00-03:00"
* condition = Reference(Condition/91d8d24f-a70d-4ebf-8dea-71cf92ce1bd5)
* performer = Reference(Practitioner/d3b61455-f432-48f0-b83b-ba825922d735) "Maria Clara"
* prediction[0].outcome.text = "Evolução para forma grave"
* prediction[0].qualitativeRisk = http://terminology.hl7.org/CodeSystem/risk-probability#moderate
* prediction[0].qualitativeRisk.text = "Probabilidade moderada"
* prediction[0].whenPeriod.start = "2023-12-12"
* prediction[0].whenPeriod.end = "2023-12-26"
* mitigation = "Orientar sinais de alarme e reavaliar em 48 horas."
