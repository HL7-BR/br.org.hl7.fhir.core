Profile: BRCoreCondition
Parent: http://hl7.org/fhir/StructureDefinition/Condition
Id: br-core-condition
Description: "Este perfil representa as restrições aplicadas ao recurso FHIR R4 [Condition](http://hl7.org/fhir/R4/condition.html)."

* id ^short = "Identificador lógico deste artefato"
* id ^definition = "Identificador lógico deste artefato"
* meta ^short = "Metadados sobre o recurso"
* meta ^definition = "Metadados sobre o recurso"
* implicitRules ^short = "URI(s) sob as quais este recurso é conhecido"
* implicitRules ^definition = "Um ou mais códigos que servem para identificar o tipo de recurso"
* language ^short = "Idioma do recurso"
* language ^definition = "Idioma do recurso"
* text ^short = "Texto de 72 caracteres para resumo"
* text ^definition = "Um texto resumindo as informações do recurso"
* contained ^short = "Recursos contidos"
* contained ^definition = "Recursos contidos no recurso"
* extension ^short = "Extensões adicionais"
* extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* modifierExtension ^short = "Extensões adicionais que não podem ser ignoradas"
* modifierExtension ^definition = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
* identifier ^short = "Identificadores externos para este recurso"
* identifier ^definition = "Identificadores externos para este recurso"
* clinicalStatus ^short = "O status clínico da condição ou do diagnóstico"
* clinicalStatus ^definition = "O status clínico da condição ou do diagnóstico"
//* clinicalStatus obeys br-core-condition-con-3 and br-core-condition-con-4 and br-core-condition-con-5
* verificationStatus ^short = "O status de verificação para apoiar ou recusar o status clínico da condição ou do diagnóstico"
* verificationStatus ^definition = "unconfirmed | provisional | differential | confirmed | refuted | entered-in-error" 
* category ^short = "Categoria da condição" 
* category ^definition = "Categoria da condição"
* category 0..1
* category from https://terminologia.saude.gov.br/fhir/ValueSet/BRCategoriaDiagnostico (required)
* severity ^short = "Severidade da condição" 
* severity ^definition = "Severidade da condição" 
* bodySite ^short = "Local anatômico da condição, se relevante" 
* bodySite ^definition = "Local anatômico da condição, se relevante" 
* code ^short = "Suspeita Diagnóstica"
* code ^definition = "Identifica a suspeita diagnóstica com relação à condição de saúde avaliada."
* stage 1..*
* subject ^short = "Indivíduo com a Condição de Saúde avaliada"
* subject ^definition = "Referencia os dados sobre o indivíduo cuja a condição de saúde está sendo avaliada."
* subject only Reference(br-core-patient)
* subject.id ^short = "Identificador único para referenciação cruzada"
* subject.id ^definition = "Identificador único para referenciação cruzada"
* subject.extension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* subject.extension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* subject.reference ^short = "Referência literal. URL relativa, interna ou externa"
* subject.reference ^definition = "Referência literal. URL relativa, interna ou externa"
* subject.type ^short = "Tipo de recurso ao qual a referência é feita"
* subject.type ^definition = "Tipo de recurso ao qual a referência é feita"
* subject.identifier ^short = "Referência lógica, quando a referência literal não é conhecida"
* subject.identifier ^definition = "Referência lógica, quando a referência literal não é conhecida"
* subject.display ^short = "Texto alternativo para o recurso"
* subject.display ^definition = "Texto alternativo para o recurso"
* encounter ^short = "Referência ao atendimento no qual a condição foi diagnosticada"
* encounter ^definition = "Referência ao atendimento no qual a condição foi diagnosticada"
* encounter only Reference(br-core-encounter)
* onset[x] ^short = "Data ou idade estimada ou real do começo dos sintomas"
* onset[x] ^definition = "Data ou idade estimada ou real do começo dos sintomas"
* abatement[x] ^short = "Data ou idade estimada ou real em que o diagnóstico foi resolvido ou entrou em remissão"
* abatement[x] ^definition = "Data ou idade estimada ou real em que o diagnóstico foi resolvido ou entrou em remissão"
* recordedDate ^short = "Data na qual o registro foi registrado pela primeira vez"
* recordedDate ^definition = "Data na qual o registro foi registrado pela primeira vez"
* recorder ^short = "Quem registrou a condição"
* recorder ^definition = "Quem registrou a condição"
* recorder only Reference(br-core-patient or br-core-practitioner or br-core-practitionerrole or br-core-relatedperson)
* asserter ^short = "Pessoa que afirma a condição"
* asserter ^definition = "Pessoa que afirma a condição"
* asserter only Reference(br-core-patient or br-core-practitioner or br-core-practitionerrole or br-core-relatedperson)
* stage ^short = "Estágio/grau da condição, geralmente avaliado formalmente"
* stage ^definition = "Estágio/grau da condição, geralmente avaliado formalmente"
* stage.id ^short = "Identificador único para referenciação cruzada"
* stage.id ^definition = "Identificador único para referenciação cruzada"
* stage.extension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* stage.extension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* stage.modifierExtension ^short = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
* stage.modifierExtension ^definition = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
* stage.summary ^short = "Sumário simples (específico à condição)"
* stage.summary ^definition = "Códigos descrevendo estágios da condição (por exemplo, estágios de câncer)"
* stage.assessment ^short = "Registro formal da avaliação"
* stage.assessment ^definition = "Referência aos dados de diagnóstico de laboratório clínico relacionados à suspeita diagnóstica."
* stage.assessment only Reference(ClinicalImpression or br-core-diagnosticreport or br-core-observation)
* stage.type ^short = "Tipo do estadiamento"
* stage.type ^definition = "Códigos que descrevem  o tipo do estadiamento (por exemplo, clínico ou patológico)"
* evidence ^short = "Evidências de apoio ao diagnóstico"
* evidence ^definition = "Evidências de apoio ao diagnóstico"
* evidence.id ^short = "Identificador único para referenciação cruzada"
* evidence.id ^definition = "Identificador único para referenciação cruzada"
* evidence.extension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* evidence.extension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico"
* evidence.modifierExtension ^short = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
* evidence.modifierExtension ^definition = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
* evidence.code ^short =  "Manifestação/sintoma"
* evidence.code ^definition = "Códigos que descrevem a manifestação ou sintomas de uma condição"
* evidence.detail ^short = "Referência à informações de apoio"
* evidence.detail ^definition = "Referência à informações de apoio"
* evidence.detail only Reference(Resource)
* note ^short = "Informações adicionais sobre a condição"
* note ^definition = "Informações adicionais sobre a condição"

