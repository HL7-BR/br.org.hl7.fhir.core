Profile: BRCoreAppointment
Parent: http://hl7.org/fhir/StructureDefinition/Appointment
Id: br-core-appointment
Title: "br-core-appointment"
Description: "Perfil brasileiro do recurso FHIR R4 Appointment, utilizado para agendamento de atendimentos, procedimentos e interações de cuidado no contexto do SUS, RNDS, saúde suplementar e privada, incluindo marcação, remarcação e cancelamento, bem como gestão de participantes, datas/horários e justificativas."

* id ^short = "Identificador lógico deste artefato"
* id ^definition = "Identificador lógico deste artefato"

* meta ^short = "Metadados sobre o recurso"
* meta ^definition = "Metadados sobre o recurso"

* implicitRules ^short = "Conjunto de regras usadas para criar o conteúdo"
* implicitRules ^definition = "Um conjunto de regras sob as quais este conteúdo foi criado"

* language ^short = "Idioma do recurso"
* language ^definition = "Idioma do recurso"

* text ^short = "Resumo narrativo em linguagem natural"
* text ^definition = "Resumo do texto do recurso em linguagem natural"

* contained ^short = "Recursos aninhados"
* contained ^definition = "Recursos contidos neste recurso"

* extension ^short = "Extensões adicionais não previstas no modelo base"
* extension ^definition = "Extensões adicionais que não fazem parte do modelo base"

* modifierExtension ^short = "Extensões que não podem ser ignoradas"
* modifierExtension ^definition = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"

* identifier ^short = "Identificadores do agendamento"
* identifier ^definition = "Identificadores para este Appointment (p.ex. identificador do sistema local ou da RNDS)"
* identifier MS

* status ^short = "Status do agendamento"
* status ^definition = "Situação atual do agendamento (proposto, pendente, agendado, concluído, cancelado, etc.)"
* status from http://hl7.org/fhir/ValueSet/appointmentstatus (required)
* status MS

* cancelationReason ^short = "Motivo do cancelamento"
* cancelationReason ^definition = "Razão codificada para cancelamento do agendamento"
* cancelationReason from http://hl7.org/fhir/ValueSet/appointment-cancellation-reason (preferred)

* serviceCategory ^short = "Categoria do serviço"
* serviceCategory ^definition = "Categoria ampla do serviço de saúde"
* serviceCategory from https://terminologia.saude.gov.br/fhir/ValueSet/BRModalidadeAssistencialMIRA
 (preferred)

* serviceType ^short = "Tipo de serviço"
* serviceType ^definition = "Tipo específico de serviço/atendimento a ser realizado"
* serviceType from https://terminologia.saude.gov.br/fhir/ValueSet/BRProcedimentosNacionais (preferred)
* serviceType 

* specialty ^short = "Especialidade clínica"
* specialty ^definition = "Especialidade clínica requerida para o atendimento"
* specialty from http://hl7.org/fhir/uv/ips/ValueSet/healthcare-professional-specialty-uv-ips (preferred)
* specialty 
* appointmentType ^short = "Tipo do agendamento"
* appointmentType ^definition = "Classificação do agendamento (p.ex. rotina, retorno, encaixe)"
* appointmentType from http://terminology.hl7.org/ValueSet/v2-0276  (preferred)
* appointmentType 

* reasonCode ^short = "Motivo (código) do agendamento"
* reasonCode ^definition = "Códigos que expressam a justificativa para o agendamento"
* reasonCode from https://terminologia.saude.gov.br/fhir/ValueSet/BRCID10 (preferred)

* reasonReference ^short = "Motivo (referência) do agendamento"
* reasonReference ^definition = "Referências clínicas (p.ex., Condition, Procedure, Observation) que justificam o agendamento"

* priority ^short = "Prioridade (0 = rotina)"
* priority ^definition = "Nível de prioridade do agendamento (inteiro; 0 para rotina, valores maiores indicam maior prioridade)"

* description ^short = "Descrição livre do agendamento"
* description ^definition = "Resumo textual do propósito do agendamento"

* supportingInformation ^short = "Informações de apoio"
* supportingInformation ^definition = "Referências a recursos que dão contexto ao agendamento (p.ex., DocumentReference, ImagingStudy)"

* start ^short = "Início planejado"
* start ^definition = "Data/hora planejada de início do atendimento"
* 
* end ^short = "Término planejado"
* end ^definition = "Data/hora planejada de término do atendimento"

* minutesDuration ^short = "Duração prevista (minutos)"
* minutesDuration ^definition = "Duração estimada do atendimento em minutos"

* slot ^short = "Slots reservados"
* slot ^definition = "Slots do agendador reservados para este Appointment"
* slot only Reference(Slot)

* created ^short = "Data de criação"
* created ^definition = "Data em que o agendamento foi criado"

* comment ^short = "Comentários adicionais"
* comment ^definition = "Informações adicionais relevantes sobre o agendamento"

* patientInstruction ^short = "Instruções ao paciente"
* patientInstruction ^definition = "Instruções para o paciente sobre o agendamento"

* basedOn ^short = "Solicitação que originou o agendamento"
* basedOn ^definition = "Referência à solicitação (ServiceRequest, CarePlan, etc.) que originou o agendamento"

* participant ^short = "Participantes do agendamento"
* participant ^definition = "Participantes envolvidos no agendamento (profissional, paciente, organização, dispositivo, etc.)"

* participant.type ^short = "Tipo de participante"
* participant.type ^definition = "Função ou papel do participante no agendamento (p.ex. médico, paciente, intérprete)"
* participant.type from https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoParticipante (extensible)

* participant.actor ^short = "Entidade participante"
* participant.actor ^definition = "Referência ao recurso que representa o participante"
* participant.actor only Reference(br-core-patient or br-core-practitioner or br-core-organization)

* participant.actor.required ^short = "Participação obrigatória?"
* participant.actor.required ^definition = "Indica se a presença do participante é obrigatória"
* participant.actor.required from http://hl7.org/fhir/ValueSet/participantrequired (required)

* participant.status ^short = "Status de participação"
* participant.status ^definition = "Confirmação do participante (accepted, declined, tentative, needs-action)"
* participant.status from http://hl7.org/fhir/ValueSet/participationstatus (required)

* participant.period ^short = "Período de disponibilidade"
* participant.period ^definition = "Intervalo de tempo durante o qual o participante está disponível"

* requestedPeriod ^short = "Período solicitado"
* requestedPeriod ^definition = "Período ou faixa de tempo solicitada para o agendamento (antes da confirmação)"
