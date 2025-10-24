Profile: BRCoreConsent
Parent: http://hl7.org/fhir/StructureDefinition/Consent
Id: br-core-consent
Title: "br-core-consent"
Description: "Este perfil define as características mínimas para o recurso [br-core-consent](StructureDefinition-br-core-consent.html) registrar, pesquisar e buscar consentimentos para tratamento de dados pessoais conforme Lei Geral de Proteção de Dados (LGPD) - Lei nº 13.709/2018. O perfil especifica quais elementos principais, extensões, vocabulários e conjuntos de valores **DEVEM** estar presentes e restringe como os elementos são usados. Além disso, fornece a base para o desenvolvimento de padrões para casos de uso específicos promove a interoperabilidade e a adoção. "

* id ^short = "Identificador lógico deste artefato"
* id ^definition = "Identificador lógico deste artefato"
* meta ^short = "Metadados sobre o recurso"
* meta ^definition = "Metadados sobre o recurso"
* implicitRules ^short = "Um conjunto de regras sob as quais este conteúdo foi criado"
* implicitRules ^definition = "Um conjunto de regras sob as quais este conteúdo foi criado"
* language ^short = "Idioma do recurso"
* language ^definition = "Idioma do recurso"
* text ^short = "Resumo do texto do recurso em linguagem natural"
* text ^definition = "Resumo do texto do recurso em linguagem natural"
* contained ^short = "Recursos contidos no recurso"
* contained ^definition = "Recursos contidos no recurso"
* extension ^short = "Extensões adicionais que não fazem parte do modelo base"
* extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* extension contains BRBaseLegalLGPD named baseLegalLGPD 1..* MS
* extension[baseLegalLGPD] ^short = "Base legal LGPD para tratamento de dados (Art. 7º)"
* extension[baseLegalLGPD] ^definition = "Base legal LGPD para tratamento de dados (Art. 7º)"
* extension[baseLegalLGPD] from https://terminologia.saude.gov.br/fhir/ValueSet/BRBase
* modifierExtension ^short = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
* modifierExtension ^definition = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
* identifier ^short = "Identificadores externos para este consentimento"
* identifier ^definition = "Identificadores externos para este consentimento"
* status ^short = "Status do consentimento: draft | proposed | active | rejected | inactive | entered-in-error"
* status ^definition = "Status do consentimento: draft | proposed | active | rejected | inactive | entered-in-error"
* scope ^short = "Escopo do consentimento: patient-privacy | research | treatment | adr"
* scope ^definition = "Escopo do consentimento: patient-privacy | research | treatment | adr"
* category ^short = "Classificação do consentimento e base legal LGPD"
* category ^definition = "Classificação do consentimento e base legal LGPD"
* category from https://terminologia.saude.gov.br/fhir/ValueSet/BRBaseLegalLGPD (extensible)
* patient ^short = "Titular dos dados pessoais"
* patient ^definition = "Titular dos dados pessoais"
* patient only Reference(br-core-patient)
* patient.id ^short = "Identificador exclusivo para referência entre elementos"
* patient.id ^definition = "Identificador exclusivo para referência entre elementos"
* patient.extension ^short = "Conteúdo adicional definido por implementações"
* patient.extension ^definition = "Conteúdo adicional definido por implementações"
* patient.reference ^short = "Referência literal, URL relativa, interna ou absoluta"
* patient.reference ^definition = "Referência literal, URL relativa, interna ou absoluta"
* patient.type ^short = "Tipo ao qual a referência se refere (por exemplo: Patient)"
* patient.type ^definition = "Tipo ao qual a referência se refere (por exemplo: Patient)"
* patient.identifier ^short = "Referência lógica, quando a referência literal não é conhecida"
* patient.identifier ^definition = "Referência lógica, quando a referência literal não é conhecida"
* patient.display ^short = "Texto alternativo para o recurso"
* patient.display ^definition = "Texto alternativo para o recurso"
* dateTime ^short = "Data e hora do consentimento"
* dateTime ^definition = "Data e hora do consentimento"
* performer ^short = "Quem concedeu o consentimento"
* performer ^definition = "Quem concedeu o consentimento"
* performer only Reference(br-core-patient or br-core-practitioner or br-core-practitionerrole or br-core-relatedperson or br-core-organization)
* organization ^short = "Controlador dos dados (organização responsável)"
* organization ^definition = "Controlador dos dados (organização responsável)"
* organization only Reference(br-core-organization)
* source[x] ^short = "Fonte/evidência do consentimento"
* source[x] ^definition = "Fonte/evidência do consentimento"
* policy ^short = "Políticas que regem o consentimento"
* policy ^definition = "Políticas que regem o consentimento"
* policy.id ^short = "Identificador exclusivo para referência entre elementos"
* policy.id ^definition = "Identificador exclusivo para referência entre elementos"
* policy.extension ^short = "Conteúdo adicional definido por implementações"
* policy.extension ^definition = "Conteúdo adicional definido por implementações"
* policy.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* policy.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* policy.authority ^short = "Autoridade responsável pela política (ex: ANPD)"
* policy.authority ^definition = "Autoridade responsável pela política (ex: ANPD)"
* policy.uri ^short = "URI da política ou legislação"
* policy.uri ^definition = "URI da política ou legislação"
* policyRule ^short = "Regra de política de consentimento"
* policyRule ^definition = "Regra de política de consentimento"
* verification ^short = "Verificação do consentimento"
* verification ^definition = "Verificação do consentimento"
* verification.id ^short = "Identificador exclusivo para referência entre elementos"
* verification.id ^definition = "Identificador exclusivo para referência entre elementos"
* verification.extension ^short = "Conteúdo adicional definido por implementações"
* verification.extension ^definition = "Conteúdo adicional definido por implementações"
* verification.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* verification.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* verification.verified ^short = "Consentimento foi verificado"
* verification.verified ^definition = "Consentimento foi verificado"
* verification.verifiedWith ^short = "Pessoa que verificou"
* verification.verifiedWith ^definition = "Pessoa que verificou"
* verification.verifiedWith only Reference(br-core-patient or br-core-relatedperson)
* verification.verificationDate ^short = "Quando foi verificado"
* verification.verificationDate ^definition = "Quando foi verificado"
* provision ^short = "Regras de acesso e tratamento de dados"
* provision ^definition = "Regras de acesso e tratamento de dados"
* provision.id ^short = "ID exclusivo para referência entre elementos"
* provision.id ^definition = "ID exclusivo para referência entre elementos"
* provision.extension ^short = "Extensões adicionais que não fazem parte do modelo base"
* provision.extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* provision.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* provision.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* provision.type ^short = "Tipo de ação: permit | deny"
* provision.type ^definition = "Tipo de ação: permit | deny"
* provision.period ^short = "Período de validade do consentimento"
* provision.period ^definition = "Período de validade do consentimento"
* provision.actor ^short = "Agentes autorizados"
* provision.actor ^definition = "Agentes autorizados"
* provision.actor.id ^short = "ID exclusivo para referência entre elementos"
* provision.actor.id ^definition = "ID exclusivo para referência entre elementos"
* provision.actor.extension ^short = "Conteúdo adicional definido por implementações"
* provision.actor.extension ^definition = "Conteúdo adicional definido por implementações"
* provision.actor.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* provision.actor.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* provision.actor.role ^short = "Como o agente está envolvido"
* provision.actor.role ^definition = "Como o agente está envolvido"
* provision.actor.reference ^short = "Recurso para o ator"
* provision.actor.reference ^definition = "Recurso para o ator"
* provision.actor.reference only Reference(br-core-device or br-core-organization or br-core-patient or br-core-practitioner or br-core-practitionerrole or br-core-relatedperson)
* provision.action ^short = "Ações permitidas ou negadas"
* provision.action ^definition = "Ações permitidas ou negadas"
* provision.action from https://terminologia.saude.gov.br/fhir/ValueSet/BRDireitoTitularDados (extensible)
* provision.securityLabel ^short = "Rótulos de segurança que definem os dados afetados"
* provision.securityLabel ^definition = "Rótulos de segurança que definem os dados afetados"
* provision.purpose ^short = "Finalidade do tratamento de dados"
* provision.purpose ^definition = "Finalidade do tratamento de dados"
* provision.purpose from https://terminologia.saude.gov.br/fhir/ValueSet/BRFinalidadeTratamentoDados (extensible)
* provision.class ^short = "Tipo ou classe de dados pessoais"
* provision.class ^definition = "Tipo ou classe de dados pessoais"
* provision.class from https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoDadoPessoalLGPD (extensible)
* provision.code ^short = "Instâncias de dados específicas"
* provision.code ^definition = "Instâncias de dados específicas"
* provision.dataPeriod ^short = "Período temporal dos dados cobertos"
* provision.dataPeriod ^definition = "Período temporal dos dados cobertos"
* provision.data ^short = "Dados específicos cobertos"
* provision.data ^definition = "Dados específicos cobertos"
* provision.data.id ^short = "ID exclusivo para referência entre elementos"
* provision.data.id ^definition = "ID exclusivo para referência entre elementos"
* provision.data.extension ^short = "Conteúdo adicional definido por implementações"
* provision.data.extension ^definition = "Conteúdo adicional definido por implementações"
* provision.data.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* provision.data.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* provision.data.meaning ^short = "Instância | relacionado | dependente | autorizado"
* provision.data.meaning ^definition = "Instância | relacionado | dependente | autorizado"
* provision.data.reference ^short = "O recurso real ao qual a regra de consentimento se aplica"
* provision.data.reference ^definition = "O recurso real ao qual a regra de consentimento se aplica"
* provision.provision ^short = "Provisões aninhadas (sub-regras/exceções)"
* provision.provision ^definition = "Provisões aninhadas (sub-regras/exceções)"






































































































































*