/* Revisar regra
Invariant: br-core-condition-con-3
Description: "condition.clinicalStatus DEVE estar presente se condition.verificationStatus não for 'entered-in-error' e a categoria for problem-list-item"
Expression: "(condition.verificationStatus.where(code != 'entered-in-error').exists() and condition.category.where(code = 'problem-list-item').exists()) implies condition.clinicalStatus.exists()"
Severity: #error
XPath: "not(exists(f:verificationStatus[f:code/@value='entered-in-error']) and exists(f:category[f:code/@value='problem-list-item'])) or exists(f:clinicalStatus)"

Invariant: br-core-condition-con-4
Description: "Se condition for 'abated', clinicalStatus deve ser 'inactive', 'resolved' ou 'remission' "
Expression: "(abatement.exists()) implies (condition.clinicalStatus.exists() and condition.clinicalStatus.coding.where(code in ('inactive', 'resolved', 'remission')).exists())"
Severity: #error
XPath: "not(exists(f:abatement)) or (exists(f:clinicalStatus) and exists(f:clinicalStatus/f:coding[f:code/@value=('inactive', 'resolved', 'remission')]))"

Invariant: br-core-condition-con-5
Description: "Condition.clinicalStatus NÃO DEVE estar presente se verificationStatus for 'entered-in-error' "
Expression: "(condition.verificationStatus.coding.where(code = 'entered-in-error').exists()) implies condition.clinicalStatus.empty()"
Severity: #error
XPath: "not(exists(f:verificationStatus/f:coding[f:code/@value='entered-in-error'])) or not(exists(f:clinicalStatus))"
*/