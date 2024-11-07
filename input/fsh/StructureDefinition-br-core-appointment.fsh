Profile: br-core-appointment
Parent: http://hl7.org/fhir/StructureDefinition/Appointment
Id: br-core-appointment
Description: "Uma reserva de um evento de saúde entre paciente(s), profissional(es), pessoa(s) relacionada(s) e/ou dispositivo(s) para uma data/hora específica. Isso pode resultar em um ou mais Encontro(s)"

* id ^short = "Identificador lógico deste artefato."
* id ^definition = "Identificador lógico deste artefato."
* meta ^short = "Metadados sobre o recurso"
* meta ^definition = "Metadados sobre o recurso" 
* implicitRules ^short = "Conjunto de regras sob as quais este conteúdo foi criado"
* implicitRules ^definition = "Conjunto de regras sob as quais este conteúdo foi criado"
* language ^short = "Idioma do conteúdo do recurso"
* language ^definition = "Idioma do conteúdo do recurso"
* text ^short = "Resumo do texto do recurso em linguagem natural"
* text ^definition = "Resumo do texto do recurso em linguagem natural"
* contained ^short = "Recursos contidos em linha"
* contained ^definition = "Recursos contidos em linha"
* modifierExtension ^short = "Extensão que não pode ser ignorada"
* modifierExtension ^definition = "Extensão que não pode ser ignorada"
* status ^short = "proposed | pending | booked | arrived | fulfilled | cancelled | noshow | entered-in-error | checked-in | waitlist"
* status ^definition = "proposed | pending | booked | arrived | fulfilled | cancelled | noshow | entered-in-error | checked-in | waitlist"
* cancelationReason ^short = "O motivo codificado para o cancelamento do compromisso"
* cancelationReason ^definition = "O motivo codificado para o cancelamento do compromisso"
* serviceCategory ^short = "Uma ampla categorização do serviço que será realizado durante esta consulta"
* serviceCategory ^definition = "Uma ampla categorização do serviço que será realizado durante esta consulta"
* serviceCategory from https://simplifier.net/redenacionaldedadosemsaude/valueset-brmodalidadeassistencialmira
* serviceCategory 1..1
* specialty ^short = "A especialidade do médico que seria necessário para realizar o serviço solicitado nesta consulta"
* specialty ^definition = "A especialidade do médico que seria necessário para realizar o serviço solicitado nesta consulta"
//* serviceType from https://terminologia.saude.gov.br/#/orgs/MS/collections/BROcupacao-1.0/
* specialty 1..1
* serviceType ^short = "O serviço específico que será realizado durante esta consulta"
* serviceType ^definition = "O serviço específico que será realizado durante esta consulta"
* serviceType 1..1
* serviceType from https://simplifier.net/redenacionaldedadosemsaude/valueset-brprocedimentosnacionais-1.0
* appointmentType ^short = "O estilo de consulta ou paciente que foi agendado no slot (não o tipo de serviço)"
* appointmentType ^definition = "O estilo de consulta ou paciente que foi agendado no slot (não o tipo de serviço)"
* appointmentType 1..1
* reasonCode ^short = "Razão codificada pela qual este compromisso está agendado"
* reasonCode ^definition = "Razão codificada pela qual este compromisso está agendado"
* reasonReference ^short = "Razão pela qual a nomeação deve ocorrer (recurso)"
* reasonReference ^definition = "Razão pela qual a nomeação deve ocorrer (recurso)"
//* reasonReference from https://simplifier.net/redenacionaldedadosemsaude/BRCIDAvaliado
* reasonReference only Reference(br-core-condition or br-core-procedure or br-core-immunizationrecommendation) 
* reasonReference 1..1
* priority ^short = "Usado para tomar decisões informadas se for necessário redefinir prioridades"
* priority ^definition = "Usado para tomar decisões informadas se for necessário redefinir prioridades"
* description ^short = "Exibido em uma linha de assunto em uma solicitação de reunião ou lista de compromissos"
* description ^definition = "Exibido em uma linha de assunto em uma solicitação de reunião ou lista de compromissos"
* supportingInformation ^short = "Informações adicionais para apoiar a nomeação"
* supportingInformation ^definition = "Informações adicionais para apoiar a nomeação"
* start ^short = "Quando a consulta será realizada"
* start ^definition = "Quando a consulta será realizada"
* end ^short = "Quando a nomeação está para terminar"
* end ^definition = "Quando a nomeação está para terminar"
* minutesDuration ^short = "Pode ser menor que início/fim (por exemplo, estimativa)"
* minutesDuration ^definition = "Pode ser menor que início/fim (por exemplo, estimativa)"
* slot ^short = "As vagas que esta nomeação está preenchendo"
* slot ^definition = "As vagas que esta nomeação está preenchendo"
* created ^short = "A data em que este compromisso foi criado inicialmente"
* created ^definition = "A data em que este compromisso foi criado inicialmente"
* comment ^short = "Comentários adicionais"
* comment ^definition = "Comentários adicionais"
* patientInstruction ^short = "Informações e instruções detalhadas para o paciente"
* patientInstruction ^definition = "Informações e instruções detalhadas para o paciente"
* basedOn ^short = "A solicitação de serviço que esta consulta é alocada para avaliar"
* basedOn ^definition = "A solicitação de serviço que esta consulta é alocada para avaliar"
* basedOn only Reference(br-core-servicerequest) 
* participant ^short = "Participantes envolvidos na nomeação"
* participant ^definition = "Participantes envolvidos na nomeação"
* participant.type ^short = "Papel do participante na nomeação"
* participant.type ^definition = "Papel do participante na nomeação"
* participant.type from https://simplifier.net/redenacionaldedadosemsaude/valueset-brtipoparticipante
* participant.actor ^short = "Pessoa, local/serviço de saúde ou dispositivo"
* participant.actor ^definition = "Pessoa, local/serviço de saúde ou dispositivo"
* participant.actor.identifier.system ^short = ""
* participant.actor.identifier.system ^definition = ""
* participant.actor.identifier.value ^short = ""
* participant.actor.identifier.value ^definition = ""
* participant.actor.identifier.value 0..1
//* participant.actor.required ^short = "required | optional | information-only"
//* participant.actor.required ^definition = "required | optional | information-only"
//* participant.actor.status ^short = "accepted | declined | tentative | needs-action"
//* participant.actor.status ^definition = "accepted | declined | tentative | needs-action"
//* participant.period ^short = "Período de participação do ator"
//* participant.period ^definition = "Período de participação do ator"
//* requestPeriod ^short = "Possíveis intervalos de data/hora solicitados para alocar o compromisso dentro"
//* requestPeriod ^definition = "Possíveis intervalos de data/hora solicitados para alocar o compromisso dentro"
