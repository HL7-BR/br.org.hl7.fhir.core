Profile: BRCoreOrganization
Parent: http://hl7.org/fhir/StructureDefinition/Organization
Id: br-core-organization
Description: "Este perfil representa um agrupamento formal ou informal reconhecido de pessoas ou organizações com o propósito de alcançar alguma forma de ação coletiva. Inclui empresas, instituições, corporações, departamentos, grupos comunitários, grupos de práticas de saúde, planos de saúde, empresas fabricantes de produtos medicinais, entre outros."

* id ^short = "ID lógico deste artefato"
* id ^definition = "ID lógico deste artefato"
* meta ^short = "Metadados sobre o recurso"
* meta ^definition = "Metadados sobre o recurso"
* implicitRules ^short = "Conjunto de regras sob as quais este conteúdo foi criado"
* implicitRules ^definition = "Conjunto de regras sob as quais este conteúdo foi criado"
* language ^short = "Linguagem do recurso" 
* language ^definition = "A linguagem humana natural do recurso"
* text ^short = "Texto narrativo"
* text ^definition = "Um texto narrativo resumindo as informações do recurso"
* contained ^short = "Recursos contidos"
* contained ^definition = "Recursos contidos no recurso"
* extension ^short = "Extenções adicionais"
* extension ^definition = "Conteúdo adicional definido por implementações"
* modifierExtension ^short = "Extensões adicionais"
* modifierExtension ^definition = "Extensões que não podem ser ignoradas"
* identifier ^short = "Nome da organização nacional"
* identifier ^definition = "Identifica esta organização em vários sistemas"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identificadores nacionais do estabelecimento"
* identifier 1..*
* identifier contains
    cnes 0..1 and
    cpf 0..1 and
    cnpj 0..1
    
* identifier[cnes] ^short = "Identificador do estabelecimento"
* identifier[cnes] ^definition = "Identificador do estabelecimento"
* identifier[cnes].id ^short = "Id lógico do identificador do estabelecimento"
* identifier[cnes].id ^definition = "Id lógico do identificador do estabelecimento"
* identifier[cnes].extension ^short = "Extensões do identificador do estabelecimento"
* identifier[cnes].extension ^definition = "Extensões incluídas no identificador do estabelecimento"
* identifier[cnes].use ^short = "Uso do identificador do estabelecimento"
* identifier[cnes].use ^definition = "usual: identificador usual do estabelecimento. official: identificador oficial do estabelecimento. temp: identificador temporário do estabelecimento. secondary: identificador secundário do estabelecimento."
* identifier[cnes].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[cnes].type ^short = "Tipo do identificador do estabelecimento"
* identifier[cnes].type ^definition = "Código que representa o tipo do identificador do estabelecimento"
* identifier[cnes].type ^binding.description = "Tipo do identificador do estabelecimento"
* identifier[cnes].type ^binding.strength = #required
* identifier[cnes].type ^binding.valueSet = http://hl7.org/fhir/ValueSet/identifier-type
* identifier[cnes].type.id ^short = "Id lógico do tipo do identificador do estabelecimento"
* identifier[cnes].type.id ^definition = "Id lógico do tipo do identificador do estabelecimento"
* identifier[cnes].type.extension ^short = "Extensões do tipo do identificador do estabelecimento"
* identifier[cnes].type.extension ^definition = "Extensões incluídas no tipo do identificador do estabelecimento"
* identifier[cnes].type.coding 1..1
* identifier[cnes].type.coding ^short = "Codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding ^definition = "Codificação que representa o tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.id ^short = "Id lógico da codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.extension ^short = "Extensões da codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.system 1..1
* identifier[cnes].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[cnes].type.coding.system ^short = "Sistema da codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.version ^short = "Versão da codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.version ^definition = "Versão da codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.code 1..1
* identifier[cnes].type.coding.code = http://terminology.hl7.org/CodeSystem/v2-0203#PRN (exactly)
* identifier[cnes].type.coding.code ^short = "Código da codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.display ^short = "Texto da codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador do estabelecimento"
* identifier[cnes].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador do estabelecimento foi selecionada pelo usuário"
* identifier[cnes].type.text ^short = "Texto do tipo do identificador do estabelecimento"
* identifier[cnes].type.text ^definition = "Texto que representa o tipo do identificador do estabelecimento"
* identifier[cnes].system 1..1
* identifier[cnes].system ^short = "Sistema do identificador do estabelecimento"
* identifier[cnes].system ^definition = "Sistema que identifica o tipo do identificador do estabelecimento"
* identifier[cnes].system = "https://saude.gov.br/sid/cnes" (exactly)
* identifier[cnes].value 1..1
* identifier[cnes].value ^short = "Valor do identificador do estabelecimento"
* identifier[cnes].value ^definition = "Valor do identificador do estabelecimento"
* identifier[cnes].period ^short = "Período de uso do identificador do estabelecimento"
* identifier[cnes].period ^definition = "Período de tempo durante o qual o identificador do estabelecimento foi utilizado"
* identifier[cnes].assigner ^short = "Entidade que atribuiu o identificador do estabelecimento"
* identifier[cnes].assigner ^definition = "Entidade que atribuiu o identificador do estabelecimento"
* identifier[cnes].assigner only Reference(br-core-organization)
* identifier[cnes].assigner.display ^short = "Nome da entidade que atribuiu o identificador do estabelecimento"

