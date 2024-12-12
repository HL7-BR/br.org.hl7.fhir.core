### Escopo/Uso

O Perfil [br-core-observationpregnancystatus](StructureDefinition-br-core-observationpregnancystatus.html) herda do recurso FHIR R4 [Observation](https://hl7.org/fhir/R4/observation.html) - consulte-o para obter definições de escopo e uso. Esse perfil atende aos requisitos do elemento de dados de Status de Gravidez do br-core. Ele define expectativas mínimas para o recurso de registrar, pesquisar e buscar a observação  do estado ou condição de gravidez da paciente. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores DEVEM estar presentes no recurso e restringe como os elementos são usados.  

### Uso indevido

Este perfil é irrelevante e não deve ser usado para pacientes masculinos, pois a gestação não se aplica a eles, assim como em crianças e adolescentes que não estão em período reprodutivo ou nos casos que o atendimento clínico não tem relação com a gestação, como consultas de rotina para gripe ou pequenas lesões.

### Caso de uso

1.	Consulta do estado de gravidez de um paciente
2.	Registrar ou atualizar  um estado de gravidez passado ou presente

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Para o perfil [br-core-observationpregnancystatus](StructureDefinition-br-core-observationpregnancystatus.html) os elementos de dados que são obrigatórios (mandatórios) e os que devem ser suportados (must support) são:
1.	**code:** Código que identifica a observação como relacionada ao resultado da gestação.
2.	**subject:** Referência ao paciente (indivíduo) para o qual a observação está sendo registrada.
3.	**subject.reference:** Referência literal, URL relativa, interna ou absoluta
4.	**effective[x]:** O período ou data efetiva em que a observação foi feita.
5.	**data-absent-reason:** Motivo pelo qual algum dado está ausente, se aplicável.
6.	**hasMember.reference:** Referência literal, URL relativa, interna ou absoluta

**Elementos apenas Must Support:**
1.	**value[x]:valueCodeableConcept:** Concept - reference to a terminology or just text
2.	**hasMember:**  Data provável do parto

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

O perfil está diretamente relacionado ao recurso de [br-core-patient](StructureDefinition-br-core-patient.html), identificando a pessoa cujo resultado de gestação está sendo registrado. Muitas vezes, o resultado da gestação é determinado durante um encounter (br-core-encounter), e essa relação ajuda a contextualizar a observação dentro do atendimento contínuo ao paciente.

Relaciona-se também aos profissionais de saúde ([br-core-practitioner](StructureDefinition-br-core-practitioner.html)) que realizaram o acompanhamento ou a determinação do resultado da gestação.

Pode estar relacionado a condições específicas de saúde que afetam ou são afetadas pela gestação, fornecendo contexto adicional para a observação, sendo relacionado ao perfil [br-core-condition](StructureDefinition-br-core-condition.html) e também pode estar associado a outras observações ou resultados de testes que influenciam a determinação do resultado da gestação.