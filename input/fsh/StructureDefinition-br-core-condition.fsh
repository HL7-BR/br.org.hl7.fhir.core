Profile: br-core-condition
Parent: ConditionBRIPS
Id: br-core-condition
Description: "Contém os dados relacionados à condição de saúde ou condição alvo do paciente avaliado."

* clinicalStatus obeys br-core-condition-con-3 and br-core-condition-con-4 and br-core-condition-con-5
* category 0..1
* category from http://www.saude.gov.br/fhir/r4/CodeSystem/BRCategoriaDiagnostico (required)
* subject only Reference(br-core-patient)
* recorder only Reference(br-core-patient or br-core-practitioner or br-core-practitioner-role or br-core-related-person)
* asserter only Reference(br-core-patient or br-core-practitioner or br-core-practitioner-role or br-core-related-person)
* stage 1..*

Invariant: br-core-condition-con-3
Description: "condition.clinicalStatus DEVE estar presente se condition.verificationStatus não for 'entered-in-error' e a categoria for problem-list-item"
Expression: "(verificationStatus.where(code != 'entered-in-error').exists() and category.where(code = 'problem-list-item').exists()) implies clinicalStatus.exists()"
Severity: #error
XPath: "not(exists(f:verificationStatus[f:code/@value='entered-in-error']) and exists(f:category[f:code/@value='problem-list-item'])) or exists(f:clinicalStatus)"

Invariant: br-core-condition-con-4
Description: "Se condition for 'abated', clinicalStatus deve ser 'inactive', 'resolved' ou 'remission' "
Expression: "(abatement.exists()) implies (clinicalStatus.exists() and clinicalStatus.coding.where(code in ('inactive', 'resolved', 'remission')).exists())"
Severity: #error
XPath: "not(exists(f:abatement)) or (exists(f:clinicalStatus) and exists(f:clinicalStatus/f:coding[f:code/@value=('inactive', 'resolved', 'remission')]))"

Invariant: br-core-condition-con-5
Description: "Condition.clinicalStatus NÃO DEVE estar presente se verificationStatus for 'entered-in-error' "
Expression: "(verificationStatus.coding.where(code = 'entered-in-error').exists()) implies clinicalStatus.empty()"
Severity: #error
XPath: "not(exists(f:verificationStatus/f:coding[f:code/@value='entered-in-error'])) or not(exists(f:clinicalStatus))"