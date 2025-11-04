Profile: BRCoreSchedule
Parent: http://hl7.org/fhir/StructureDefinition/Schedule
Id: br-core-schedule
Title: "br-core-schedule"
Description: "Perfil brasileiro do recurso FHIR R4 Schedule, utilizado para representar agendas e disponibilidades de profissionais, serviços ou locais de saúde no contexto da RNDS e sistemas de interoperabilidade, incluindo suporte a teleconsultas e telecolposcopia."

* id ^short = "Identificador lógico deste artefato"
* id ^definition = "Identificador lógico único deste artefato"

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

* identifier 0..*
* identifier ^short = "Identificador do Schedule"
* identifier ^definition = "Identificador único do recurso Schedule em sistemas locais ou nacionais"

* active 0..1
* active ^short = "Indica se este Schedule está ativo"
* active ^definition = "Indica se este Schedule está em uso ativo no sistema"
* active = true

* serviceCategory 0..*
* serviceCategory ^short = "Categoria assistencial de alto nível"
* serviceCategory ^definition = "Categoria de serviço de saúde (ex.: Atenção Básica, Atenção Especializada, Diagnóstico e Terapia)"
* serviceCategory from https://terminologia.saude.gov.br/fhir/ValueSet/BRModalidadeAssistencial (preferred)

* serviceType 0..*
* serviceType ^short = "Tipo de serviço"
* serviceType ^definition = "Serviço específico associado à agenda (ex.: Telecolposcopia, Consultas de Enfermagem)"
* serviceType from https://terminologia.saude.gov.br/fhir/ValueSet/BRFormaOrganizacaoTabelaSUS (preferred)

* specialty 0..*
* specialty ^short = "Especialidade clínica"
* specialty ^definition = "Tipo de especialidade requerida (ex.: Ginecologia, Cardiologia, etc.)"
* specialty from http://www.saude.gov.br/fhir/r4/ValueSet/BROcupacao-1.0 (preferred)

* actor 1..*
* actor ^short = "Entidades vinculadas à agenda"
* actor ^definition = "Recurso para o qual a disponibilidade é fornecida neste Schedule"
* actor only Reference(br-core-healthcareservice)
* actor MS

* planningHorizon 0..1
* planningHorizon ^short = "Período de tempo coberto pela agenda"
* planningHorizon ^definition = "Intervalo de tempo coberto pelo Schedule (planejamento da agenda)"

* planningHorizon.start 0..1
* planningHorizon.start ^short = "Data de início da agenda"
* planningHorizon.start ^definition = "Data e hora de início do planejamento da agenda"

* planningHorizon.end 0..1
* planningHorizon.end ^short = "Data de término da agenda"
* planningHorizon.end ^definition = "Data e hora de término do planejamento da agenda"

* comment 0..1
* comment ^short = "Comentários sobre a agenda"
* comment ^definition = "Comentários adicionais sobre disponibilidade, regras de agendamento ou observações operacionais"

Instance: BRCoreSchedule-SD
InstanceOf: StructureDefinition
Usage: #definition
* url = "http://br-core.saude.gov.br/StructureDefinition/BRCoreSchedule"
* name = "BRCoreSchedule"
* title = "BR-Core Schedule"
* status = #draft
* experimental = false
* date = "2025-10-16T00:00:00Z"
* publisher = "HL7 Brasil"
* fhirVersion = #4.0.1
* kind = #resource
* abstract = false
* type = "Schedule"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Schedule"
* derivation = #constraint
