### Escopo e uso

O [br-core-location](StructureDefinition-br-core-location) inclui locais incidentais (um local que é usado para assistência médica sem designação ou autorização prévia) e locais dedicados e formalmente nomeados. Os locais podem ser privados, públicos, móveis ou fixos e podem variar de pequenos freezers a prédios hospitalares completos ou estacionamentos. 

Exemplos de locais são:

-	Prédio, enfermaria, corredor, leito, quarto ou cama
-	Clínica Móvel
-	Freezer, incubadora
-	Veículo ou elevador
-	Casa, galpão ou garagem
-	Estrada, lugar de estacionamento, parque
-	Ambulância (genérico)
-	Ambulância (específica)
-	Casa do Paciente (genérico)
-	Jurisdição

Esses locais não se destinam a cobrir locais em que algo aconteceu ao paciente (por exemplo, a perna quebrada de um paciente), mas podem cobrir o local onde o paciente quebrou a perna (por exemplo, o playground).

### Caso de uso

Exemplos de uso do recurso.

### Caso de uso da RNDS

Na RNDS este recurso é uma referência genérica aos locais onde um Contato Assistencial pode acontecer.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support). 

**Cada Perfil Location deve ter:**
1.	Status
2.	Name
3.	Mode

**Cada Perfil Location deve oferecer suporte a:**
1.	Type 

**Orientações de implementação específicas do perfil**
No recurso br-core-location, os elementos status e name são obrigatórios por conta da [Portaria de Consolidação n°1 de 28 de setembro de 2017](https://bvsms.saude.gov.br/bvs/saudelegis/gm/2021/prt2236_20_09_2021.html), conforme foi definido na RNDS.

### Limites e relacionamentos

Location e Organization são recursos intimamente relacionados e podem frequentemente ser misturados/combinados/confundidos.

O [br-core-location](StructureDefinition-br-core-location) tem a intenção de descrever as estruturas mais físicas gerenciadas/operadas por uma organização, enquanto o [br-core-organization](StructureDefinition-br-core-organization) tem a intenção de representar as hierarquias mais conceituais, como uma ala.

Um local é válido sem um endereço em casos em que ele poderia ser puramente descrito por um local geocodificado em áreas remotas, ou quando registrado por um dispositivo. Locais com um modo = "kind" provavelmente também não teriam um endereço, pois são apenas um tipo de local, mas também poderiam ter um endereço onde podem ser encontrados no endereço.

Outro uso de localização poderia ser para descrever uma Jurisdição. Esta jurisdição pode ser considerada um limite classificado que pode ser uma combinação de um limite físico e algum outro(s) discriminador(es):
-	Nação - Comunidade nacional ou Governo Federal (Ministério da Saúde)
-	Província ou Estado (comunidade ou governo)
-	Negócios (em toda a empresa)
-	Âmbito de negócios (CDC/FDA)
-	Segmento de negócios (Farmácia do Reino Unido)

Este recurso é referenciado por [UsageContext](https://hl7.org/fhir/R4/metadatatypes.html#UsageContext), [Account](https://hl7.org/fhir/R4/account.html#Account), [ActivityDefinition](https://hl7.org/fhir/R4/activitydefinition.html#ActivityDefinition), [AdverseEvent](https://hl7.org/fhir/R4/adverseevent.html#AdverseEvent), [Appointment](https://hl7.org/fhir/R4/appointment.html#Appointment), [AppointmentResponse](https://hl7.org/fhir/R4/appointmentresponse.html#AppointmentResponse), [AuditEvent](https://hl7.org/fhir/R4/auditevent.html#AuditEvent), [CarePlan](https://hl7.org/fhir/R4/careplan.html#CarePlan), [Claim](https://hl7.org/fhir/R4/claim.html#Claim), [ClaimResponse](https://hl7.org/fhir/R4/claimresponse.html#ClaimResponse), [Contract](https://hl7.org/fhir/R4/contract.html#Contract), [CoverageEligibilityRequest](https://hl7.org/fhir/R4/coverageeligibilityrequest.html#CoverageEligibilityRequest), [Device](https://hl7.org/fhir/R4/device.html#Device), [DeviceRequest](https://hl7.org/fhir/R4/devicerequest.html#DeviceRequest), [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html#DiagnosticReport), [Encounter](https://hl7.org/fhir/R4/encounter.html#Encounter), [ExplanationOfBenefit](https://hl7.org/fhir/R4/explanationofbenefit.html#ExplanationOfBenefit), [Flag](https://hl7.org/fhir/R4/flag.html#Flag), [HealthcareService](https://hl7.org/fhir/R4/healthcareservice.html#HealthcareService), [ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html#ImagingStudy), [Immunization](https://hl7.org/fhir/R4/immunization.html#Immunization), [InsurancePlan](https://hl7.org/fhir/R4/insuranceplan.html#InsurancePlan), [List](https://hl7.org/fhir/R4/list.html#List), itself, [MeasureReport](https://hl7.org/fhir/R4/measurereport.html#MeasureReport), [Media](https://hl7.org/fhir/R4/media.html#Media), [MedicationDispense](https://hl7.org/fhir/R4/medicationdispense.html#MedicationDispense), [Observation](https://hl7.org/fhir/R4/observation.html#Observation), [OrganizationAffiliation](https://hl7.org/fhir/R4/organizationaffiliation.html#OrganizationAffiliation), [PractitionerRole](https://hl7.org/fhir/R4/practitionerrole.html#PractitionerRole), [Procedure](https://hl7.org/fhir/R4/procedure.html#Procedure), [Provenance](https://hl7.org/fhir/R4/provenance.html#Provenance), [ResearchStudy](https://hl7.org/fhir/R4/researchstudy.html#ResearchStudy), [Schedule](https://hl7.org/fhir/R4/schedule.html#Schedule), [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html#ServiceRequest), [Specimen](https://hl7.org/fhir/R4/specimen.html#Specimen), [SupplyDelivery](https://hl7.org/fhir/R4/supplydelivery.html#SupplyDelivery), [SupplyRequest](https://hl7.org/fhir/R4/supplyrequest.html#SupplyRequest) e [Task](https://hl7.org/fhir/R4/task.html#Task).
