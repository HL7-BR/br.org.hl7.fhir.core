// Exemplos dos casos que as alterações pendentes de ratificação (issue #34) tornaram válidos.
// Cada exemplo omite um elemento que era 1..1 até a 1.7.1 ou exercita uma invariante nova.
// Todos os dados são fictícios.
// Autoria: Jussara Macedo Pinho Rötzsch.

// Pacientes, profissionais e estabelecimentos referenciados (input/examples):
//   Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e        João Carlos Silva
//   Practitioner/d3b61455-f432-48f0-b83b-ba825922d735   Maria Clara
//   PractitionerRole/69ba81d5-37fe-471e-99d8-e53649ccdeed
//   Organization/1428c345-c221-411f-880f-6fb163817387   Hospital Sírio-Libanês
//   Organization/2b9c99c6-f9c9-42f0-a107-ed5f0d806995   Consultório Dr. José Silva
//   Medication/3a46210c-7eb3-48ec-aa67-db7e7ee18864
//   Condition/91d8d24f-a70d-4ebf-8dea-71cf92ce1bd5

// ---------------------------------------------------------------- DF-07
Instance: br-core-medicationdispense-nao-dispensado
InstanceOf: BRCoreMedicationDispense
Usage: #example
Title: "Medicamento não dispensado (DF-07)"
Description: "Item recusado: status declined, sem quantidade, sem data de entrega e sem receptor. Até a 1.7.1, quantity, whenHandedOver e receiver eram 1..1 e este registro era inválido."
* status = #declined
* statusReasonCodeableConcept.text = "Medicamento em falta no estoque da farmácia"
* category = http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-category#community "Community"
* medicationReference = Reference(Medication/3a46210c-7eb3-48ec-aa67-db7e7ee18864)
* subject = Reference(Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e) "João Carlos Silva"
* performer[0].actor = Reference(Practitioner/d3b61455-f432-48f0-b83b-ba825922d735) "Maria Clara"

// ---------------------------------------------------------------- DI-21, br-core-loc-1
Instance: br-core-location-endereco-sem-nome
InstanceOf: BRCoreLocation
Usage: #example
Title: "Local identificado só pelo endereço (DI-21)"
Description: "Domicílio do paciente em visita domiciliar: sem nome, identificado pelo endereço. Atende à br-core-loc-1 (nome ou endereço). Até a 1.7.1, name era 1..1."
* status = #active
* mode = #instance
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PTRES "Patient's Residence"
* address.use = #home
* address.line[0] = "Rua das Palmeiras, 45, casa 2"
* address.city = "São Paulo"
* address.state = "SP"
* address.postalCode = "04001-000"
* address.country = "BR"

// ---------------------------------------------------------------- RIRA-23, DR-27, br-core-enc-1
Instance: br-core-encounter-internacao-finalizada
InstanceOf: BRCoreEncounter
Usage: #example
Title: "Internação finalizada com desfecho (RIRA-23, DR-27)"
Description: "Internação encerrada: br-core-enc-1 exige hospitalization.dischargeDisposition. O diagnóstico vem sem diagnosis.use, que deixou de ser 1..1 (DR-27)."
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#EM "emergency"
* subject = Reference(Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e) "João Carlos Silva"
* period.start = "2026-10-10T08:00:00-03:00"
* period.end = "2026-10-15T11:00:00-03:00"
* diagnosis[0].condition = Reference(Condition/91d8d24f-a70d-4ebf-8dea-71cf92ce1bd5)
* hospitalization.admitSource = http://terminology.hl7.org/CodeSystem/admit-source#emd "From accident/emergency department"
* hospitalization.dischargeDisposition = http://terminology.hl7.org/CodeSystem/discharge-disposition#home "Home"
* serviceProvider = Reference(Organization/1428c345-c221-411f-880f-6fb163817387) "Hospital Sírio-Libanês"

Instance: br-core-encounter-ambulatorial-sem-internacao
InstanceOf: BRCoreEncounter
Usage: #example
Title: "Consulta ambulatorial finalizada: alcance da br-core-enc-1 (RIRA-23)"
Description: "Atendimento ambulatorial encerrado, sem hospitalization: a br-core-enc-1 só alcança internação finalizada e não exige desfecho aqui. Mostra o alcance da regra, que substituiu o hospitalization.dischargeDisposition 1..1."
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#R "routine"
* subject = Reference(Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e) "João Carlos Silva"
* period.start = "2026-10-20T09:00:00-03:00"
* period.end = "2026-10-20T09:30:00-03:00"
* serviceProvider = Reference(Organization/2b9c99c6-f9c9-42f0-a107-ed5f0d806995) "Consultório Dr. José Silva"

// ---------------------------------------------------------------- DR-09, DL-31
Instance: br-core-observation-faixa-referencia-sem-texto
InstanceOf: BRCoreObservation
Usage: #example
Title: "Resultado com faixa de referência numérica, sem texto (DR-09, DL-31)"
Description: "Glicose em jejum com referenceRange só por low e high. Até a 1.7.1, referenceRange.text era 1..1."
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = $loinc#1558-6
* code.text = "Glicose em jejum"
* subject = Reference(Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e) "João Carlos Silva"
* effectiveDateTime = "2026-10-21T07:30:00-03:00"
* valueQuantity = 92 'mg/dL' "mg/dL"
* referenceRange[0].low = 70 'mg/dL' "mg/dL"
* referenceRange[0].high = 99 'mg/dL' "mg/dL"

