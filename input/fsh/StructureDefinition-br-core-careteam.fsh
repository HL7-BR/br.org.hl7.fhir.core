Profile: BRCoreCareTeam
Parent: CareTeam
Id: br-core-careteam
Title: "BR-Core CareTeam"
Description: "Equipe de cuidado no contexto brasileiro. O identificador da equipe pode ser o Identificador Nacional de Equipe (INE) do CNES e/ou identificadores atribuídos por estabelecimentos, secretarias de saúde ou sistemas de informação."
* ^status = #draft
* ^experimental = false

// identifier            0..*  Identifier
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Fatiamento por system. INE é slice nomeado; demais identificadores são admitidos pelo slicing aberto."
* identifier contains ine 0..1
* identifier[ine] ^short = "INE: Identificador Nacional de Equipe (CNES)"
* identifier[ine] ^definition = "Identificador Nacional de Equipe atribuído pelo CNES, usado quando a equipe está cadastrada no CNES."
* identifier[ine].system 1..1
* identifier[ine].system = "https://terminologia.saude.gov.br/fhir/NamingSystem/ine" (exactly)
* identifier[ine].value 1..1

// status                0..1  code                       CareTeamStatus (required)
// category              0..*  CodeableConcept            CareTeamCategory (example)
// name                  0..1  string
// subject               0..1  Reference(Patient | Group)
// encounter             0..1  Reference(Encounter)
// period                0..1  Period
// participant           0..*  BackboneElement            ctm-1
//   role                0..*  CodeableConcept            ParticipantRoles (example)
//   member              0..1  Reference(Practitioner | PractitionerRole | RelatedPerson | Patient | Organization | CareTeam)
//   onBehalfOf          0..1  Reference(Organization)
//   period              0..1  Period
// reasonCode            0..*  CodeableConcept            SNOMED CT Clinical Findings (example)
// reasonReference       0..*  Reference(Condition)
// managingOrganization  0..*  Reference(Organization)
// telecom               0..*  ContactPoint
// note                  0..*  Annotation

// =====================================================================
// Exemplos
// =====================================================================

Instance: br-core-careteam-esf-ine
InstanceOf: BRCoreCareTeam
Usage: #example
Title: "Equipe de Saúde da Família identificada por INE"
Description: "Equipe cadastrada no CNES, identificada pelo INE."
* identifier[ine].system = "https://terminologia.saude.gov.br/fhir/NamingSystem/ine"
* identifier[ine].value = "0000123456"
* identifier[ine].use = #official
* status = #active
* name = "ESF Vila Esperança 01"
* participant[0].member = Reference(PractitionerRole/medica-esf-01)
* participant[1].member = Reference(PractitionerRole/enfermeira-esf-01)
* managingOrganization = Reference(Organization/ubs-vila-esperanca)

Instance: br-core-careteam-hospitalar-local
InstanceOf: BRCoreCareTeam
Usage: #example
Title: "Equipe hospitalar com identificador institucional"
Description: "Equipe sem INE, identificada pelo hospital que a mantém."
* identifier[0].system = "https://hospital-exemplo.org.br/fhir/NamingSystem/equipes"
* identifier[0].value = "EMTN-UTI-02"
* identifier[0].use = #usual
* identifier[0].assigner = Reference(Organization/hospital-exemplo)
* status = #active
* name = "Equipe Multiprofissional de Terapia Nutricional - UTI Adulto"
* participant[0].member = Reference(PractitionerRole/nutricionista-uti-01)
* managingOrganization = Reference(Organization/hospital-exemplo)

Instance: br-core-careteam-emad-ine-local
InstanceOf: BRCoreCareTeam
Usage: #example
Title: "EMAD com INE e identificador municipal"
Description: "Equipe cadastrada no CNES que também possui identificador no sistema da secretaria municipal."
* identifier[ine].system = "https://terminologia.saude.gov.br/fhir/NamingSystem/ine"
* identifier[ine].value = "0000654321"
* identifier[ine].use = #official
* identifier[1].system = "https://sms-exemplo.gov.br/fhir/NamingSystem/equipes"
* identifier[1].value = "EMAD-NORTE-03"
* identifier[1].use = #secondary
* identifier[1].assigner = Reference(Organization/sms-exemplo)
* status = #active
* name = "EMAD Regional Norte 03"
* participant[0].member = Reference(PractitionerRole/medico-emad-03)
* managingOrganization = Reference(Organization/sms-exemplo)
