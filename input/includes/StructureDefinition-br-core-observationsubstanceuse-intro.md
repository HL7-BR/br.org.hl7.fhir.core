### Escopo/Uso

Este perfil registra o uso de uma substância e a frequência de uso nos últimos 3 meses. É a estrutura do modelo de informação do Registro de Atendimento Clínico (RAC): substância e frequência, em uma observação por substância. Cobre álcool, tabaco e as demais substâncias do ValueSet BRTipoSubstanciaUso.

- `code`: a substância.
- `valueCodeableConcept`: a frequência nos últimos 3 meses.
- `effective[x]`: a data da avaliação ou o período avaliado.

### Uso indevido

Não usar `effectiveTiming` para a frequência, como faz o perfil BRMedidaObservada da RNDS. A frequência é o resultado da observação e vai no valor.

### Relação com os perfis de álcool e tabaco

O [br-core-observationalcoholuse](StructureDefinition-br-core-observationalcoholuse.html) (LOINC 74013-4, doses por dia) e o [br-core-observationtobaccouse](StructureDefinition-br-core-observationtobaccouse.html) (LOINC 72166-2, situação tabágica) seguem os perfis do IPS e medem outra coisa: quantidade e situação, não frequência em 3 meses. Continuam disponíveis para o sumário do paciente.

| Registro | Perfil |
| --- | --- |
| Frequência de uso nos últimos 3 meses, qualquer substância | br-core-observationsubstanceuse |
| Doses de álcool por dia | br-core-observationalcoholuse |
| Situação tabágica (fumante, ex-fumante, nunca fumou) | br-core-observationtobaccouse |

### Terminologia

O BRTipoSubstanciaUso e o BRFreqUsoSubstancia ficam no OCL e no pacote de terminologia. Mapeamentos da substância para SNOMED CT entram como coding adicional em `code`.