// ---------------------------------------------------------------- DR-08
Instance: br-core-vitalsigns-sem-valor
InstanceOf: BRCoreVitalSigns
Usage: #example
Title: "Sinal vital não aferido (DR-08)"
Description: "Frequência cardíaca não aferida: dataAbsentReason no lugar do valor (vs-2 do R4). Até a 1.7.1, value[x] era 1..1."
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e) "João Carlos Silva"
* effectiveDateTime = "2026-10-21T08:00:00-03:00"
* issued = "2026-10-21T08:05:00-03:00"
* dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#not-performed "Not Performed"

// ---------------------------------------------------------------- DL-32
Instance: br-core-specimen-coleta-sem-quantidade
InstanceOf: BRCoreSpecimen
Usage: #example
Title: "Amostra sem quantidade e método de coleta (DL-32)"
Description: "Swab de nasofaringe com data da coleta, sem collection.quantity e sem collection.method. Até a 1.7.1, os dois eram 1..1."
* status = #available
* type = https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoAmostraGAL#SWNAFA "Swab Nasofaríngeo"
* subject = Reference(Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e) "João Carlos Silva"
* collection.collectedDateTime = "2026-10-21T10:00:00-03:00"

// ---------------------------------------------------------------- DR-10, AC-05
Instance: br-core-medicationrequest-sem-identificador
InstanceOf: BRCoreMedicationRequest
Usage: #example
Title: "Prescrição sem identificador e com duas posologias (DR-10, AC-05)"
Description: "Prescrição com dose de ataque e dose de manutenção (duas dosageInstruction), sem identifier, sem timing.repeat estruturado e sem validityPeriod. Até a 1.7.1, esses elementos eram 1..1 e dosageInstruction era 0..1."
* status = #active
* intent = #order
* medicationReference = Reference(Medication/3a46210c-7eb3-48ec-aa67-db7e7ee18864)
* subject = Reference(Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e) "João Carlos Silva"
* authoredOn = "2026-10-21T10:30:00-03:00"
* requester = Reference(PractitionerRole/69ba81d5-37fe-471e-99d8-e53649ccdeed)
* dosageInstruction[0].sequence = 1
* dosageInstruction[0].text = "Dose de ataque: 2 comprimidos no primeiro dia"
* dosageInstruction[1].sequence = 2
* dosageInstruction[1].text = "Manutenção: 1 comprimido ao dia por 29 dias"

// ---------------------------------------------------------------- DR-11
Instance: br-core-careplan-sem-atividade
InstanceOf: BRCoreCarePlan
Usage: #example
Title: "Plano de cuidado sem atividades detalhadas (DR-11)"
Description: "Plano registrado com título e objetivo, ainda sem atividades e sem descrição. Até a 1.7.1, activity e description eram 1..1."
* status = #draft
* intent = #plan
* title = "Plano de cuidado pós-alta"
* subject = Reference(Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e) "João Carlos Silva"

// ---------------------------------------------------------------- DR-23
Instance: br-core-patient-dois-cns
InstanceOf: BRCorePatient
Usage: #example
Title: "Paciente com dois CNS (DR-23)"
Description: "Paciente com CNS definitivo e CNS provisório, situação comum no CADSUS. Até a 1.7.1, a fatia cns era 0..1."
* identifier[cns][0].use = #official
* identifier[cns][0].type = http://terminology.hl7.org/CodeSystem/v2-0203#HC "Health Card Number"
* identifier[cns][0].system = "https://saude.gov.br/fhir/sid/cns"
* identifier[cns][0].value = "700000000000005"
* identifier[cns][1].use = #temp
* identifier[cns][1].type = http://terminology.hl7.org/CodeSystem/v2-0203#HC "Health Card Number"
* identifier[cns][1].system = "https://saude.gov.br/fhir/sid/cns"
* identifier[cns][1].value = "898000000000003"
* name[0].use = #official
* name[0].family = "Oliveira"
* name[0].given[0] = "Ana"
* gender = #female
* birthDate = "1980-05-12"

// ---------------------------------------------------------------- DR-14
Instance: br-core-organization-sem-endereco
InstanceOf: BRCoreOrganization
Usage: #example
Title: "Estabelecimento sem alias e sem endereço (DR-14)"
Description: "Estabelecimento identificado pelo CNES e pelo nome, sem alias e sem address. Até a 1.7.1, os dois eram 1..1."
* identifier[cnes].use = #official
* identifier[cnes].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
* identifier[cnes].system = "https://saude.gov.br/fhir/sid/cnes"
* identifier[cnes].value = "9990010"
* active = true
* name = "Unidade de Saúde Exemplo"

Instance: br-core-practitionerrole-sem-periodo
InstanceOf: BRCorePractitionerRole
Usage: #example
Title: "Vínculo profissional sem período (DR-14)"
Description: "Vínculo ativo sem period. Até a 1.7.1, period era 1..1."
* active = true
* practitioner = Reference(Practitioner/d3b61455-f432-48f0-b83b-ba825922d735) "Maria Clara"
* organization = Reference(Organization/2b9c99c6-f9c9-42f0-a107-ed5f0d806995) "Consultório Dr. José Silva"
* code = https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO#225120 "MEDICO CARDIOLOGISTA"

Instance: br-core-procedure-sem-executante
InstanceOf: BRCoreProcedure
Usage: #example
Title: "Procedimento relatado sem executante (DR-14)"
Description: "Procedimento informado pelo paciente, sem performer conhecido. Até a 1.7.1, performer era 1..1."
* status = #completed
* code = http://snomed.info/sct#80146002 "Appendectomy"
* subject = Reference(Patient/b2f63a4c-ddaa-4652-8481-ac1ff473104e) "João Carlos Silva"
* performedString = "Na infância"