* identifier[cpf] ^short = "Identificador do estabelecimento"
* identifier[cpf] ^definition = "Identificador do estabelecimento"
* identifier[cpf].id ^short = "Id lógico do identificador do estabelecimento"
* identifier[cpf].id ^definition = "Id lógico do identificador do estabelecimento"
* identifier[cpf].extension ^short = "Extensões do identificador do estabelecimento"
* identifier[cpf].extension ^definition = "Extensões incluídas no identificador do estabelecimento"
* identifier[cpf].use ^short = "Uso do identificador do estabelecimento"
* identifier[cpf].use ^definition = "usual: identificador usual do estabelecimento. official: identificador oficial do estabelecimento. temp: identificador temporário do estabelecimento. secondary: identificador secundário do estabelecimento."
* identifier[cpf].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[cpf].type ^short = "Tipo do identificador do estabelecimento"
* identifier[cpf].type ^definition = "Código que representa o tipo do identificador do estabelecimento"
* identifier[cpf].type ^binding.description = "Tipo do identificador do estabelecimento"
* identifier[cpf].type ^binding.strength = #required
* identifier[cpf].type ^binding.valueSet = http://hl7.org/fhir/ValueSet/identifier-type
* identifier[cpf].type.id ^short = "Id lógico do tipo do identificador do estabelecimento"
* identifier[cpf].type.id ^definition = "Id lógico do tipo do identificador do estabelecimento"
* identifier[cpf].type.extension ^short = "Extensões do tipo do identificador do estabelecimento"
* identifier[cpf].type.extension ^definition = "Extensões incluídas no tipo do identificador do estabelecimento"
* identifier[cpf].type.coding 1..1
* identifier[cpf].type.coding ^short = "Codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding ^definition = "Codificação que representa o tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.id ^short = "Id lógico da codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.extension ^short = "Extensões da codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.system 1..1
* identifier[cpf].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[cpf].type.coding.system ^short = "Sistema da codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.version ^short = "Versão da codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.version ^definition = "Versão da codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.code 1..1
* identifier[cpf].type.coding.code ^short = "Código da codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.display ^short = "Texto da codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador do estabelecimento"
* identifier[cpf].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador do estabelecimento foi selecionada pelo usuário"
* identifier[cpf].type.text ^short = "Texto do tipo do identificador do estabelecimento"
* identifier[cpf].type.text ^definition = "Texto que representa o tipo do identificador do estabelecimento"
* identifier[cpf].system 1..1
* identifier[cpf].system ^short = "Sistema do identificador do estabelecimento"
* identifier[cpf].system ^definition = "Sistema que identifica o tipo do identificador do estabelecimento"
* identifier[cpf].system = "https://terminologia.saude.gov.br/fhir/NamingSystem/cpf" (exactly) //
* identifier[cpf].value 1..1
* identifier[cpf].value ^short = "Valor do identificador do estabelecimento"
* identifier[cpf].value ^definition = "Valor do identificador do estabelecimento"
* identifier[cpf].period ^short = "Período de uso do identificador do estabelecimento"
* identifier[cpf].period ^definition = "Período de tempo durante o qual o identificador do estabelecimento foi utilizado"
* identifier[cpf].assigner ^short = "Entidade que atribuiu o identificador do estabelecimento"
* identifier[cpf].assigner ^definition = "Entidade que atribuiu o identificador do estabelecimento"
* identifier[cpf].assigner only Reference(br-core-organization)
* identifier[cpf].assigner.display ^short = "Nome da entidade que atribuiu o identificador do estabelecimento"

