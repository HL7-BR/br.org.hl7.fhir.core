### Escopo/Uso

Este perfil define expectativas mínimas para o recurso [Observation](https://hl7.org/fhir/R4/observation.html) registrar, pesquisar e buscar dados de status de tabagismo associados a um paciente. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes no recurso e restringe como os elementos são usados. Fornece a base para o desenvolvimento de padrões para casos de uso específicos promove a interoperabilidade e a adoção do recurso

### Uso indevido

O perfil [br-core-observationtobaccouse](StructureDefinition-br-core-observationtobaccouse.html) não deve ser usado para registrar informações sobre consumo de álcool ou uso de outras substâncias, mesmo que forem fumadas. Este perfil é específico para o uso de tabaco e deve ser usado apenas para esse propósito.

### Caso de uso

Este perfil pode ser usado em diferentes contextos clínicos para garantir a interoperabilidade e a consistência na documentação do uso. Exemplos de caso de uso:
-	**Consulta de Avaliação de Saúde:** durante uma consulta de avaliação geral de saúde, o médico pode utilizar o perfil para documentar o uso de tabaco do paciente., com o intuito de fornecer uma visão completa dos fatores de risco do paciente, ajudando na avaliação do estado geral de saúde e no planejamento de intervenções.
-	**Monitoramento de Pacientes Crônicos:** para pacientes com condições crônicas, como doenças cardiovasculares ou doenças pulmonares obstrutivas crônicas (DPOC), é crucial monitorar o uso de tabaco.
-	**Programas de Cessação de Tabaco:** profissionais de saúde que gerenciam programas de cessação de tabaco podem usar o perfil para registrar a história de uso de tabaco dos pacientes.
-	**Avaliação Pré-Operatória:** antes de procedimentos cirúrgicos, é importante documentar o uso de tabaco para avaliar riscos anestésicos e cirúrgicos.
-	**Consulta com Especialistas:** em consultas com especialistas, como cardiologistas ou pneumologistas, a documentação do uso de tabaco pode ser essencial para entender melhor os fatores de risco do paciente.
-	**Gestão de Saúde Pública:** Autoridades de saúde pública podem usar dados agregados do perfil para monitorar tendências de tabagismo na população, para desenvolver políticas de saúde pública e programas de intervenção baseados em dados epidemiológicos.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

O perfil [br-core-observationtobaccouse](StructureDefinition-br-core-observationtobaccouse.html) tem os seguintes elementos como obrigatórios: 
1.	**status:** status da observação
2.	**code:** Código que identifica a observação. No caso desse perfil se usa um código LOINC 72166-2 fixo para o uso de tabaco.
3.	**subject:** Referência ao paciente (indivíduo) para o qual a observação está sendo registrada.
4.	**effective[x]:** O período ou data efetiva em que a observação foi feita.

### Extensões

O perfil pode incluir extensões para adicionar informações adicionais, como a razão da ausência de dados (data-absent-reason).

### Limites e relacionamentos

Este perfil pode ser usado em conjunto com outros perfis FHIR, como o [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.html) e o [br-core-composition](StructureDefinition-br-core-composition.html), para integrar informações de uso de tabaco em resumos de pacientes.