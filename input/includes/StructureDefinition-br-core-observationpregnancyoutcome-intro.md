### Escopo/Uso

O perfil [br-core-observationpregnancyoutcome](StructureDefinition-br-core-observationpregnancyoutcome.html) ou **Histórico Obstétrico**, é utilizado para registrar e gerenciar informações sobre os resultados de gestações de uma paciente. Este perfil define os elementos e extensões necessários para documentar os resultados de gestações, como nascimento vivo.

Ele é utilizado para coletar dados de gestações e seus resultados, fornecendo informações importantes para a tomada de decisões clínicas, ajudando os médicos a planejar cuidados e intervenções apropriadas baseadas no histórico obstétrico da paciente.

### Uso indevido

O perfil é focado apenas em resultados de gestações, não sendo adequado para outras observações clínicas não relacionadas à gestação.

### Caso de uso

1.	Consulta do estado de gravidez de um paciente
2.	Registrar ou atualizar um estado de gravidez passado ou presente

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos de dados devem estar sempre presentes (definição obrigatória) ou devem ser suportados se os dados estiverem presentes no sistema de envio (definição de suporte obrigatório). Eles são apresentados abaixo em uma explicação simples e legível. Orientações e exemplos específicos do perfil também são fornecidos. As Visualizações Formais abaixo fornecem o resumo formal, as definições e os requisitos de terminologia.

Para o perfil [br-core-observationpregnancyoutcome](StructureDefinition-br-core-observationpregnancyoutcome.html) os elementos de dados que são obrigatórios (mandatórios) e os que devem ser suportados (must support) são:
1.	**code:** Código que identifica a observação como relacionada ao resultado da gestação.
2.	**subject:** Referência ao paciente (indivíduo) para o qual a observação está sendo registrada.
3.	**subject.reference:** Referência literal, URL relativa, interna ou absoluta
4.	**effective[x]:** O período ou data efetiva em que a observação foi feita.
5.	**data-absent-reason:** Motivo pelo qual algum dado está ausente, se aplicável.

**Elementos apenas Must Support:**
1.	**value[x]:valueQuantity:** O Resultado real  da observação, como um código que representa o resultado da gestação (ex: nascimento vivo, natimorto).


### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

Este perfil é específico para registrar o status de gestação, não sendo adequado para outras condições ou observações clínicas e tem utilização restrita a contextos onde a informação de gestação é relevante ou necessária, como em pacientes que estão em idade reprodutiva ou em procedimentos que envolvem a saúde reprodutiva.

Frequentemente, o status de gestação é determinado durante um Encounter, e essa relação ajuda a contextualizar a observação dentro do atendimento ao paciente.

Ele pode estar relacionado ao perfil Condition,  pois pode ser necessário para registrar condições específicas de saúde que afetam ou são afetadas pela gestação, fornecendo contexto adicional para a observação.
