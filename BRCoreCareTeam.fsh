// =====================================================================
// BR-Core CareTeam 1.2.0
// - category: binding required para BRTipoEquipe (tipos de equipe do SCNES),
//   substituindo BRModalidadeAssistencial.
// - INE como identifier:ine (string, 10 dígitos), em vez da extensão RNDS
//   BRIdentificacaoEquipe-1.0 (valueInteger perde zeros à esquerda).
// =====================================================================

Invariant: br-core-ine-1
Description: "O INE deve ter exatamente 10 dígitos numéricos (preservar zeros à esquerda)."
Severity: #error
Expression: "value.matches('^[0-9]{10}$')"

Profile: BRCoreCareTeam
Parent: CareTeam
Id: br-core-careteam
Title: "br-core-careteam"
Description: "Equipe de cuidado no contexto brasileiro. Inclui todas as pessoas e organizações que planejam participar da coordenação e da prestação do cuidado. Identifica equipes formais do SCNES pelo INE e classifica o tipo de equipe."
* ^url = "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careteam"
* ^version = "1.2.0"
* ^status = #active
* ^language = #pt-BR
* ^publisher = "Ministério da Saúde do Brasil"
* ^jurisdiction = urn:iso:std:iso:3166#BR

// identifier: INE
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Fatiamento por sistema de identificação"
* identifier contains ine 0..1 MS
* identifier[ine] ^short = "Identificador Nacional de Equipe (INE)"
* identifier[ine] ^definition = "Código INE da equipe no SCNES, 10 dígitos, como string para preservar zeros à esquerda. Obrigatório para equipes formais cadastradas no SCNES."
* identifier[ine] obeys br-core-ine-1
* identifier[ine].use = #official
* identifier[ine].system 1..1
* identifier[ine].system = "https://terminologia.saude.gov.br/fhir/NamingSystem/ine" (exactly)
* identifier[ine].value 1..1 MS
* identifier[ine].assigner only Reference(br-core-organization)
* identifier[ine].assigner ^short = "Estabelecimento (CNES) ao qual a equipe está vinculada"

* status MS

// category: tipo de equipe (SCNES)
* category MS
* category from BRTipoEquipe (required)
* category ^short = "Tipo de equipe do SCNES (TP_EQUIPE)"
* category ^definition = "Tipo de equipe conforme a tabela de tipos de equipe do SCNES (ex.: 70 ESF, 08 EMSI)."

* name MS
* subject only Reference(br-core-patient)
* encounter only Reference(br-core-encounter)
* period MS

* participant MS
* participant.role MS
* participant.role from BROcupacao (example)
* participant.member MS
* participant.member only Reference(br-core-practitioner or br-core-practitionerrole or br-core-relatedperson or br-core-patient or br-core-organization or BRCoreCareTeam)
* participant.onBehalfOf only Reference(br-core-organization)

* reasonReference only Reference(br-core-condition)
* managingOrganization MS
* managingOrganization only Reference(br-core-organization)
* managingOrganization ^short = "Estabelecimento de saúde (CNES) responsável pela equipe"
