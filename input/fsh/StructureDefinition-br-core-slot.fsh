Profile: BRCoreSlot
Parent: http://hl7.org/fhir/StructureDefinition/Slot
Id: br-core-slot
Title: "br-core-slot"
Description: "Perfil brasileiro do recurso FHIR R4 Slot, utilizado para representar a disponibilidade e reservas de tempo em sistemas de agendamento, interoperabilidade e integração com a RNDS, permitindo a comunicação entre agendas, prestadores e sistemas de marcação de consultas e procedimentos."

* id ^short = "Identificador lógico deste artefato"
* id ^definition = "Identificador lógico deste artefato"

* meta ^short = "Metadados sobre o recurso"
* meta ^definition = "Metadados sobre o recurso, incluindo versão, autor e histórico de atualização"

* implicitRules ^short = "Conjunto de regras usadas para criar o conteúdo"
* implicitRules ^definition = "Um conjunto de regras sob as quais este conteúdo foi criado"

* language ^short = "Idioma do recurso"
* language ^definition = "Idioma em que o recurso está escrito"

* text ^short = "Resumo narrativo em linguagem natural"
* text ^definition = "Resumo narrativo em linguagem natural do conteúdo deste recurso"

* contained ^short = "Recursos aninhados"
* contained ^definition = "Recursos contidos neste recurso"

* extension ^short = "Extensões adicionais não previstas no modelo base"
* extension ^definition = "Extensões adicionais que não fazem parte do modelo base"

* modifierExtension ^short = "Extensões que não podem ser ignoradas"
* modifierExtension ^definition = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"

* identifier ^short = "Identificador externo do slot"
* identifier ^definition = "Identificadores atribuídos a este slot em sistemas locais ou nacionais"

* serviceCategory ^short = "Categoria do serviço"
* serviceCategory ^definition = "Categoria ampla do serviço representado pelo slot (p.ex. consulta, exame, vacinação)"
* serviceCategory from https://terminologia.saude.gov.br/fhir/ValueSet/BRModalidadeAssistencial (preferred)

* serviceType ^short = "Tipo de serviço"
* serviceType ^definition = "Tipo específico de serviço/atendimento associado ao slot"
* serviceType from https://terminologia.saude.gov.br/fhir/ValueSet/BRFormaOrganizacaoTabelaSUS (preferred)

* specialty ^short = "Especialidade clínica"
* specialty ^definition = "Especialidade clínica associada ao slot"
* specialty from https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao (preferred)


* appointmentType ^short = "Tipo de agendamento"
* appointmentType ^definition = "Tipo de agendamento permitido para este slot"
* appointmentType from http://terminology.hl7.org/ValueSet/v2-0276 (preferred)

* schedule ^short = "Agenda à qual este slot pertence"
* schedule ^definition = "Referência à agenda (Schedule) à qual o slot está vinculado"
* schedule 1..1
* schedule only Reference(br-core-schedule)


* status ^short = "Status do slot"
* status ^definition = "Status do slot em relação à disponibilidade (busy | free | busy-unavailable | busy-tentative | entered-in-error)"
* status from http://hl7.org/fhir/ValueSet/slotstatus (required)

* start ^short = "Data/hora de início do slot"
* start ^definition = "Data e hora de início do período de tempo do slot"


* end ^short = "Data/hora de término do slot"
* end ^definition = "Data e hora de término do período de tempo do slot"


* overbooked ^short = "Indica se o slot permite sobreposição de marcações"
* overbooked ^definition = "Indica se o slot pode ser utilizado além da capacidade normal"


* comment ^short = "Comentários adicionais sobre o slot"
* comment ^definition = "Notas ou observações adicionais sobre o slot, como restrições ou orientações"

* schedule ^short = "Referência para agenda"
* schedule ^definition = "Referência à agenda associada a este slot"

* comment.extension ^short = "Extensões adicionais para comentários"
* comment.extension ^definition = "Extensões que qualificam ou complementam os comentários sobre o slot"