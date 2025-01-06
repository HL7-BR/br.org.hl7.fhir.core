Profile: BRCorePractitioner
Parent: http://hl7.org/fhir/StructureDefinition/Practitioner
Id: br-core-practitioner
Description: "O Profissional é uma pessoa que está direta ou indiretamente envolvida na prestação de cuidados de saúde ou serviços relacionados ao paciente."

* id ^short = "Identificador Lógico do Artefato"
* id ^definition = "Identificador Lógico do Artefato"
* meta ^short = "Metadados do Artefato" 
* meta ^definition = "Metadados que descrevem o artefato"
* implicitRules ^short = "Regras Implícitas de Uso"
* implicitRules ^definition = "Regras implícitas de uso do artefato"
* language ^short = "Linguagem do Artefato"
* language ^definition = "Linguagem do conteúdo do artefato"
* text ^short = "Texto narrativo do artefato"
* text ^definition = "Texto narrativo que descreve o artefato"
* contained ^short = "Artefatos Contidos"
* contained ^definition = "Artefatos contidos no artefato"  
* extension ^short = "Extensões do Artefato"
* extension ^definition = "Extensões incluídas no artefato"
* modifierExtension ^short = "Extensões Modificadoras do Artefato"
* modifierExtension ^definition = "Extensões modificadoras incluídas no artefato"
* identifier ^short = "Identificadores do profissional"
* identifier ^definition = "Identificadores do profissional"
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier 1..*
* identifier contains
    cns 0..1 and
    cpf 0..1 and    
    identificadorMedico 0..1 and
    identificadorFarmaceutico 0..1 and
    identificadorOdontologo 0..1 and
    identificadorEnfermeiro 0..1 and
    identificadorOutrosProfissionais 0..1

