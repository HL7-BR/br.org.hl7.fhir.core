### Escopo/Uso

Este perfil define expectativas mínimas para o recurso Observation registrar, pesquisar e buscar dados sobre o consumo de álcool associados a um paciente. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores DEVEM estar presentes no recurso e restringe como os elementos são usados. Fornece a base para o desenvolvimento de padrões para casos de uso específicos promove a interoperabilidade e a adoção do recurso. 

### Uso indevido

O perfil [br-core-observationalcohooluse](StructureDefinition-br-core-observationalcoholuse.html) é projetado para documentar o uso de álcool na história social de um paciente, e seu uso deve ser adequado ao contexto clínico específico e não deve ser utilizado para registrar outros comportamentos de saúde.

### Caso de uso

Este perfil pode ser usado em diferentes contextos clínicos para garantir a interoperabilidade e a consistência na documentação do uso. Exemplos de caso de uso:
-	Consulta de Avaliação de Saúde: 
-	Documentar o uso de álcool durante uma consulta de avaliação geral de saúde.
-	Monitoramento de Pacientes Crônicos: 
-	Avaliar o impacto do uso de álcool em pacientes com condições crônicas.
-	Programas de Cessação de Álcool: 
-	Registrar a história de uso de álcool e acompanhar o progresso do paciente em programas de cessação.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

1.	**status:** status da observação
2.	**code:** Identifica o tipo de observação. No caso do uso de álcool, é comum utilizar um código LOINC apropriado, como 74013-4 para "Uso de álcool".
3.	**subject:** Referência ao paciente (indivíduo) para o qual a observação está sendo registrada.
4.	**effective[x]:** O período ou data efetiva em que a observação foi feita.
5.	**Data-absent-reason:** must support quando a informação sobre uso de álcool não estiverem presentes no registro do Sumário do Paciente

### Extensões

O perfil pode incluir extensões para adicionar informações adicionais, como a razão da ausência de dados (data-absent-reason).

### Limites e relacionamentos

Este perfil pode ser usado em conjunto com outros perfis FHIR, como o [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico.html) e o [br-core-composition](StructureDefinition-br-core-composition.html), para integrar informações de uso de álcool em resumos de pacientes.