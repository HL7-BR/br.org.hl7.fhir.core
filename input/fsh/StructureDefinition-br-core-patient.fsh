Profile: br-core-patient
Parent: http://hl7.org/fhir/StructureDefinition/Patient
Id: br-core-patient
Description: "Este perfil representa o perfil [br-core-patient](https://saude.gov.br/fhir/StructureDefinition/br-core-patient.html) com todas as informações demográficas e administrativas necessárias para descrever um paciente no Brasil, com as respectivas legislações dos elementos e domínios obrigatórios conforme abaixo. O perfil [br-core-patient](https://saude.gov.br/fhir/StructureDefinition/br-core-patient.html) herda do recurso FHIR R4 [Patient](https://hl7.org/fhir/R4B/patient.html) para definições de escopo e uso. Este perfil define expectativas mínimas para o recurso [br-core-patient](https://saude.gov.br/fhir/StructureDefinition/br-core-patient.html) registrar, pesquisar e buscar dados demográficos básicos e outras informações administrativas sobre um paciente individual. Ele especifica quais elementos principais, extensões, vocabulários e conjuntos de valores DEVEM estar presentes e restringe como os elementos são usados.  

Para contemplar uma descrição do paciente com maior equidade, conforme recomendações da portaria GM/MS Nº 230, de 7 de março de 2023, foram adicionados atributos adicionais para expressar o sexo do paciente, além do sexo administrativo: sexo ao nascer descritos no ValueSet [BRSexoNascimento](https://terminologia.saude.gov.br/fhir/ValueSet/BRSexoNascimento) e identidade de gênero descrita no ValueSet [BRIdentidadeGenero](https://terminologia.saude.gov.br/fhir/ValueSet/BRIdentidadeGenero). Com relação a orientação sexual, este é um dado que pode mudar durante a vida do paciente, portanto, recomenda-se que ele seja coletado em cada evento assistencial"

* ^version = "1.0.0"
* id ^short = "Identificador literal deste recurso"
* id ^definition = "Identificação unívoca para o recurso em um sistema"	
* meta ^short = "Metadados sobre o recurso"
* meta ^definition = "Metadados adicionais sobre o recurso"
* implicitRules ^short = "URI(s) sob as quais este recurso é conhecido"
* implicitRules ^definition = "Um ou mais códigos que servem para identificar o tipo de recurso"
* language ^short = "Linguagem do recurso"
* language ^definition = "A linguagem humana natural do recurso"
* text ^short = "Texto narrativo, 72 caracteres para resumo"
* text ^definition = "Um texto narrativo resumindo as informações do recurso"
* contained ^short = "Recursos contidos"
* contained ^definition = "Recursos contidos no recurso"
* extension ^short = "Extensões adicionais"
* extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* extension contains
    $structuredefinition-patient-birthPlace named localNascimento 0..1 and
    $structuredefinition-patient-genderIdentity named identidadeGenero 0..1 and
    $structuredefinition-patient-racaBRIPS named raca 1..1 and
    $structuredefinition-patient-povoIndigenaBRIPS named povoIndigena 0..1 and
    $structuredefinition-patient-sexoNascimentoBRIPS named sexoNascimento 1..1 and
    br-core-populacaotradicional named povoTradicional 1..1 and
    br-core-povoitinerante named povoItinerante 0..1
* extension[localNascimento] ^short = "Local de nascimento do paciente"
* extension[localNascimento] ^definition = "Local de nascimento do paciente" 
* extension[identidadeGenero] ^short = "Identidade de gênero do paciente"
* extension[identidadeGenero] ^definition = "Identidade de gênero do paciente" 
* extension[raca] ^short = "Raça do paciente"
* extension[raca] ^definition = "Raça do paciente"
* extension[povoIndigena] ^short = "Afiliação do paciente"
* extension[povoIndigena] ^definition = "Afiliação do paciente"
* extension[sexoNascimento] ^short = "Sexo do nascimento do paciente"
* extension[sexoNascimento] ^definition = "Sexo do nascimento do paciente"
* extension[povoTradicional] ^short = "Extensão de populacao tradicional do Core do Brasil"
* extension[povoTradicional] ^definition = "Extensão de populacao tradicional do Core do Brasil"
* extension[povoItinerante] ^short = "Extensão de povo intinerante do Core do Brasil"
* extension[povoItinerante] ^definition = "Extensão de povo intinerante do Core do Brasil"

* modifierExtension ^short = "Extensões adicionais"
* modifierExtension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* identifier ^short = "Identificadores nacionais do paciente"
* identifier ^definition = "Identificadores nacionais do paciente"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Identificadores nacionais do paciente"
* identifier 0..*
* identifier contains
    cns 0..1 and
    cpf 1..1 and
    registroEstrangeiro 0..1 and
    passaporte 0..1

* identifier[cns] ^short = "Identificador do paciente"
* identifier[cns] ^definition = "Identificador do paciente"
* identifier[cns].id ^short = "Id lógico do identificador do paciente"
* identifier[cns].id ^definition = "Id lógico do identificador do paciente"
* identifier[cns].extension ^short = "Extensões do identificador do paciente"
* identifier[cns].extension ^definition = "Extensões incluídas no identificador do paciente"
* identifier[cns].use 1..1
* identifier[cns].use ^short = "Uso do identificador do paciente"
* identifier[cns].use ^definition = "usual: identificador usual do paciente. official: identificador oficial do paciente. temp: identificador temporário do paciente. secondary: identificador secundário do paciente."
* identifier[cns].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[cns].type 1..1
* identifier[cns].type ^short = "Tipo do identificador do paciente"
* identifier[cns].type ^definition = "Código que representa o tipo do identificador do paciente"
* identifier[cns].type ^binding.description = "Tipo do identificador do paciente"
* identifier[cns].type from https://terminologia.saude.gov.br/fhir/ValueSet-BRTipoIdentificadorIndividuo (required)
* identifier[cns].type.id ^short = "Id lógico do tipo do identificador do paciente"
* identifier[cns].type.id ^definition = "Id lógico do tipo do identificador do paciente"
* identifier[cns].type.extension ^short = "Extensões do tipo do identificador do paciente"
* identifier[cns].type.extension ^definition = "Extensões incluídas no tipo do identificador do paciente"
* identifier[cns].type.coding 1..1
* identifier[cns].type.coding ^short = "Codificação do tipo do identificador do paciente"
* identifier[cns].type.coding ^definition = "Codificação que representa o tipo do identificador do paciente"
* identifier[cns].type.coding.id ^short = "Id lógico da codificação do tipo do identificador do paciente"
* identifier[cns].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador do paciente"
* identifier[cns].type.coding.extension ^short = "Extensões da codificação do tipo do identificador do paciente"
* identifier[cns].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador do paciente"
* identifier[cns].type.coding.system 1..1
* identifier[cns].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[cns].type.coding.system ^short = "Sistema da codificação do tipo do identificador do paciente"
* identifier[cns].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador do paciente"
* identifier[cns].type.coding.version ^short = "Versão da codificação do tipo do identificador do paciente"
* identifier[cns].type.coding.version ^definition = "Versão da codificação do tipo do identificador do paciente"
* identifier[cns].type.coding.code 1..1
* identifier[cns].type.coding.code = http://terminology.hl7.org/CodeSystem/v2-0203#HC (exactly)
* identifier[cns].type.coding.code ^short = "Código da codificação do tipo do identificador do paciente"
* identifier[cns].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador do paciente"
* identifier[cns].type.coding.display ^short = "Texto da codificação do tipo do identificador do paciente"
* identifier[cns].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador do paciente"
* identifier[cns].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador do paciente"
* identifier[cns].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador do paciente foi selecionada pelo usuário"
* identifier[cns].type.text ^short = "Texto do tipo do identificador do paciente"
* identifier[cns].type.text ^definition = "Texto que representa o tipo do identificador do paciente"
* identifier[cns].system 1..1
* identifier[cns].system ^short = "Sistema do identificador do paciente"
* identifier[cns].system ^definition = "Sistema que identifica o tipo do identificador do paciente"
* identifier[cns].system = "https://saude.gov.br/sid/cns" (exactly)
* identifier[cns].value 1..1
* identifier[cns].value ^short = "Valor do identificador do paciente"
* identifier[cns].value ^definition = "Valor do identificador do paciente"
* identifier[cns].period ^short = "Período de uso do identificador do paciente"
* identifier[cns].period ^definition = "Período de tempo durante o qual o identificador do paciente foi utilizado"
* identifier[cns].assigner ^short = "Entidade que atribuiu o identificador do paciente"
* identifier[cns].assigner ^definition = "Entidade que atribuiu o identificador do paciente"
* identifier[cns].assigner only Reference(br-core-organization)
* identifier[cns].assigner.display ^short = "Nome da entidade que atribuiu o identificador do paciente"

* identifier[cpf] ^short = "Identificador do paciente"
* identifier[cpf] ^definition = "Identificador do paciente"
* identifier[cpf].id ^short = "Id lógico do identificador do paciente"
* identifier[cpf].id ^definition = "Id lógico do identificador do paciente"
* identifier[cpf].extension ^short = "Extensões do identificador do paciente"
* identifier[cpf].extension ^definition = "Extensões incluídas no identificador do paciente"
* identifier[cpf].use 1..1
* identifier[cpf].use ^short = "Uso do identificador do paciente"
* identifier[cpf].use ^definition = "usual: identificador usual do paciente. official: identificador oficial do paciente. temp: identificador temporário do paciente. secondary: identificador secundário do paciente."
* identifier[cpf].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[cpf].type ^short = "Tipo do identificador do paciente"
* identifier[cpf].type ^definition = "Código que representa o tipo do identificador do paciente"
* identifier[cpf].type ^binding.description = "Tipo do identificador do paciente"
* identifier[cpf].type from https://terminologia.saude.gov.br/fhir/ValueSet-BRTipoIdentificadorIndividuo (required)
* identifier[cpf].type.id ^short = "Id lógico do tipo do identificador do paciente"
* identifier[cpf].type.id ^definition = "Id lógico do tipo do identificador do paciente"
* identifier[cpf].type.extension ^short = "Extensões do tipo do identificador do paciente"
* identifier[cpf].type.extension ^definition = "Extensões incluídas no tipo do identificador do paciente"
* identifier[cpf].type.coding 1..1
* identifier[cpf].type.coding ^short = "Codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding ^definition = "Codificação que representa o tipo do identificador do paciente"
* identifier[cpf].type.coding.id ^short = "Id lógico da codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding.extension ^short = "Extensões da codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding.system 1..1
* identifier[cpf].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[cpf].type.coding.system ^short = "Sistema da codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding.version ^short = "Versão da codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding.version ^definition = "Versão da codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding.code 1..1
* identifier[cpf].type.coding.code = http://terminology.hl7.org/CodeSystem/v2-0203#TAX (exactly)
* identifier[cpf].type.coding.code ^short = "Código da codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding.display ^short = "Texto da codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador do paciente"
* identifier[cpf].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador do paciente foi selecionada pelo usuário"
* identifier[cpf].type.text ^short = "Texto do tipo do identificador do paciente"
* identifier[cpf].type.text ^definition = "Texto que representa o tipo do identificador do paciente"
* identifier[cpf].system 1..1
* identifier[cpf].system ^short = "Sistema do identificador do paciente"
* identifier[cpf].system ^definition = "Sistema que identifica o tipo do identificador do paciente"
* identifier[cpf].system = "https://saude.gov.br/sid/cpf" (exactly)
* identifier[cpf].value 1..1
* identifier[cpf].value ^short = "Valor do identificador do paciente"
* identifier[cpf].value ^definition = "Valor do identificador do paciente"
* identifier[cpf].period ^short = "Período de uso do identificador do paciente"
* identifier[cpf].period ^definition = "Período de tempo durante o qual o identificador do paciente foi utilizado"
* identifier[cpf].assigner ^short = "Entidade que atribuiu o identificador do paciente"
* identifier[cpf].assigner ^definition = "Entidade que atribuiu o identificador do paciente"
* identifier[cpf].assigner only Reference(br-core-organization)
* identifier[cpf].assigner.display ^short = "Nome da entidade que atribuiu o identificador do paciente"

* identifier[passaporte] ^short = "Identificador do paciente"
* identifier[passaporte] ^definition = "Identificador do paciente"
* identifier[passaporte].id ^short = "Id lógico do identificador do paciente"
* identifier[passaporte].id ^definition = "Id lógico do identificador do paciente"
* identifier[passaporte].extension ^short = "Extensões do identificador do paciente"
* identifier[passaporte].extension ^definition = "Extensões incluídas no identificador do paciente"
* identifier[passaporte].use ^short = "Uso do identificador do paciente"
* identifier[passaporte].use ^definition = "usual: identificador usual do paciente. official: identificador oficial do paciente. temp: identificador temporário do paciente. secondary: identificador secundário do paciente."
* identifier[passaporte].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[passaporte].type ^short = "Tipo do identificador do paciente"
* identifier[passaporte].type ^definition = "Código que representa o tipo do identificador do paciente"
* identifier[passaporte].type from https://terminologia.saude.gov.br/fhir/ValueSet-BRTipoIdentificadorIndividuo (required)
* identifier[passaporte].type ^binding.description = "Tipo do identificador do paciente"

* identifier[passaporte].type.id ^short = "Id lógico do tipo do identificador do paciente"
* identifier[passaporte].type.id ^definition = "Id lógico do tipo do identificador do paciente"
* identifier[passaporte].type.extension ^short = "Extensões do tipo do identificador do paciente"
* identifier[passaporte].type.extension ^definition = "Extensões incluídas no tipo do identificador do paciente"
* identifier[passaporte].type.coding 1..1
* identifier[passaporte].type.coding ^short = "Codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding ^definition = "Codificação que representa o tipo do identificador do paciente"
* identifier[passaporte].type.coding.id ^short = "Id lógico da codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding.extension ^short = "Extensões da codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding.system 1..1
* identifier[passaporte].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[passaporte].type.coding.system ^short = "Sistema da codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding.version ^short = "Versão da codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding.version ^definition = "Versão da codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding.code 1..1
* identifier[passaporte].type.coding.code = http://terminology.hl7.org/CodeSystem/v2-0203#PPN (exactly)
* identifier[passaporte].type.coding.code ^short = "Código da codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding.display ^short = "Texto da codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador do paciente"
* identifier[passaporte].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador do paciente foi selecionada pelo usuário"
* identifier[passaporte].type.text ^short = "Texto do tipo do identificador do paciente"
* identifier[passaporte].type.text ^definition = "Texto que representa o tipo do identificador do paciente"
* identifier[passaporte].system 1..1
* identifier[passaporte].system ^short = "Sistema do identificador do paciente"
* identifier[passaporte].system ^definition = "Sistema que identifica o tipo do identificador do paciente"
* identifier[passaporte].system = "http://hl7.org/fhir/sid/passport-BRA" (exactly)
* identifier[passaporte].value 1..1
* identifier[passaporte].value ^short = "Valor do identificador do paciente"
* identifier[passaporte].value ^definition = "Valor do identificador do paciente"
* identifier[passaporte].period ^short = "Período de uso do identificador do paciente"
* identifier[passaporte].period ^definition = "Período de tempo durante o qual o identificador do paciente foi utilizado"
* identifier[passaporte].assigner ^short = "Entidade que atribuiu o identificador do paciente"
* identifier[passaporte].assigner ^definition = "Entidade que atribuiu o identificador do paciente"
* identifier[passaporte].assigner only Reference(br-core-organization)
* identifier[passaporte].assigner.display ^short = "Nome da entidade que atribuiu o identificador do paciente"


* identifier[registroEstrangeiro] ^short = "Identificador do paciente"
* identifier[registroEstrangeiro] ^definition = "Identificador do paciente"
* identifier[registroEstrangeiro].id ^short = "Id lógico do identificador do paciente"
* identifier[registroEstrangeiro].id ^definition = "Id lógico do identificador do paciente"
* identifier[registroEstrangeiro].extension ^short = "Extensões do identificador do paciente"
* identifier[registroEstrangeiro].extension ^definition = "Extensões incluídas no identificador do paciente"
* identifier[registroEstrangeiro].use ^short = "Uso do identificador do paciente"
* identifier[registroEstrangeiro].use ^definition = "usual: identificador usual do paciente. official: identificador oficial do paciente. temp: identificador temporário do paciente. secondary: identificador secundário do paciente."
* identifier[registroEstrangeiro].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[registroEstrangeiro].type ^short = "Tipo do identificador do paciente"
* identifier[registroEstrangeiro].type ^definition = "Código que representa o tipo do identificador do paciente"
* identifier[registroEstrangeiro].type ^binding.description = "Tipo do identificador do paciente"
* identifier[registroEstrangeiro].type from https://terminologia.saude.gov.br/fhir/ValueSet-BRTipoIdentificadorIndividuo (required)
* identifier[registroEstrangeiro].type.id ^short = "Id lógico do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.id ^definition = "Id lógico do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.extension ^short = "Extensões do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.extension ^definition = "Extensões incluídas no tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding 1..1
* identifier[registroEstrangeiro].type.coding ^short = "Codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding ^definition = "Codificação que representa o tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.id ^short = "Id lógico da codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.extension ^short = "Extensões da codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.system 1..1
* identifier[registroEstrangeiro].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[registroEstrangeiro].type.coding.system ^short = "Sistema da codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.version ^short = "Versão da codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.version ^definition = "Versão da codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.code 1..1
* identifier[registroEstrangeiro].type.coding.code = http://terminology.hl7.org/CodeSystem/v2-0203#RNE (exactly)
* identifier[registroEstrangeiro].type.coding.code ^short = "Código da codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.display ^short = "Texto da codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador do paciente foi selecionada pelo usuário"
* identifier[registroEstrangeiro].type.text ^short = "Texto do tipo do identificador do paciente"
* identifier[registroEstrangeiro].type.text ^definition = "Texto que representa o tipo do identificador do paciente"
* identifier[registroEstrangeiro].system 1..1
* identifier[registroEstrangeiro].system ^short = "Sistema do identificador do paciente"
* identifier[registroEstrangeiro].system ^definition = "Sistema que identifica o tipo do identificador do paciente"
* identifier[registroEstrangeiro].system = "https://saude.gov.br/sid/rne" (exactly)
* identifier[registroEstrangeiro].value 1..1
* identifier[registroEstrangeiro].value ^short = "Valor do identificador do paciente"
* identifier[registroEstrangeiro].value ^definition = "Valor do identificador do paciente"
* identifier[registroEstrangeiro].period ^short = "Período de uso do identificador do paciente"
* identifier[registroEstrangeiro].period ^definition = "Período de tempo durante o qual o identificador do paciente foi utilizado"
* identifier[registroEstrangeiro].assigner ^short = "Entidade que atribuiu o identificador do paciente"
* identifier[registroEstrangeiro].assigner ^definition = "Entidade que atribuiu o identificador do paciente"
* identifier[passaporte].assigner only Reference(br-core-organization)
* identifier[registroEstrangeiro].assigner.display ^short = "Nome da entidade que atribuiu o identificador do paciente"

* active ^short = "Indica se o paciente está ativo"
* active ^definition = "Indica se o paciente está ativo"
* name ^short = "Nome do paciente"
* name ^definition = "Nome do paciente"
* name obeys br-core-pat-1
* name.id ^short = "Identificador primário deste recurso"
* name.id ^definition = "Identificação unívoca para o recurso em um sistema"
* name.extension ^short = "Extensões adicionais" 
* name.extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* name.use ^short = "Uso do nome"
* name.use ^definition = "O uso do nome"
* name.text ^short = "Representação textual do nome completo do paciente"
* name.text ^definition = "Representação textual do nome completo do paciente"
* name.family ^short = "Sobrenome"
* name.family ^definition = "Sobrenome do paciente"
* name.given ^short = "Nome completo do paciente"
* name.given ^definition = "Nome completo do paciente"
* name.prefix ^short = "Prefixo do nome"
* name.prefix ^definition = "Prefixo do nome do paciente"
* name.suffix ^short = "Sufixo do nome"
* name.suffix ^definition = "Sufixo do nome do paciente"
* name.period ^short = "Período de tempo em que o nome foi usado"
* name.period ^definition = "Período de tempo em que o nome foi usado"
* telecom ^short = "Contatos de telecomunicação do paciente"
* telecom ^definition = "Contatos de telecomunicação do paciente"
* telecom.id ^short = "Identificador primário deste recurso"
* telecom.id ^definition = "Identificação unívoca para o recurso em um sistema"
* telecom.extension ^short = "Extensões adicionais"
* telecom.extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* telecom.system ^short = "Sistema de telecomunicação usado para o contato"
* telecom.system ^definition = "O sistema de telecomunicação usado para o contato"
* telecom.value ^short = "Número ou  do contato"
* telecom.value ^definition = "O número de telefone ou fax usado para o contato"
* telecom.use ^short = "Uso do contato"
* telecom.use ^definition = "home | work | temp | old | mobile - propósito do contato"
* telecom.rank ^short = "Indica a ordem de preferência do contato"
* telecom.rank ^definition = "Indica a ordem de preferência do contato"
* telecom.period ^short = "Período de tempo em que o contato foi usado"
* telecom.period ^definition = "Período em que o meio de contato foi utilizado pelo paciente"
* gender 1..1
* gender ^short = "Sexo"
* gender ^definition = "male | female | other | unknown"
* birthDate ^short = "Data de nascimento do paciente"
* birthDate ^definition = "Data de nascimento do paciente"
* deceased[x] ^short = "Indica se o paciente é falecido"
* deceased[x] ^definition = "Indica se o paciente é falecido"
* deceasedBoolean ^short = "Indica se o paciente é falecido"
* deceasedBoolean ^definition = "Indica se o paciente é falecido"
* deceasedDateTime ^short = "Data e hora do falecimento do paciente"
* deceasedDateTime ^definition = "Data e hora do falecimento do paciente"
* address ^short = "Endereço do paciente"
* address ^definition = "Endereço do paciente"
* address.id ^short = "Identificador primário deste recurso"
* address.id ^definition = "Identificação unívoca para o recurso em um sistema"
* address.extension ^short = "Extensões adicionais"
* address.extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* address.use ^short = "Uso do endereço"
* address.use ^definition = "home | work | temp | old - propósito do endereço"
* address.type ^short = "Tipo de endereço"
* address.type ^definition = "postal | physical | both"
* address.text ^short = "Representação textual do endereço"
* address.text ^definition = "Representação textual do endereço"
* address.line ^short = "Endereço do paciente"
* address.line ^definition = "Endereço do paciente"
* address.city ^short = "Cidade do endereço"
* address.city ^definition = "Cidade do endereço"
* address.district ^short = "Distrito do endereço"
* address.district ^definition = "Distrito do endereço"
* address.state ^short = "Unidade Federativa"
* address.state ^definition = "Unidade Federativa"
* address.postalCode ^short = "CEP do endereço"
* address.postalCode ^definition = "CEP do endereço"
* address.country ^short = "País do endereço"
* address.country ^definition = "País do endereço"
* address.period ^short = "Período de tempo em que o endereço foi usado"
* address.period ^definition = "Período de tempo em que o endereço foi usado"
* maritalStatus ^short = "Estado civil do paciente"
* maritalStatus ^definition = "Estado civil do paciente"
* multipleBirth[x] ^short = "Indica se o paciente é de parto gemelar"
* multipleBirth[x] ^definition = "Indica se o paciente é de parto gemelar"
* multipleBirthBoolean ^short = "Indica se o paciente é de parto gemelar"
* multipleBirthBoolean ^definition = "Indica se o paciente é de parto gemelar"
* multipleBirthInteger ^short = "Gemelaridade do paciente"
* multipleBirthInteger ^definition = "Gemelaridade do paciente"
* photo ^short = "Fotografia do paciente"
* photo ^definition = "Fotografia do paciente"
* contact ^short = "Uma pessoa para contato (guardião, companheiro, amigo) em caso de emergência"
* contact ^definition = "Uma pessoa para contato (guardião, companheiro, amigo) em caso de emergência"
* contact.id ^short = "Identificação unívoca da pessoa de contato"
* contact.id ^definition = "Identificação unívoca da pessoa de contato"
* contact.extension ^short = "Extensões adicionais"
* contact.extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* contact.modifierExtension ^short = "Extensões adicionais"
* contact.modifierExtension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* contact.relationship ^short = "Relação com o paciente"
* contact.relationship ^definition = "Relação com o paciente"
* contact.name ^short = "Nome da pessoa de contato"
* contact.name ^definition = "Nome da pessoa de contato"
* contact.telecom ^short = "Contatos de telecomunicação da pessoa de contato"
* contact.telecom ^definition = "Contatos de telecomunicação da pessoa de contato"
* contact.address ^short = "Endereço da pessoa de contato"
* contact.address ^definition = "Endereço da pessoa de contato"
* contact.gender ^short = "Sexo do contato do paciente"
* contact.gender ^definition = "Sexo do contato do paciente"
* contact.organization ^short = "Organização do contato do paciente"
* contact.organization ^definition = "Organização do contato do paciente"
* contact.organization only Reference(br-core-organization)
* contact.period ^short = "Período de tempo em que o contato foi usado"
* contact.period ^definition = "Período de tempo em que o contato foi usado"
* communication ^short = "Idiomas falados pelo paciente"
* communication.id ^short = "Identificador primário deste recurso"	
* communication.id ^definition = "Identificação unívoca para o recurso em um sistema"
* communication.extension ^short = "Extensões adicionais"
* communication.extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* communication.modifierExtension ^short = "Extensões adicionais"
* communication.modifierExtension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* communication.language ^short = "Idioma falado pelo paciente"
* communication.language ^definition = "Idioma falado pelo paciente"
* communication.preferred ^short = "Indica se o idioma é preferido"
* communication.preferred ^definition = "Indica se o idioma é preferido"
* generalPractitioner ^short = "Médico de atenção primária do paciente"
* generalPractitioner ^definition = "Médico de atenção primária do paciente"
* generalPractitioner only Reference(br-core-organization or br-core-practitioner or br-core-practitionerrole)
* managingOrganization ^short = "Organização responsável pelo paciente"
* managingOrganization ^definition = "Organização responsável pelo paciente"
* managingOrganization only Reference(br-core-organization)
* link ^short = "Links para outros recursos que se relacionam com este recurso"
* link ^definition = "Links para outros recursos que se relacionam com este recurso"
* link.id ^short = "Identificador primário deste recurso"
* link.id ^definition = "Identificação unívoca para o recurso em um sistema"
* link.extension ^short = "Extensões adicionais"
* link.extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* link.modifierExtension ^short = "Extensões adicionais"
* link.modifierExtension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* link.other ^short = "Outro recurso que se relaciona com este recurso"
* link.other ^definition = "Outro recurso que se relaciona com este recurso"
* link.other only Reference(br-core-patient or br-core-relatedperson)
* link.type ^short = "Tipo de relação entre os recursos"
* link.type ^definition = "Tipo de relação entre os recursos"

Invariant: br-core-pat-1
Description: "Patient.name.given, Patient.name.family, Patient.name.text or Patient.name.extension SHALL be present"
Severity: #error
Expression: "(family.exists() or given.exists() or text.exists()) xor extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"
XPath: "(/f:extension/@url='http://hl7.org/fhir/StructureDefinition/data-absent-reason' and not(/f:family or /f:given or /f:text)) or (not(/f:extension/@url='http://hl7.org/fhir/StructureDefinition/data-absent-reason') and (/f:family or /f:given or /f:text))"