* identifier[cns] ^short = "Identificador do profissional"
* identifier[cns] ^definition = "Identificador do profissional"
* identifier[cns].id ^short = "Id lógico do identificador do profissional"
* identifier[cns].id ^definition = "Id lógico do identificador do profissional"
* identifier[cns].extension ^short = "Extensões do identificador do profissional"
* identifier[cns].extension ^definition = "Extensões incluídas no identificador do profissional"
* identifier[cns].use ^short = "Uso do identificador do profissional"
* identifier[cns].use ^definition = "usual: identificador usual do profissional. official: identificador oficial do profissional. temp: identificador temporário do profissional. secondary: identificador secundário do profissional."
* identifier[cns].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[cns].use 1..1
* identifier[cns].type ^short = "Tipo do identificador do profissional"
* identifier[cns].type ^definition = "Código que representa o tipo do identificador do profissional"
* identifier[cns].type ^binding.description = "Tipo do identificador do profissional"
* identifier[cns].type 1..1
* identifier[cns].type from https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo (required)
* identifier[cns].type.id ^short = "Id lógico do tipo do identificador do profissional"
* identifier[cns].type.id ^definition = "Id lógico do tipo do identificador do profissional"
* identifier[cns].type.extension ^short = "Extensões do tipo do identificador do profissional"
* identifier[cns].type.extension ^definition = "Extensões incluídas no tipo do identificador do profissional"
* identifier[cns].type.coding 1..1
* identifier[cns].type.coding ^short = "Codificação do tipo do identificador do profissional"
* identifier[cns].type.coding ^definition = "Codificação que representa o tipo do identificador do profissional"
* identifier[cns].type.coding.id ^short = "Id lógico da codificação do tipo do identificador do profissional"
* identifier[cns].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador do profissional"
* identifier[cns].type.coding.extension ^short = "Extensões da codificação do tipo do identificador do profissional"
* identifier[cns].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador do profissional"
* identifier[cns].type.coding.system 1..1
* identifier[cns].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[cns].type.coding.system ^short = "Sistema da codificação do tipo do identificador do profissional"
* identifier[cns].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador do profissional"
* identifier[cns].type.coding.version ^short = "Versão da codificação do tipo do identificador do profissional"
* identifier[cns].type.coding.version ^definition = "Versão da codificação do tipo do identificador do profissional"
* identifier[cns].type.coding.code 1..1
* identifier[cns].type.coding.code ^short = "Código da codificação do tipo do identificador do profissional"
* identifier[cns].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador do profissional"
* identifier[cns].type.coding.code = http://terminology.hl7.org/CodeSystem/v2-0203#HC (exactly)
* identifier[cns].type.coding.display ^short = "Texto da codificação do tipo do identificador do profissional"
* identifier[cns].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador do profissional"
* identifier[cns].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador do profissional"
* identifier[cns].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador do profissional foi selecionada pelo usuário"
* identifier[cns].type.text ^short = "Texto do tipo do identificador do profissional"
* identifier[cns].type.text ^definition = "Texto que representa o tipo do identificador do profissional"
* identifier[cns].system 1..1
* identifier[cns].system ^short = "Sistema do identificador do profissional"
* identifier[cns].system ^definition = "Sistema que identifica o tipo do identificador do profissional"
* identifier[cns].system = "https://saude.gov.br/fhir/sid/cns" (exactly)
* identifier[cns].value 1..1
* identifier[cns].value ^short = "Valor do identificador do profissional"
* identifier[cns].value ^definition = "Valor do identificador do profissional"
* identifier[cns].period ^short = "Período de uso do identificador do profissional"
* identifier[cns].period ^definition = "Período de tempo durante o qual o identificador do profissional foi utilizado"
* identifier[cns].assigner ^short = "Entidade que atribuiu o identificador do profissional"
* identifier[cns].assigner ^definition = "Entidade que atribuiu o identificador do profissional"
* identifier[cns].assigner.display ^short = "Nome da entidade que atribuiu o identificador do profissional"
* identifier[cns].assigner only Reference(br-core-organization)
* identifier[cpf] ^short = "Identificador do profissional"
* identifier[cpf] ^definition = "Identificador do profissional"
* identifier[cpf].id ^short = "Id lógico do identificador do profissional"
* identifier[cpf].id ^definition = "Id lógico do identificador do profissional"
* identifier[cpf].extension ^short = "Extensões do identificador do profissional"
* identifier[cpf].extension ^definition = "Extensões incluídas no identificador do profissional"
* identifier[cpf].use ^short = "Uso do identificador do profissional"
* identifier[cpf].use ^definition = "usual: identificador usual do profissional. official: identificador oficial do profissional. temp: identificador temporário do profissional. secondary: identificador secundário do profissional."
* identifier[cpf].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[cpf].use 1..1
* identifier[cpf].type ^short = "Tipo do identificador do profissional"
* identifier[cpf].type ^definition = "Código que representa o tipo do identificador do profissional"
* identifier[cpf].type ^binding.description = "Tipo do identificador do profissional"
* identifier[cpf].type 1..1
* identifier[cpf].type from https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo (required)
* identifier[cpf].type.id ^short = "Id lógico do tipo do identificador do profissional"
* identifier[cpf].type.id ^definition = "Id lógico do tipo do identificador do profissional"
* identifier[cpf].type.extension ^short = "Extensões do tipo do identificador do profissional"
* identifier[cpf].type.extension ^definition = "Extensões incluídas no tipo do identificador do profissional"
* identifier[cpf].type.coding 1..1
* identifier[cpf].type.coding ^short = "Codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding ^definition = "Codificação que representa o tipo do identificador do profissional"
* identifier[cpf].type.coding.id ^short = "Id lógico da codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding.extension ^short = "Extensões da codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding.system 1..1
* identifier[cpf].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[cpf].type.coding.system ^short = "Sistema da codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding.version ^short = "Versão da codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding.version ^definition = "Versão da codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding.code 1..1
* identifier[cpf].type.coding.code ^short = "Código da codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding.code = http://terminology.hl7.org/CodeSystem/v2-0203#TAX (exactly)
* identifier[cpf].type.coding.display ^short = "Texto da codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador do profissional"
* identifier[cpf].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador do profissional foi selecionada pelo usuário"
* identifier[cpf].type.text ^short = "Texto do tipo do identificador do profissional"
* identifier[cpf].type.text ^definition = "Texto que representa o tipo do identificador do profissional"
* identifier[cpf].system 1..1
* identifier[cpf].system ^short = "Sistema do identificador do profissional"
* identifier[cpf].system ^definition = "Sistema que identifica o tipo do identificador do profissional"
* identifier[cpf].system = "https://saude.gov.br/fhir/sid/cpf" (exactly)
* identifier[cpf].value 1..1
* identifier[cpf].value ^short = "Valor do identificador do profissional"
* identifier[cpf].value ^definition = "Valor do identificador do profissional"
* identifier[cpf].period ^short = "Período de uso do identificador do profissional"
* identifier[cpf].period ^definition = "Período de tempo durante o qual o identificador do profissional foi utilizado"
* identifier[cpf].assigner ^short = "Entidade que atribuiu o identificador do profissional"
* identifier[cpf].assigner ^definition = "Entidade que atribuiu o identificador do profissional"
* identifier[cpf].assigner.display ^short = "Nome da entidade que atribuiu o identificador do profissional"
* identifier[cpf].assigner only Reference(br-core-organization)
* identifier[identificadorMedico] ^short = "Identificador do médico"
* identifier[identificadorMedico] ^definition = "Identificador do médico"
* identifier[identificadorMedico].id ^short = "Id lógico do identificador do médico"
* identifier[identificadorMedico].id ^definition = "Id lógico do identificador do médico"
* identifier[identificadorMedico].extension ^short = "Extensões do identificador do médico"
* identifier[identificadorMedico].extension ^definition = "Extensões incluídas no identificador do médico"
* identifier[identificadorMedico].use ^short = "Uso do identificador do médico"
* identifier[identificadorMedico].use ^definition = "usual: identificador usual do médico. official: identificador oficial do médico. temp: identificador temporário do médico. secondary: identificador secundário do médico."
* identifier[identificadorMedico].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[identificadorMedico].use 1..1
* identifier[identificadorMedico].type ^short = "Tipo do identificador do médico"
* identifier[identificadorMedico].type ^definition = "Código que representa o tipo do identificador do médico"
* identifier[identificadorMedico].type ^binding.description = "Tipo do identificador do médico"
* identifier[identificadorMedico].type 1..1
* identifier[identificadorMedico].type from https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo (required)
* identifier[identificadorMedico].type.id ^short = "Id lógico do tipo do identificador do médico"
* identifier[identificadorMedico].type.id ^definition = "Id lógico do tipo do identificador do médico"
* identifier[identificadorMedico].type.extension ^short = "Extensões do tipo do identificador do médico"
* identifier[identificadorMedico].type.extension ^definition = "Extensões incluídas no tipo do identificador do médico"
* identifier[identificadorMedico].type.coding 1..1
* identifier[identificadorMedico].type.coding ^short = "Codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding ^definition = "Codificação que representa o tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.id ^short = "Id lógico da codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.extension ^short = "Extensões da codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.system 1..1
* identifier[identificadorMedico].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[identificadorMedico].type.coding.system ^short = "Sistema da codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.version ^short = "Versão da codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.version ^definition = "Versão da codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.code 1..1
* identifier[identificadorMedico].type.coding.code = http://terminology.hl7.org/CodeSystem/v2-0203#MD (exactly)
* identifier[identificadorMedico].type.coding.code ^short = "Código da codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.display ^short = "Texto da codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador do médico"
* identifier[identificadorMedico].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador do médico foi selecionada pelo usuário"
* identifier[identificadorMedico].type.text ^short = "Texto do tipo do identificador do médico"
* identifier[identificadorMedico].type.text ^definition = "Texto que representa o tipo do identificador do médico"
* identifier[identificadorMedico].system 1..1
* identifier[identificadorMedico].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[identificadorMedico].system ^short = "Sistema do identificador do médico"
* identifier[identificadorMedico].system ^definition = "Sistema que identifica o tipo do identificador do médico"
* identifier[identificadorMedico].system from https://terminologia.saude.gov.br/fhir/ValueSet/BRCRM
* identifier[identificadorMedico].system ^binding.description = "Sistema do identificador do médico"
* identifier[identificadorMedico].value 1..1
* identifier[identificadorMedico].value ^short = "Valor do identificador do médico"
* identifier[identificadorMedico].value ^definition = "Valor do identificador do médico"
* identifier[identificadorMedico].period ^short = "Período de uso do identificador do médico"
* identifier[identificadorMedico].period ^definition = "Período de tempo durante o qual o identificador do médico foi utilizado"
* identifier[identificadorMedico].assigner ^short = "Entidade que atribuiu o identificador do médico"
* identifier[identificadorMedico].assigner ^definition = "Entidade que atribuiu o identificador do médico"
* identifier[identificadorMedico].assigner.display ^short = "Nome da entidade que atribuiu o identificador do médico"
* identifier[identificadorMedico].assigner only Reference(br-core-organization)
* identifier[identificadorFarmaceutico] ^short = "Identificador do farmacêutico"
* identifier[identificadorFarmaceutico] ^definition = "Identificador do farmacêutico"
* identifier[identificadorFarmaceutico].id ^short = "Id lógico do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].id ^definition = "Id lógico do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].extension ^short = "Extensões do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].extension ^definition = "Extensões incluídas no identificador do farmacêutico"
* identifier[identificadorFarmaceutico].use ^short = "Uso do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].use ^definition = "usual: identificador usual do farmacêutico. official: identificador oficial do farmacêutico. temp: identificador temporário do farmacêutico. secondary: identificador secundário do farmacêutico."
* identifier[identificadorFarmaceutico].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[identificadorFarmaceutico].use 1..1
* identifier[identificadorFarmaceutico].type ^short = "Tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type ^definition = "Código que representa o tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type ^binding.description = "Tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type 1..1
* identifier[identificadorFarmaceutico].type from https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo (required)
* identifier[identificadorFarmaceutico].type.id ^short = "Id lógico do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.id ^definition = "Id lógico do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.extension ^short = "Extensões do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.extension ^definition = "Extensões incluídas no tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding 1..1
* identifier[identificadorFarmaceutico].type.coding ^short = "Codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding ^definition = "Codificação que representa o tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.id ^short = "Id lógico da codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.extension ^short = "Extensões da codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.system 1..1
* identifier[identificadorFarmaceutico].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[identificadorFarmaceutico].type.coding.system ^short = "Sistema da codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.version ^short = "Versão da codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.version ^definition = "Versão da codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.code 1..1
* identifier[identificadorFarmaceutico].type.coding.code = http://terminology.hl7.org/CodeSystem/v2-0203#RPH (exactly)
* identifier[identificadorFarmaceutico].type.coding.code ^short = "Código da codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.display ^short = "Texto da codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador do farmacêutico foi selecionada pelo usuário"
* identifier[identificadorFarmaceutico].type.text ^short = "Texto do tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].type.text ^definition = "Texto que representa o tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].system 1..1
* identifier[identificadorFarmaceutico].system ^short = "Sistema do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].system ^definition = "Sistema que identifica o tipo do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].system from https://terminologia.saude.gov.br/fhir/ValueSet/BRCRF
* identifier[identificadorFarmaceutico].system ^binding.description = "Sistema do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].value 1..1
* identifier[identificadorFarmaceutico].value ^short = "Valor do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].value ^definition = "Valor do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].period ^short = "Período de uso do identificador do farmacêutico"
* identifier[identificadorFarmaceutico].period ^definition = "Período de tempo durante o qual o identificador do farmacêutico foi utilizado"
* identifier[identificadorFarmaceutico].assigner ^short = "Entidade que atribuiu o identificador do farmacêutico"
* identifier[identificadorFarmaceutico].assigner ^definition = "Entidade que atribuiu o identificador do farmacêutico"
* identifier[identificadorFarmaceutico].assigner.display ^short = "Nome da entidade que atribuiu o identificador do farmacêutico"
* identifier[identificadorFarmaceutico].assigner only Reference(br-core-organization)
* identifier[identificadorOdontologo] ^short = "Identificador do odontólogo"
* identifier[identificadorOdontologo] ^definition = "Identificador do odontólogo"
* identifier[identificadorOdontologo].id ^short = "Id lógico do identificador do odontólogo"
* identifier[identificadorOdontologo].id ^definition = "Id lógico do identificador do odontólogo"
* identifier[identificadorOdontologo].extension ^short = "Extensões do identificador do odontólogo"
* identifier[identificadorOdontologo].extension ^definition = "Extensões incluídas no identificador do odontólogo"
* identifier[identificadorOdontologo].use ^short = "Uso do identificador do odontólogo"
* identifier[identificadorOdontologo].use ^definition = "usual: identificador usual do odontólogo. official: identificador oficial do odontólogo. temp: identificador temporário do odontólogo. secondary: identificador secundário do odontólogo."
* identifier[identificadorOdontologo].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[identificadorOdontologo].use 1..1
* identifier[identificadorOdontologo].type ^short = "Tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type ^definition = "Código que representa o tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type ^binding.description = "Tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type 1..1
* identifier[identificadorOdontologo].type from https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo (required)
* identifier[identificadorOdontologo].type.id ^short = "Id lógico do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.id ^definition = "Id lógico do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.extension ^short = "Extensões do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.extension ^definition = "Extensões incluídas no tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding 1..1
* identifier[identificadorOdontologo].type.coding ^short = "Codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding ^definition = "Codificação que representa o tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.id ^short = "Id lógico da codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.extension ^short = "Extensões da codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.system 1..1
* identifier[identificadorOdontologo].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[identificadorOdontologo].type.coding.system ^short = "Sistema da codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.version ^short = "Versão da codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.version ^definition = "Versão da codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.code 1..1
* identifier[identificadorOdontologo].type.coding.code = http://terminology.hl7.org/CodeSystem/v2-0203#DDL (exactly)
* identifier[identificadorOdontologo].type.coding.code ^short = "Código da codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.display ^short = "Texto da codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador do odontólogo foi selecionada pelo usuário"
* identifier[identificadorOdontologo].type.text ^short = "Texto do tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].type.text ^definition = "Texto que representa o tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].system 1..1
* identifier[identificadorOdontologo].system ^short = "Sistema do identificador do odontólogo"
* identifier[identificadorOdontologo].system ^definition = "Sistema que identifica o tipo do identificador do odontólogo"
* identifier[identificadorOdontologo].system from https://terminologia.saude.gov.br/fhir/ValueSet/BRCRO
* identifier[identificadorOdontologo].system ^binding.description = "Sistema do identificador do odontólogo"
* identifier[identificadorOdontologo].value 1..1
* identifier[identificadorOdontologo].value ^short = "Valor do identificador do odontólogo"
* identifier[identificadorOdontologo].value ^definition = "Valor do identificador do odontólogo"
* identifier[identificadorOdontologo].period ^short = "Período de uso do identificador do odontólogo"
* identifier[identificadorOdontologo].period ^definition = "Período de tempo durante o qual o identificador do odontólogo foi utilizado"
* identifier[identificadorOdontologo].assigner ^short = "Entidade que atribuiu o identificador do odontólogo"
* identifier[identificadorOdontologo].assigner ^definition = "Entidade que atribuiu o identificador do odontólogo"
* identifier[identificadorOdontologo].assigner.display ^short = "Nome da entidade que atribuiu o identificador do odontólogo"
* identifier[identificadorOdontologo].assigner only Reference(br-core-organization)
* identifier[identificadorEnfermeiro] ^short = "Identificador do enfermeiro"
* identifier[identificadorEnfermeiro] ^definition = "Identificador do enfermeiro"
* identifier[identificadorEnfermeiro].id ^short = "Id lógico do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].id ^definition = "Id lógico do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].extension ^short = "Extensões do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].extension ^definition = "Extensões incluídas no identificador do enfermeiro"
* identifier[identificadorEnfermeiro].use ^short = "Uso do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].use ^definition = "usual: identificador usual do enfermeiro. official: identificador oficial do enfermeiro. temp: identificador temporário do enfermeiro. secondary: identificador secundário do enfermeiro."
* identifier[identificadorEnfermeiro].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[identificadorEnfermeiro].use 1..1
* identifier[identificadorEnfermeiro].type ^short = "Tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type ^definition = "Código que representa o tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type ^binding.description = "Tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type 1..1
* identifier[identificadorEnfermeiro].type from https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo (required)
* identifier[identificadorEnfermeiro].type.id ^short = "Id lógico do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.id ^definition = "Id lógico do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.extension ^short = "Extensões do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.extension ^definition = "Extensões incluídas no tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding 1..1
* identifier[identificadorEnfermeiro].type.coding ^short = "Codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding ^definition = "Codificação que representa o tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.id ^short = "Id lógico da codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.extension ^short = "Extensões da codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.system 1..1
* identifier[identificadorEnfermeiro].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[identificadorEnfermeiro].type.coding.system ^short = "Sistema da codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.version ^short = "Versão da codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.version ^definition = "Versão da codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.code 1..1
* identifier[identificadorEnfermeiro].type.coding.code = http://terminology.hl7.org/CodeSystem/v2-0203#RN (exactly)
* identifier[identificadorEnfermeiro].type.coding.code ^short = "Código da codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.display ^short = "Texto da codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador do enfermeiro foi selecionada pelo usuário"
* identifier[identificadorEnfermeiro].type.text ^short = "Texto do tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].type.text ^definition = "Texto que representa o tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].system ^short = "Sistema do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].system ^definition = "Sistema que identifica o tipo do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].system from https://terminologia.saude.gov.br/fhir/ValueSet/BRCOREN
* identifier[identificadorEnfermeiro].system ^binding.description = "Sistema do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].system 1..1
* identifier[identificadorEnfermeiro].value ^short = "Valor do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].value ^definition = "Valor do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].value 1..1
* identifier[identificadorEnfermeiro].period ^short = "Período de uso do identificador do enfermeiro"
* identifier[identificadorEnfermeiro].period ^definition = "Período de tempo durante o qual o identificador do enfermeiro foi utilizado"
* identifier[identificadorEnfermeiro].assigner ^short = "Entidade que atribuiu o identificador do enfermeiro"
* identifier[identificadorEnfermeiro].assigner ^definition = "Entidade que atribuiu o identificador do enfermeiro"
* identifier[identificadorEnfermeiro].assigner.display ^short = "Nome da entidade que atribuiu o identificador do enfermeiro"
* identifier[identificadorEnfermeiro].assigner only Reference(br-core-organization)
* identifier[identificadorOutrosProfissionais] ^short = "Identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais] ^definition = "Identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].id ^short = "Id lógico do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].id ^definition = "Id lógico do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].extension ^short = "Extensões do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].extension ^definition = "Extensões incluídas no identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].use ^short = "Uso do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].use ^definition = "usual: identificador usual de outros profissionais. official: identificador oficial de outros profissionais. temp: identificador temporário de outros profissionais. secondary: identificador secundário de outros profissionais."
* identifier[identificadorOutrosProfissionais].use = http://hl7.org/fhir/identifier-use#official (exactly)
* identifier[identificadorOutrosProfissionais].use 1..1
* identifier[identificadorOutrosProfissionais].type ^short = "Tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type ^definition = "Código que representa o tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type ^binding.description = "Tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type 1..1
* identifier[identificadorOutrosProfissionais].type from https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDocumentoIndividuo (required)
* identifier[identificadorOutrosProfissionais].type.id ^short = "Id lógico do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.id ^definition = "Id lógico do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.extension ^short = "Extensões do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.extension ^definition = "Extensões incluídas no tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding 1..1
* identifier[identificadorOutrosProfissionais].type.coding ^short = "Codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding ^definition = "Codificação que representa o tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.id ^short = "Id lógico da codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.id ^definition = "Id lógico da codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.extension ^short = "Extensões da codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.extension ^definition = "Extensões incluídas na codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.system 1..1
* identifier[identificadorOutrosProfissionais].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[identificadorOutrosProfissionais].type.coding.system ^short = "Sistema da codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.system ^definition = "Sistema que identifica a codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.version ^short = "Versão da codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.version ^definition = "Versão da codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.code 1..1
* identifier[identificadorOutrosProfissionais].type.coding.code = http://terminology.hl7.org/CodeSystem/v2-0203#RI (exactly)
* identifier[identificadorOutrosProfissionais].type.coding.code ^short = "Código da codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.code ^definition = "Código que representa a codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.display ^short = "Texto da codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.display ^definition = "Texto que representa a codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.userSelected ^short = "Seleção do usuário da codificação do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.coding.userSelected ^definition = "Indica se a codificação do tipo do identificador de outros profissionais foi selecionada pelo usuário"
* identifier[identificadorOutrosProfissionais].type.text ^short = "Texto do tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].type.text ^definition = "Texto que representa o tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].system ^short = "Sistema do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].system ^definition = "Sistema que identifica o tipo do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].system from https://terminologia.saude.gov.br/fhir/ValueSet/BROutrosProfissionais
* identifier[identificadorOutrosProfissionais].system ^binding.description = "Sistema do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].system 1..1
* identifier[identificadorOutrosProfissionais].value ^short = "Valor do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].value ^definition = "Valor do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].value 1..1
* identifier[identificadorOutrosProfissionais].period ^short = "Período de uso do identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].period ^definition = "Período de tempo durante o qual o identificador de outros profissionais foi utilizado"
* identifier[identificadorOutrosProfissionais].assigner ^short = "Entidade que atribuiu o identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].assigner ^definition = "Entidade que atribuiu o identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].assigner.display ^short = "Nome da entidade que atribuiu o identificador de outros profissionais"
* identifier[identificadorOutrosProfissionais].assigner only Reference(br-core-organization)
* active ^short = "Indica se o registro deste profissional está ativo"
* active ^definition = "Indica se o registro deste profissional está ativo"
* active 1..1
* name ^short = "Nome do profissional"
* name ^definition = "Nome(s) associado(s) ao profissional."
* name.id ^short = "Identificador único do nome do profissional"
* name.id ^definition = "Identificador único para referenciar o nome do profissional"
* name.extension ^short = "Extensões do nome do profissional"
* name.extension ^definition = "Extensões incluídas no nome do profissional"
* name.use ^short = "Usos do nome do profissional"
* name.use ^definition = "official: nome oficial atual, conforme registrado na certidão de registro civil mais atual do profissional. maiden: nome oficial de solteiro(a), quando houve uma alteração de nome decorrente de uma união de qualquer tipo. old: nome oficial anterior, quando houve uma alteração de nome em uma certidão de registro civil ou decisão judicial decorrente de qualquer outra situação que não seja uma união. usual: nome social. temp: nome temporário, como aqueles utilizados em programas de proteção a testemunhas. anonymous: uso exclusivo para anonimização de registros de profissionais."
* name.text ^short = "Texto do nome do profissional"
* name.text ^definition = "Nome completo do profissional, composto pelo nome próprio, que pode ser mais de um quando trata-se de um nome composto, pelo sobrenome e pelo sufixo (Filho, Neto, Júnior etc.) quando aplicável."
* name.family ^short = "Sobrenome"
* name.family ^definition = "O(s) sobrenome(s) do indivíduo, quando é possível coletar esta informação desagregada."
* name.given ^short = "Nome próprio"
* name.given ^definition = "O(s) nome(s) próprio(s) do indivíduo, quando é possível coletar esta informação desagregada."
* name.prefix ^short = "Prefixo do nome"
* name.prefix ^definition = "Prefixo do nome do indivíduo, quando é possível coletar esta informação desagregada."
* name.suffix ^short = "Sufixo do nome"
* name.suffix ^definition = "Sufixo do nome do indivíduo, quando é possível coletar esta informação desagregada."
* name.period ^short = "Período de uso do nome"
* name.period ^definition = "Período de tempo durante o qual o nome foi utilizado pelo indivíduo."
* telecom ^short = "Contatos do profissional"
* telecom ^definition = "nformações do(s) meio(s) de contato com o profissional. Não devem ser informados meios de contato pessoais, apenas profissionais."
* address ^short = "Endereços do profissional"
* address ^definition = "Dados do(s) endereço(s) onde o profissional pode ser localizado. Não devem ser informados endereços pessoais, apenas profissionais."
* gender ^short = "Sexo"
* gender ^definition = "male: masculino. female: feminino. unknown: ignorado."
* birthDate ^short = "Data de nascimento"
* birthDate ^definition = "Data de nascimento do profissional."
* photo ^short = "Fotografia do profissional"
* qualification ^short = "Qualificações do profissional"
* qualification ^definition = "A(s) qualificação(ões), conforme a formação, certificações ou acreditações que o profissional possui."
* qualification 0..1
* qualification.id ^short = "Identificador único da qualificação do profissional"
* qualification.id ^definition = "Identificador único para referenciar a qualificação do profissional"
* qualification.extension ^short = "Extensões da qualificação do profissional"
* qualification.extension ^definition = "Extensões incluídas na qualificação do profissional"
* qualification.identifier ^short = "Identificador da qualificação do profissional"
* qualification.identifier ^definition = "Identificador da qualificação do profissional"
* qualification.code ^short = "Código da qualificação do profissional"
* qualification.code ^definition = "Código da qualificação do profissional"
* qualification.code from https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao (required) // BROcupacaco que é o VS no OCL
* qualification.code.coding ^short = "Codificação da qualificação do profissional"
* qualification.code.coding ^definition = "Codificação da qualificação do profissional"
* qualification.code.coding.system ^short = "Sistema de codificação da qualificação do profissional"
* qualification.code.coding.system ^definition = "Sistema de codificação da qualificação do profissional"
* qualification.code.coding.version ^short = "Versão do sistema de codificação da qualificação do profissional"
* qualification.code.coding.version ^definition = "Versão do sistema de codificação da qualificação do profissional"
* qualification.code.coding.code ^short = "Código da qualificação do profissional"
* qualification.code.coding.code ^definition = "Código da qualificação do profissional"
* qualification.period ^short = "Período de validade da qualificação do profissional"
* qualification.period ^definition = "Período de validade da qualificação do profissional"
* qualification.issuer ^short = "Emissor da qualificação do profissional"
* qualification.issuer ^definition = "Emissor da qualificação do profissional"
* qualification.issuer only Reference(br-core-organization)
* communication ^short = "Idiomas que o profissional domina"
* communication ^definition = "Idiomas que o profissional domina"








