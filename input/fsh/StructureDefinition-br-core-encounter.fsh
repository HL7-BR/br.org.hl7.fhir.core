Profile: br-core-encounter
Parent: Encounter
Id: br-core-encounter
Title: "br-core-encounter"

* identifier ^short = "Identificadores externos para este recurso"
* identifier ^definition = "Identificadores externos para este recurso"
* status ^short = "Estado atual do atendimento."
* status ^definition = "planned | arrived | triaged | in-progress | onleave | finished | cancelled +"
* statusHistory ^short = "Lista de status de atendimentos anteriores"
* statusHistory ^definition = "Lista de status de atendimentos anteriores"
* statusHistory.status ^short = "Status de atendimentos anteriores"
* statusHistory.status ^definition = "planned | arrived | triaged | in-progress | onleave | finished | cancelled +"
* statusHistory.period ^short = "O tempo em que o episódio estava no status especificado"
* statusHistory.period ^definition = "O tempo em que o episódio estava no status especificado"
* class ^short = "Classificação do atendimento com o paciente"
* class ^definition = "Classificação do atendimento com o paciente"
* classHistory ^short = "Lista de classes de atendimentos anteriores"
* classHistory ^definition = "Lista de classes de atendimentos anteriores"
* classHistory.class ^short = "O domínio fornece códigos que qualificam o ActEncounterClass (ENC)"
* classHistory.class ^definition = "inpatient | outpatient | ambulatory | emergency +"
* classHistory.period ^short = "O tempo em que o episódio estava na classe especificada"
* classHistory.period ^definition = "O tempo em que o episódio estava na classe especificada"
* type ^short = "Tipo específico de atendimento"
* type ^definition = "Tipo específico de atendimento"
* type from https://fhir.ans.gov.br/ValueSet/tipo-atendimento
* serviceType ^short = "Tipo específico de serviço"
* serviceType ^definition = "Tipo específico de serviço"
//* serviceType from https://terminologia.saude.gov.br/fhir/VAlueSet-BRServicoEspecializado
* priority ^short = "Indica a urgência do atendimento"
* priority ^definition = "Indica a urgência do atendimento"
* priority 1..1
* subject ^short = "O paciente ou grupo presente no atendimento"
* subject ^definition = "O paciente ou grupo presente no atendimento"
* subject only Reference(br-core-patient or Group)
* subject 1..1
* episodeOfCare ^short = "Episódio(s) de cuidado que este atendimento deve ser registrado contra"
* episodeOfCare ^definition = "Episódio(s) de cuidado que este atendimento deve ser registrado contra"
* basedOn ^short = "O ServiceRequest que iniciou este atendimento"
* basedOn ^definition = "O ServiceRequest que iniciou este atendimento"
* basedOn only Reference(br-core-servicerequest)
* participant ^short = "Lista de participantes envolvidos no atendimento"
* participant ^definition = "Lista de participantes envolvidos no atendimento"
* participant.type ^short = "Papel do participante no atendimento"
* participant.type ^definition = "Papel do participante no atendimento"
* participant.type 1..*
* participant.period ^short = "Período de tempo durante o atendimento em que o participante participou"
* participant.period ^definition = "Período de tempo durante o atendimento em que o participante participou"
* participant.individual ^short = "Pessoas envolvidas no atendimento além do paciente"
* participant.individual ^definition = "Pessoas envolvidas no atendimento além do paciente"
* participant.individual only Reference(br-core-practitioner or br-core-practitionerrole)
* appointment ^short = "A consulta que agendou este atendimento"
* appointment ^definition = "A consulta que agendou este atendimento"
* period ^short = "O horário de início e término do atendimento"
* period ^definition = "O horário de início e término do atendimento"
* period 1..1
* length ^short = "Quantidade de tempo que durou o atendimento (menos tempo ausente)"
* length ^definition = "Quantidade de tempo que durou o atendimento (menos tempo ausente)"
* reasonCode ^short = "Motivo codificado pelo qual o atendimento acontece"
* reasonCode ^definition = "Motivo codificado pelo qual o atendimento acontece"
//* reasonCode from https://terminologia.saude.gov.br/fhir/VAlueSet-BREncounterReason
* reasonReference ^short = "Motivo pelo qual o atendimento acontece (referência)"
* reasonReference ^definition = "Motivo pelo qual o atendimento acontece (referência)"
* reasonReference only Reference(br-core-condition or br-core-procedure or br-core-observation or ImmunizationRecommendation)
* reasonReference 0..1
* diagnosis ^short = "A lista de diagnósticos relevantes para este atendimento"
* diagnosis ^definition = "A lista de diagnósticos relevantes para este atendimento"
* diagnosis.condition ^short = "O diagnóstico ou procedimento relevante para o atendimento"
* diagnosis.condition ^definition = "O diagnóstico ou procedimento relevante para o atendimento"
* diagnosis.condition only Reference(br-core-condition or br-core-procedure)
* diagnosis.use ^short = "Papel que este diagnóstico tem dentro do atendimento (por exemplo, admissão, faturamento, alta…)"
* diagnosis.use ^definition = "Papel que este diagnóstico tem dentro do atendimento (por exemplo, admissão, faturamento, alta…)"
* diagnosis.use 1..1
//* diagnosis.use from https://terminologia.saude.gov.br/fhir/VAlueSet-diagnosis-role
* diagnosis.rank ^short = "Classificação do diagnóstico (para cada tipo de função)"
* diagnosis.rank ^definition = "Classificação do diagnóstico (para cada tipo de função)"
* account ^short = "O conjunto de contas que podem ser usadas para cobrança deste Atendimento"
* account ^definition = "O conjunto de contas que podem ser usadas para cobrança deste Atendimento"
* hospitalization ^short = "Detalhes sobre a admissão em um serviço de saúde"
* hospitalization ^definition = "Detalhes sobre a admissão em um serviço de saúde"
* hospitalization.preAdmissionIdentifier ^short = "Identificador de pré-admissão"
* hospitalization.preAdmissionIdentifier ^definition = "Identificador de pré-admissão"
* hospitalization.origin ^short = "O local/organização de onde o paciente veio antes da admissão"
* hospitalization.origin ^definition = "O local/organização de onde o paciente veio antes da admissão"
* hospitalization.origin only Reference(br-core-location or br-core-organization)
* hospitalization.admitSource ^short = "De onde o paciente foi admitido (encaminhamento médico, transferência)"
* hospitalization.admitSource ^definition = "De onde o paciente foi admitido (encaminhamento médico, transferência)"
* hospitalization.admitSource 1..1
* hospitalization.reAdmission ^short = "O tipo de readmissão hospitalar que ocorreu (se houver). Se o valor estiver ausente, isso não é identificado como uma readmissão"
* hospitalization.reAdmission ^definition = "O tipo de readmissão hospitalar que ocorreu (se houver). Se o valor estiver ausente, isso não é identificado como uma readmissão"
* hospitalization.dietPreference ^short = "Preferências alimentares relatadas pelo paciente"
* hospitalization.dietPreference ^definition = "Preferências alimentares relatadas pelo paciente"
* hospitalization.specialCourtesy ^short = "Cortesias especiais (VIP, membro do conselho)"
* hospitalization.specialCourtesy ^definition = "Cortesias especiais (VIP, membro do conselho)"
* hospitalization.specialArrangement ^short = "Cadeira de rodas, tradutor, maca, etc."
* hospitalization.specialArrangement ^definition = "Cadeira de rodas, tradutor, maca, etc."
* hospitalization.destination ^short = "Local/organização para onde o paciente recebe alta"
* hospitalization.destination ^definition = "Local/organização para onde o paciente recebe alta"
* hospitalization.destination only Reference(br-core-location or br-core-organization)
* hospitalization.dischargeDisposition ^short = "Categoria ou tipo de local após a alta"
* hospitalization.dischargeDisposition ^definition = "Categoria ou tipo de local após a alta"
* hospitalization.dischargeDisposition from https://fhir-hm.ans.gov.br/ValueSet/motivo-encerramento
* hospitalization.dischargeDisposition 1..1
* location ^short = "Lista de locais onde o paciente esteve"
* location ^definition = "Lista de locais onde o paciente esteve"
* location.location ^short = "Local onde o atendimento acontece"
* location.location ^definition = "Local onde o atendimento acontece"
* location.location only Reference(br-core-location)
* location.status ^short = "O status do local."
* location.status ^definition = "planned | active | reserved | completed"
* location.status from http://hl7.org/fhir/ValueSet/encounter-location-status
* location.physicalType ^short = "O tipo físico do local (geralmente o nível na hierarquia do local - quarto, enfermaria, etc.)"
* location.physicalType ^definition = "O tipo físico do local (geralmente o nível na hierarquia do local - quarto, enfermaria, etc.)"
* location.physicalType from http://hl7.org/fhir/ValueSet/location-physical-type
* location.period ^short = "Período de tempo durante o qual o paciente esteve presente no local"
* location.period ^definition = "Período de tempo durante o qual o paciente esteve presente no local"
* serviceProvider ^short = "A organização (instalação) responsável por este encontro"
* serviceProvider ^definition = "A organização (instalação) responsável por este encontro"
* serviceProvider only Reference(br-core-organization)
* serviceProvider 1..1
* partOf ^short = "Outro atendimento do qual este atendimento faz parte"
* partOf ^definition = "Outro atendimento do qual este atendimento faz parte"
* partOf only Reference(br-core-encounter)