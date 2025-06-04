Profile: BRCoreRelatedPerson
Parent: RelatedPerson
Id: br-core-relatedperson
Description: "O recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html) contém as informações sobre uma pessoa envolvida no cuidado de um paciente, mas que não é alvo de cuidados de saúde nem tem responsabilidade formal no processo de cuidado. 

A pessoa representada pelo recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html) normalmente tem um relacionamento profissional pessoal ou não específico de cuidado em saúde com o paciente. O recurso [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html) é usado principalmente para atribuição de informações, já que geralmente é uma fonte de informações sobre o paciente. Para manter informações sobre pessoas para fins de contato para um paciente, use um elemento br-core-patien.contact. Alguns indivíduos podem ser representados simultaneamente como  um patient.contact e [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html).

Exemplos de pessoas que podem ser um [br-core-relatedperson](StructureDefinition-br-core-relatedperson.html):
-	Esposa ou marido de um paciente
-	Parentes ou amigos de um paciente
-	Um vizinho que leva um paciente para o hospital
-	O dono ou treinador de um cavalo
-	Um advogado ou tutor do paciente
-	Um cão-guia
"

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
* contained ^definition = "Recursos contidos no recurso"
* contained ^definition = "Recursos contidos no recurso"
* extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* extension ^definition = "Extensões adicionais que não fazem parte do modelo base"
* modifierExtension ^short = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
* modifierExtension ^definition = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
* identifier ^short = "Identificadores externos para este recurso"
* identifier ^definition = "Identificadores externos para este recurso"
* active ^short = "Se o registro desta pessoa relacionada está ativo"
* active ^definition = "Se o registro desta pessoa relacionada está ativo"
* patient ^short = "Referência ao paciente com quem essa pessoa está relacionada"
* patient ^definition = "Referência ao paciente com quem essa pessoa está relacionada"
* patient only Reference(br-core-patient)
* relationship ^short = "Código da natureza do relacionamento"
* relationship ^definition = "Código da natureza do relacionamento"
* name ^short = "Nome associado à pessoa"
* name ^definition = "Nome associado à pessoa"
* telecom ^short = "Contato da pessoa"
* telecom ^definition = "Contato da pessoa"
* gender ^short = "Sexo: masculino | feminino | outro | desconhecido"
* gender ^definition = "masculino | feminino | outro | desconhecido"
* birthDate ^short = "Data de nascimento da pessoa relacionada"
* birthDate ^definition = "Data de nascimento da pessoa relacionada"
* address ^short = "Endereço da pessoa relacionada"
* address ^definition = "Endereço da pessoa relacionada"
* photo ^short = "Imagem da pessoa"
* photo ^definition = "Imagem da pessoa"
* period ^short = "Período de tempo em que esta relação é considerada válida"
* period ^definition = "Período de tempo em que esta relação é considerada válida"
* communication ^short = "Idiomas que podem ser utilizados"
* communication ^definition = "Idiomas que podem ser utilizados"
* communication.id ^short = "Identificador exclusivo para referência entre elementos"
* communication.id ^definition = "Identificador exclusivo para referência entre elementos"
* communication.extension ^short = "Conteúdo adicional definido por implementações"
* communication.extension ^definition = "Conteúdo adicional definido por implementações"
* communication.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* communication.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* communication.language ^short = "Idioma que pode ser utilizada para comunicação com o paciente"
* communication.language ^definition = "Idioma que pode ser utilizada para comunicação com o paciente"
* communication.preferred ^short = "Indicador de idioma preferencial"
* communication.preferred ^definition = "Indicador de idioma preferencial"