### Escopo/Uso

Este perfil define expectativas mínimas para o recurso Observation registrar, pesquisar e buscar dados sobre a amamentação associados a um paciente. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores DEVEM estar presentes no recurso e restringe como os elementos são usados. Fornece a base para o desenvolvimento de padrões para casos de uso específicos, promovendo a interoperabilidade e a adoção do recurso.

### Uso indevido

Esse recurso é específico para o registro do tipo de aleitamento do paciente nos seus primeiros anos de vida, não devendo ser utilizado em outras observações que não envolvam a amamentação.

### Caso de uso

Este perfil pode ser usado em diferentes contextos clínicos para garantir a interoperabilidade e a consistência na documentação do uso. Exemplos de caso de uso:
-	Consulta de Avaliação de Saúde de Puericultura
    -	Documentar a amamentação durante uma consulta de avaliação geral de saúde.
-	Monitoramento de Pacientes Pediátricos
-	Avaliar o impacto da amamentação em pacientes pediátricos.
-	Programas de Promoção do Aleitamento Materno
-	Registrar a história de amamentação e acompanhar o progresso do paciente em programas de promoção da amamentação.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

1.	**status:** status da observação
2.	**code:** Identifica o tipo de observação. No caso da amamentação, é comum utilizar um código LOINC apropriado, como 74012-6 para "Amamentação".
3.	**subject:** Referência ao paciente (indivíduo) para o qual a observação está sendo registrada.
4.	**effective[x]:** O período ou data efetiva em que a observação foi feita.
5.	**value[x].valueCodeableConcept:** para registrar o tipo de aleitamento, usando o VS BRTipoaleitamentomaterno
6.	**Data-absent-reason:** must support quando a informação sobre amamentação não estiver presente no registro do Sumário do Paciente.


### Extensões

O perfil pode incluir extensões para adicionar informações adicionais, como a razão da ausência de dados (data-absent-reason).

### Limites e relacionamentos

Este perfil pode ser usado em conjunto com outros perfis FHIR, como o [br-core-registroatendimentoclinico](StructureDefinition-br-core-registroatendimentoclinico) e o [br-core-composition](StructureDefinition-br-core-composition), para integrar informações de amamentação em resumos de pacientes.