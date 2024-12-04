### Escopo/Uso

O perfil [br-core-observationpregnancyedd](https://saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancyedd) define os elementos e extensões necessários para registrar a data prevista do parto de uma paciente grávida. O perfil inclui campos para a data em que a data prevista do parto foi registrada e a data efetiva estimada, utiliza o elemento effectivePeriod para indicar o período durante o qual a data prevista do parto foi estimada.

**Uso:**
-	**Consulta da Data Prevista do Parto:** Permite que os sistemas de saúde consultem e obtenham a data prevista do parto de uma paciente de forma padronizada e interoperável.
-	**Atualização da Data Prevista do Parto:** Facilita a atualização da data prevista do parto em diferentes sistemas de prontuários eletrônicos (EHRs).

### Uso indevido

O perfil [br-core-observationpregnancyedd](https://saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancyedd) deve ser usado exclusivamente para registrar e gerenciar a data prevista do parto de uma paciente grávida e  não deve ser utilizado  em consultas ou procedimentos que não envolvem a saúde reprodutiva ou a gestação da paciente.

### Caso de uso

Utilizado por obstetras e outros profissionais de saúde para documentar a data prevista do parto durante as consultas de pré-natal. Ajuda no planejamento e agendamento de consultas, exames e intervenções necessárias ao longo da gestação.

Em casos de gestações de alto risco, a data prevista do parto é crítica para monitorar a saúde da mãe e do bebê, pois permite o acompanhamento rigoroso da evolução da gestação e a preparação para possíveis intervenções médicas.

O uso do perfil garante que todos os profissionais envolvidos no cuidado da gestante tenham acesso à data prevista do parto, melhorando a coordenação dos cuidados e contribui para a coleta de dados precisos sobre a duração da gestação e os resultados perinatais, ajudando a identificar tendências e necessidades de saúde pública.

Em programas de planejamento familiar, a data prevista do parto é usada para educar e preparar os futuros pais.


### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos de dados devem estar sempre presentes (definição obrigatória) ou devem ser suportados se os dados estiverem presentes no sistema de envio (definição de suporte obrigatório). Eles são apresentados abaixo em uma explicação simples e legível. Orientações e exemplos específicos do perfil também são fornecidos. As Visualizações Formais abaixo fornecem o resumo formal, as definições e os requisitos de terminologia.

Para o perfil [br-core-observationpregnancyedd](https://saude.gov.br/fhir/StructureDefinition/br-core-observationpregnancyedd) os elementos de dados que são obrigatórios (mandatórios) e os que devem ser suportados (must support) são:
1.	code: Código que identifica a observação como relacionada ao resultado da gestação.
2.	subject: Referência ao paciente (indivíduo) para o qual a observação está sendo registrada.
3.	subject. reference: Referência literal, URL relativa, interna ou absoluta
4.	effective[x]: O período ou data efetiva em que a observação foi feita.
5.	data-absent-reason: Motivo pelo qual algum dado está ausente, se aplicável.

Elementos apenas Must Support:
- value[x]:valueQuantity:  O Resultado real  da observação, como um código que representa o resultado da gestação (ex: nascimento vivo, natimorto).
- O elemento absentreason é must support se a informação sobre a data provável do parto não estiver registrada

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

Este perfil é específico para registrar a data prevista do parto e não deve ser usado para outras informações clínicas ou de saúde.

O perfil está diretamente relacionado ao recurso de [br-core-patient](https://saude.gov.br/fhir/StructureDefinition/br-core-patient.html), identificando a pessoa cujo status de gestação está sendo registrado. Relaciona-se também ao performer , que determinou ou registrou a data prevista do parto. Muitas vezes, a data prevista do parto é determinada durante um encontro clínico ([br-core-encounter](https://saude.gov.br/fhir/StructureDefinition/br-core-encounter.html)), e essa relação ajuda a contextualizar a observação dentro do atendimento contínuo ao paciente, podendo estar relacionado ao registro [br-core-condition](https://saude.gov.br/fhir/StructureDefinition/br-core-condition.html), para registrar condições de saúde específicas que influenciam a gestação e a data prevista do parto. Finalmente, este recurso pode estar associado a outras observações ou outros resultados de testes que influenciam a estimativa da data prevista do parto.
