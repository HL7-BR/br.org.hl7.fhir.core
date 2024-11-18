### Cenários de uso:

Este recurso deve ser utilizado para registros de avaliação clínica de uma alergia ou intolerância; uma propensão ou um risco potencial para um indivíduo de ter uma reação adversa em uma exposição futura à substância especificada, ou classe de substância.

Quando uma propensão for identificada, deve-se registrar informações ou evidências sobre um evento de reação que seja caracterizado por qualquer resposta fisiológica prejudicial ou indesejável que seja específica do indivíduo e desencadeada pela exposição de um indivíduo à substância ou classe de substância identificada.

As substâncias incluem, mas não estão limitadas a: uma substância terapêutica administrada corretamente em uma dosagem apropriada para o indivíduo; alimentos; material derivado de plantas ou animais; ou veneno de picadas de insetos.

Alguns exemplos de cenários de uso para este perfil são:
-	Consultar alergias e intolerâncias de um paciente.
-	Registrar ou atualizar a alergia ou a intolerância de um paciente.

### Elementos de dados obrigatórios e que devem estar presentes (Must Support)

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support). 

**Cada AllergyIntolerance  deve ter:**
1.	um paciente
2.	um estado clínico da alergia (por exemplo, ativa ou resolvida) 
3.	um código que informa a que o paciente é alérgico

**Cada AllergyIntolerance  deve oferecer suporte a:**
1.	o tipo da reação;
2.	o código;
3.	a reação - eventos de reação adversa relacionados à exposição da substância;
4.	o código para a manifestação de reação de alergia ou intolerância do subconjunto SNOMED uma manifestação de reação;
5.	a severidade.

### Orientações de implementação específicas do perfil

Se o paciente não for questionado sobre suas alergias o status da verificação da alergia (br-core.allergyintolerance.verificationStatus) deve ser representado como “não confirmado”.

### Limites e relacionamentos

Este recurso é usado para fornecer um único local dentro do registro de saúde para documentar declarações clínicas sobre reações adversas a substâncias/produtos, incluindo:
-   registrar uma avaliação clínica da propensão do paciente a uma potencial reação futura após reexposição;
-   registrar informações cumulativas sobre a reação a cada exposição, incluindo "nenhuma reação", se apropriado.

Use para registrar informações sobre a presença positiva do risco de uma reação adversa:
-   para apoiar o atendimento clínico direto de um indivíduo;
-	como parte de uma lista de reações adversas ou alergias/intolerâncias controladas;
-	para apoiar a troca de informações sobre a propensão e eventos relacionados a reações adversas;
-	para informar relatórios de reações adversas;
-	para auxiliar atividades informatizadas baseadas em conhecimento, como suporte à decisão clínica e alertas.

Use para registrar informações sobre reações adversas a uma ampla gama de substâncias, incluindo: produtos biológicos e sanguíneos; incipientes e excipientes em preparações medicinais; alimentos; sais metálicos; e compostos químicos orgânicos.
