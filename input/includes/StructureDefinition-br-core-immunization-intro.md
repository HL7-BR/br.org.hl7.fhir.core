### Escopo/Uso

O [br-core-immunization](https://saude.gov.br/fhir/StructureDefinition/br-core-immunization) tem como objetivo cobrir o registro da administração atual e histórica de vacinas a pacientes em todas as disciplinas de assistência médica em todos os ambientes de atendimento e todas as regiões. Isso inclui a imunização de humanos e animais, mas não inclui a administração de agentes não vacinais, mesmo aqueles que podem ter ou alegam ter efeitos imunológicos. Embora os termos "imunização" e "vacinação" não sejam clinicamente idênticos, para os propósitos dos recursos do FHIR, os termos são usados como sinônimos.

Além disso, espera-se que o recurso Immunization cubra conceitos-chave relacionados à criação, revisão e consulta do histórico de imunização de um paciente. Acredita-se que este recurso, por meio de consulta ao grupo de trabalho de Saúde Pública, atenda aos principais casos de uso e requisitos de informação, conforme definido no guia de implementação de imunização [HL7 V2](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=185), [HL7 V3](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=186) e Modelo de Análise de Domínio de Imunização.

### Caso de uso da RNDS

Na RNDS alguns elementos do [br-core-immunization](https://saude.gov.br/fhir/StructureDefinition/br-core-immunization) são considerados obrigatórios por conta das resoluções relacionadas ao Programa Nacional de Imunizações – PNI conforme pode ser consultado no [manual de normas e procedimentos](Manual%20de%20Normas%20e%20Procedimentos%20da%20Vacinação,%202a%20edicáo%202024%20-%20https:/www.gov.br/saude/pt-br/centrais-de-conteudo/publicacoes/guias-e-manuais/2024/manual-de-normas-e-procedimentos-para-vacinacao.pdf). 

Os registros de imunização estão registrados por duas compositions na RNDS: o [ImmunizationAdministrado](https://simplifier.net/redenacionaldedadosemsaude/structuredefinition-brimunobiologicoadministrado-3.0) na rotina e o [ImmunizationAdministradoCampanha](https://simplifier.net/redenacionaldedadosemsaude/structuredefinition-brimunobiologicoadministradocampanha-2.0), utilizando o [BRImunobiológicoAdministrado](https://simplifier.net/redenacionaldedadosemsaude/brimunobiologicoadministrado).

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support). Os elementos definidos como Must Support consideram a legislação do PNI.  

**Cada Perfil Immunization deve ter:**
1.	Status
2.	vaccineCode
3.	patient
4.	occurrence
5.	doseNumber

**Seguindo a legislação do PNI, cada Perfil Immunization deve oferecer suporte a:**
1.	status
2.	vaccineCode
3.	patient
4.	occurrence
5.	manufacturer
6.	manufacturer.identifier
7.	manufacturer.system
8.	manufacturer.value
9.	lotNumber
10.	site.coding 

**Orientações de implementação específicas do perfil**

O perfil [br-core-immunization](https://saude.gov.br/fhir/StructureDefinition/br-core-immunization) não deve ser utilizado para o registro de administração de imunobiológicos não relacionados à imunização, ou seja, que não são vacinas. Os imunobiológicos não imunizantes incluem produtos biológicos que não são administrados com o objetivo de proporcionar imunidade a uma doença específica, mas podem ter outras finalidades terapêuticas ou médicas, como a administração de soros. Estes são produtos imunobiológicos que contêm anticorpos específicos para neutralizar toxinas ou agentes infecciosos e são utilizados no tratamento de envenenamentos por picadas de animais peçonhentos ou em algumas infecções. Esse recurso também não deve ser utilizado no caso de administração de imunoglobulinas, que são imunoglobulinas utilizadas para tratar algumas infecções virais. O registro da administração desses imunobiológicos deve ser realizado no recurso [MedicationAdministration](https://hl7.org/fhir/R4/medicationadministration.html).

É importante distinguir entre imunobiológicos imunizantes (vacinas) e imunobiológicos não imunizantes, uma vez que têm finalidades e características diferentes. O registro e a documentação adequada desses produtos e tratamentos são essenciais para garantir a segurança e eficácia do tratamento do paciente.

### Limites e relacionamentos

A administração de vacinas deve ser manipulada usando o recurso [Immunization](https://hl7.org/fhir/R4/immunization.html). O recurso [MedicationAdministration](https://hl7.org/fhir/R4/medicationadministration.html) deve rastrear a administração de medicamentos não vacinais. Alguns sistemas tratam imunizações da mesma forma que qualquer outra administração de medicamentos. Esses sistemas devem usar um recurso de imunização para representá-los. Se os sistemas precisarem usar um recurso [MedicationAdministration](https://hl7.org/fhir/R4/medicationadministration.html) para capturar vacinações para fluxo de trabalho ou outros motivos, eles DEVEM também expor uma instância de [Immunization](https://hl7.org/fhir/R4/immunization.html) equivalente Immunization.reaction pode ser uma indicação de alergia ou intolerância. Se esse caso for considerado, uma instância de recurso [AllergyIntolerance](https://hl7.org/fhir/R4/allergyintolerance.html) separada deve ser criada para indicá-lo, pois a maioria dos sistemas não consultará o dado Immunization.reaction anterior.

Este recurso é referenciado por [AdverseEvent](https://hl7.org/fhir/R4/adverseevent.html#AdverseEvent), [ChargeItem](https://hl7.org/fhir/R4/chargeitem.html#ChargeItem), [ImmunizationEvaluation](https://hl7.org/fhir/R4/immunizationevaluation.html#ImmunizationEvaluation), [ImmunizationRecommendation](https://hl7.org/fhir/R4/ImmunizationRecommendation.html#ImmunizationRecommendation) e [Observation](https://hl7.org/fhir/R4/observation.html#Observation).