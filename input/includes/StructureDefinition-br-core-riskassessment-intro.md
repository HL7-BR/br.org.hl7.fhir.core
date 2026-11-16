### Escopo/Uso

Este perfil é utilizado para registrar a avaliação do risco de um desfecho para um paciente ou para um grupo de pacientes. A avaliação informa o desfecho previsto (por exemplo, internação, evolução para forma grave, óbito), a probabilidade de que ocorra e, quando houver, o método, escore ou instrumento usado para chegar a ela.

A probabilidade pode ser expressa como número ou faixa em `prediction.probability[x]` ou de forma qualitativa em `prediction.qualitativeRisk`. Para a forma qualitativa, o perfil sugere (binding example) o ValueSet HL7 [risk-probability](http://hl7.org/fhir/R4/valueset-risk-probability.html), com os códigos negligible, low, moderate, high e certain do CodeSystem `http://terminology.hl7.org/CodeSystem/risk-probability`. Um guia derivado pode restringir esse conjunto, por exemplo, apenas a low, moderate e high.

### Uso indevido

O recurso RiskAssessment não deve ser utilizado para registrar o resultado de um escore ou questionário quando não há previsão de desfecho. Nesse caso, o resultado é uma [br-core-observation](StructureDefinition-br-core-observation.html). Também não deve ser usado para registrar a condição de saúde em si, que é uma [br-core-condition](StructureDefinition-br-core-condition.html).

### Caso de uso

Classificação de risco de um paciente durante um atendimento, para apoiar a decisão clínica e a priorização do cuidado. O exemplo deste guia registra o risco moderado de evolução para forma grave em um paciente com infecção por coronavírus, avaliado no atendimento ambulatorial.

### Referências

Este perfil referencia [br-core-patient](StructureDefinition-br-core-patient.html) ou Group, [br-core-encounter](StructureDefinition-br-core-encounter.html), [br-core-condition](StructureDefinition-br-core-condition.html), [br-core-practitioner](StructureDefinition-br-core-practitioner.html), [br-core-practitionerrole](StructureDefinition-br-core-practitionerrole.html), [br-core-observation](StructureDefinition-br-core-observation.html) e [br-core-diagnosticreport](StructureDefinition-br-core-diagnosticreport.html).

### Extensões

Este perfil não possui extensões.
