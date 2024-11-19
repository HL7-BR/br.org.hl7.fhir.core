### Escopo e uso

O perfil [br-core-practitioner](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner.html) abrange o registro da localização e dos tipos de serviços que os profissionais podem fornecer para uma organização.

Se necessário, os elementos role, specialty, location, telecom e healthcareService podem ser repetidos em outras instâncias do [br-core-practitioner](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner.html), caso o profissional exerça atividades em mais de uma organização. Alguns sistemas registram uma coleção de valores de serviço para um único local, outros registram o serviço único e a lista de locais em que ele está disponível.  Ambas são opções aceitáveis para representar esses dados. 

É importante notar que, se a disponibilidade, telecom ou outros detalhes não são os mesmos em todos os serviços de saúde ou locais, deve ser criada uma instância [br-core-practitioner](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner.html) separada.

### Cenários de uso

O profissional pode desempenhar diferentes papeis dentro de uma ou mais organizações. A depender da jurisdição, pode ser necessário manter um recurso Profissional específico para cada função ou ter um único Profissional com várias funções. A função pode ser limitada a um período específico, após o qual a autorização para esta função termina. Observe que a organização representada não precisa necessariamente ser o empregador (direto) de um Profissional.  

### Caso de uso da RNDS

Na RNDS utiliza-se a CBO – Classificação Brasileira de Ocupações para caracterizar o papel (role) do profissional na organização.

### Elementos de dados obrigatórios e que devem estar presentes (Must Support)

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support). 

**Cada PractitionerRole (função do profissional) deve ter:**
1.	Nome do profissional

**Cada PractitionerRole (função do profissional) deve oferecer suporte a:**
1.	Uma organização associada
2.	Um profissional associado
3.	Um papel
4.	Uma especialidade
5.	Um local associado
6.	Informações de contato
7.	Um endpoint de comunicação

**Orientações de implementação específicas do perfil**

### Limites e relacionamentos

As qualificações do recurso [br-core-practitioner](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner.html) não implicam uma função, mas podem ser consideradas quando uma organização aloca profissionais para funções dentro de sua organização e podem fornecer informações úteis (como informações de expiração) que podem precisar ser rastreadas em algumas situações para garantir que eles continuem qualificados para uma função específica.

O recurso [CareTeam](https://hl7.org/fhir/R4/careteam.html#CareTeam) também é frequentemente usado para fornecer detalhes de uma função que um profissional é alocado para desempenhar, mas geralmente é limitado a uma granularidade muito mais fina de cuidados e, frequentemente, dentro do contexto específico de um Paciente ou função funcional (por exemplo, equipe de planejamento de crise). Em contraste, o perfil [br-core-practitioner](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner.html) é utilizado em um sentido mais geral para cobrir todos os lugares em que o profissional é alocado para trabalhar (e detalhes específicos relevantes para essa função - como um número de contato específico ou ponto final de serviços eletrônicos).