* identifier[cnpj] ^short = "Identificador do estabelecimento"
* identifier[cnpj] ^definition = "Identificador do estabelecimento"
* identifier[cnpj].id ^short = "Id lógico do identificador do estabelecimento"
* identifier[cnpj].id ^definition = "Id lógico do identificador do estabelecimento"
* identifier[cnpj].extension ^short = "Extensões do identificador do estabelecimento"
* identifier[cnpj].extension ^definition = "Extensões incluídas no identificador do estabelecimento"
* identifier[cnpj].use ^short = "Uso do identificador do estabelecimento"
* identifier[cnpj].use ^definition = "usual: identificador usual do estabelecimento. official: identificador oficial do estabelecimento. temp: identificador temporário do estabelecimento. secondary: identificador secundário do estabelecimento."
* identifier[cnpj].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[cnpj].type ^short = "Tipo do identificador do estabelecimento"
* identifier[cnpj].type ^definition = "Código que representa o tipo do identificador do estabelecimento"
* identifier[cnpj].type ^binding.description = "Tipo do identificador do estabelecimento"
* identifier[cnpj].type ^binding.strength = #required
* identifier[cnpj].type ^binding.valueSet = http://hl7.org/fhir/ValueSet/identifier-type
* identifier[cnpj].type.id ^short = "Id lógico do tipo do identificador do estabelecimento"
* identifier[cnpj].type.id ^definition = "Id lógico do tipo do identificador do estabelecimento"
* identifier[cnpj].type.extension ^short = "Extensões do tipo do identificador do estabelecimento"
* identifier[cnpj].type.extension ^definition = "Extensões incluídas no tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding 1..1
* identifier[cnpj].type.coding ^short = "Codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding ^definition = "Codificação que representa o tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.id ^short = "Id lógico da codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.extension ^short = "Extensões da codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.system 1..1
* identifier[cnpj].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[cnpj].type.coding.system ^short = "Sistema da codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.version ^short = "Versão da codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.version ^definition = "Versão da codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.code 1..1
* identifier[cnpj].type.coding.code ^short = "Código da codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.display ^short = "Texto da codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador do estabelecimento"
* identifier[cnpj].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador do estabelecimento foi selecionada pelo usuário"
* identifier[cnpj].type.text ^short = "Texto do tipo do identificador do estabelecimento"
* identifier[cnpj].type.text ^definition = "Texto que representa o tipo do identificador do estabelecimento"
* identifier[cnpj].system 1..1
* identifier[cnpj].system ^short = "Sistema do identificador do estabelecimento"
* identifier[cnpj].system ^definition = "Sistema que identifica o tipo do identificador do estabelecimento"
* identifier[cnpj].system = "https://terminologia.saude.gov.br/fhir/NamingSystem/cnpj" (exactly)  
* identifier[cnpj].value 1..1
* identifier[cnpj].value ^short = "Valor do identificador do estabelecimento"
* identifier[cnpj].value ^definition = "Valor do identificador do estabelecimento"
* identifier[cnpj].period ^short = "Período de uso do identificador do estabelecimento"
* identifier[cnpj].period ^definition = "Período de tempo durante o qual o identificador do estabelecimento foi utilizado"
* identifier[cnpj].assigner ^short = "Entidade que atribuiu o identificador do estabelecimento"
* identifier[cnpj].assigner ^definition = "Entidade que atribuiu o identificador do estabelecimento"
* identifier[cnpj].assigner only Reference(br-core-organization)
* identifier[cnpj].assigner.display ^short = "Nome da entidade que atribuiu o identificador do estabelecimento"

* active ^short = "Estabelecimento de Saúde ainda está em ativo." 
* active ^definition = "Se o Estabelecimento de Saúde ainda está em ativo."
* type 1..*
* type ^short = "Tipo do Estabelecimento de saúde"
* type ^definition = "Classificação do Estabelecimento de Saúde de acordo com um conjunto de dimensões."
//* type from https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoEstabelecimentoSaude
* name 1..1
* name ^short = "Nome usado para a organização"
* name ^definition = "Nome do Estabelecimento de saúde"
* alias 1..1
* alias ^short = "Nome Empresarial"
* alias ^definition = "Firma ou denominação adotada para o exercício da instituição/entidade/órgão/empresa."
* telecom ^short = "Meio de contato" 
* telecom ^definition = "Informações do(s) meio(s) de contato com o Estabelecimento de Saúde."
* address 1..1
* address ^short = "Dados de Endereçamento"
* address ^definition = "Dados do endereço onde o Estabelecimento de Saúde é localizado."
* partOf ^short = "CPF/CNPJ do Estabelecimento/Mantenedora"
* partOf ^definition = "Pessoa Física (CPF) ou Jurídica (CNPJ) proprietária do Estabelecimento de Saúde."
* partOf 1..1
* partOf only Reference(br-core-organization)
* contact ^short = "Contato"
* contact ^definition = "Contato para a organização para uma determinada finalidade"
* contact.purpose ^short = "Tipo de Contato"
* contact.purpose ^definition = "O tipo de contato Vinculação: ContactEntityType ( extensible ): A finalidade para a qual você entraria em contato com uma parte de contato."
* contact.name ^short = "Nome Associado ao contato"
* contact.name ^definition = "Um nome associado ao contato"
* contact.telecom ^short = "Meio de Contato"
* contact.telecom ^definition = "Contato, Informação de Contato, Telefone, E-Mail, Correio Eletrônico, Celular, Recado"
* contact.address ^short = "Endereço para contato"
* contact.address ^definition = "Dados do endereço para contato."
* endpoint ^short = "APIs que disponibilizam acesso aos serviços da organização"
* endpoint ^definition = "APIs que disponibilizam acesso aos serviços da organização"
* endpoint only Reference(Endpoint)