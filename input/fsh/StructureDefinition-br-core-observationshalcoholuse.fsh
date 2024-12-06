Profile: br-core-observationshalcoholuse
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: br-core-observationshalcoholuse
Description: "O recurso [br-core-Observationshalcoholuse](https://saude.gov.br/fhir/StructureDefinition/br-core-observationshalcoholuse.html) herda do recurso FHIR R4 [observation](https://hl7.org/fhir/R4B/observation.html) e registra medidas e afirmações simples feitas sobre um paciente, dispositivo ou outro assunto."

* id ^short = "ID do artefato"
* id ^definition = "ID lógico deste artefato"
* meta ^short = "Metadados sobre recurso"
* meta ^definition = "Metadados sobre recurso"
* implicitRules ^short = "Um conjunto de regras sob as quais este conteúdo foi criado"
* implicitRules ^definition = "Um conjunto de regras sob as quais este conteúdo foi criado"
* language ^short = "Idioma do conteúdo do recurso"
* language ^definition = "Idioma do conteúdo do recurso"
* text ^short = "Texto com o resumo do recurso"
* text ^definition = "Texto com o resumo do recurso"
* contained ^short = "Recursos contidos"
* contained ^definition = "Recursos contidos no Recurso"
* modifierExtension ^short = "Extensões que não podem ser ignoradas"
* modifierExtension ^definition = "Extensões que não podem ser ignoradas"
* identifier ^short = "Identificador do Observation"
* identifier ^definition = "Identificador do Observation"
* identifier 1..1
* basedOn ^short = "Referência ao pedido ou ao plano de tratamento que gerou este recurso"
* basedOn ^definition = "Referência ao pedido ou ao plano de tratamento que gerou este recurso"
* basedOn only Reference(br-core-careplan or DeviceRequest or br-core-immunizationrecommendation or br-core-medicationrequest or NutritionOrder or br-core-servicerequest)
* partOf ^short = "Referência ao evento do qual este recurso faz parte"
* partOf ^definition = "Referência ao evento do qual este recurso faz parte"
* partOf only Reference(br-core-medicationadministration or br-core-medicationdispense or br-core-medicationstatement or br-core-procedure or br-core-immunization or ImagingStudy)
* status ^short = "Status atual da observação"
* status ^definition = "active | completed | entered-in-error | intended | stopped | on-hold | unknown | not-taken"
//* status from https://terminologia.saude.gov.br/fhir/ValueSet/brestadoobservacao-1.0
* category ^short = "Categoria de alto nível da observação"
* category ^definition = "Categoria de alto nível da observação"
* category from http://hl7.org/fhir/R4/valueset-observation-category.html (preferred)
* category 1..1
* code ^short = "Código da observação"
* code ^definition = "Código da observação"
* code from http://hl7.org/fhir/R4/valueset-observation-codes.html (example)
* code.coding ^short = "Código definido por uma terminologia"
* code.coding ^definition = "Código definido por uma terminologia"
* code.coding[0].system = "http://loinc.org"
* code.coding.system ^short = "Identificador da terminologia"
* code.coding.system ^definition = "Identidade da terminologia"
* code.coding[0].code = "74013-4"
* code.coding.code ^short = "Código do conceito na sintaxe definida pela terminologia"
* code.coding.code ^definition = "Código do conceito na sintaxe definida pela terminologia - fixo em loinc#82810-3 'Pregnancy Status'"
* code.coding[0].display = "Alcoholic drinks per day"
* code.coding.display ^short = "Descrição conforme definido pela terminologia"
* code.coding.display ^definition = "Representação definida pela terminologia"
* code.text = "Número de doses de alcóol ingeridos por dia"
* subject ^short = "De quem ou do que trata a observação"
* subject ^definition = "De quem ou do que trata a observação"
* subject only Reference(br-core-patient or br-core-location or Device or Group)
* subject.id ^short = "ID exclusivo para referência entre elementos"
* subject.id ^definition = "ID exclusivo para referência entre elementos"
* subject.extension ^short = "Conteúdo adicional definido por implementações"
* subject.extension ^definition = "Conteúdo adicional definido por implementações"
* subject.reference 0..1
* subject.reference ^short = "Referência literal, URL relativa, interna ou absoluta"
* subject.reference ^definition = "Referência literal, URL relativa, interna ou absoluta"
* subject.type ^short = "Tipo de referência (por exemplo, Paciente)"
* subject.type ^definition = "Tipo de referência (por exemplo, Paciente)"
* subject.identifier ^short = "Referência lógica, quando a referência literal não é conhecida"
* subject.identifier ^definition = "Referência lógica, quando a referência literal não é conhecida"
* subject.display ^short = "Texto alternativo para este rescurso"
* subject.display ^definition = "Texto alternativo para este recurso"
* focus ^short = "Sobre o que é a observação, quando esta não é sobre o sujeito do registro"
* focus ^definition = "Sobre o que é a observação, quando esta não é sobre o sujeito do registro"
* focus only Reference(Resource)
* encounter ^short = "Atendimento durante o qual esta observação foi registrada"
* encounter ^definition = "Atendimento durante o qual esta observação foi registrada"
* encounter only Reference(br-core-encounter)
* effective[x] ^short = "Tempo ou período de tempo clinicamente relevante para a observação"
* effective[x] ^definition = "Tempo ou período de tempo clinicamente relevante para a observação"
* effective[x].id ^short = "ID exclusivo para referência entre elementos"
* effective[x].id ^definition = "ID exclusivo para referência entre elementos"
* effective[x].extension ^short = "Conteúdo adicional definido por implementações"
* effective[x].extension ^definition = "Conteúdo adicional definido por implementações"
* effective[x].extension.id ^short = "Identificador único para referenciação cruzada"
* effective[x].extension.id ^definition = "Identificador único para referenciação cruzada"
* effective[x].extension.extension ^short = "Conteúdo adicional definido por implementações"
* effective[x].extension.extension ^definition = "Conteúdo adicional definido por implementações"
* effective[x].extension.url ^short = "Por quê o valor esperado não está presente"
* effective[x].extension.url ^definition = "Por quê o valor esperado não está presente"
* issued ^short = "Data/hora em que esta versão foi disponibilizada"
* issued ^definition = "Data/hora em que esta versão foi disponibilizada"
* issued 1..1
* performer ^short = "Quem é o responsável pela observação"
* performer ^definition = "Quem é o responsável pela observação"
* performer only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or CareTeam or br-core-patient or br-core-relatedperson)
* value[x] ^short = "Resultado da observação"
* value[x] ^definition = "Resultado da observação"
* value[x] 1..1
* valueCodeableConcept from http://hl7.org/fhir/uv/ips/ValueSet/current-smoking-status-uv-ips (required)
* dataAbsentReason ^short = "Por quê o resultado está faltando"
* dataAbsentReason ^definition = "Utilizado para especificar o porquê o valor esperado não está presente"
* interpretation ^short = "Interpretação do resultado"
* interpretation ^definition = "Interpretação da observação. Por exemplo: valor alto, baixo, normal"
* interpretation 0..1
//* interpretation from https://terminologia.saude.gov.br/fhir/ValueSet-BRResultadoQualitativoExame
* note ^short = "Comentários sobre a observação"
* note ^definition = "Comentários sobre a observação"
* note 0..1
* bodySite ^short = "Parte anatômica alvo da observação"
* bodySite ^definition = "PParte anatômica alvo da observação"
* method ^short = "Método de medição"
* method ^definition = "Método de medição"
* method 1..1
* specimen ^short = "Amostra utilizada para esta observação"
* specimen ^definition = "Amostra utilizada para esta observação"
* specimen only Reference(br-core-specimen)
* device ^short = "Dispositivo de medida da observação"
* device ^definition = "Dispositivo utilizado para registrar esta observação"
* device only Reference(Device or DeviceMetric)
* referenceRange ^short = "Fornece um guia para interpretação"
* referenceRange ^definition = "Fornece um guia para interpretação"
* referenceRange 1..1
* referenceRange.id ^short = "Identificador único para referenciação cruzada"
* referenceRange.id ^definition = "Identificador único para referenciação cruzada"
* referenceRange.extension ^short = "Extensões adicionais que não fazem parte do modelo de dados básico"
* referenceRange.extension ^definition = "Extensões adicionais que não fazem parte do modelo de dados básico" 
* referenceRange.modifierExtension ^short = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
* referenceRange.modifierExtension ^definition = "Extensões adicionais que não podem ser ignoradas, mesmo que não reconhecidas"
* referenceRange.modifierExtension 1..1
* referenceRange.low ^short = "Limite inferior do intervalo"
* referenceRange.low ^definition = "Limite inferior do intervalo de valores de referência"
* referenceRange.low 1..1
* referenceRange.high ^short = "Limite superior do intervalo"
* referenceRange.high ^definition = "Limite superior do intervalo de valores de referência"
* referenceRange.high 1..1
* referenceRange.type ^short = "Qualificador do valor de referência"
* referenceRange.type ^definition = "Qualificador do valor de referência"
* referenceRange.type from https://hl7.org/fhir/R4/valueset-referencerange-meaning.html (preferred)
* referenceRange.appliesTo ^short = "População do intervalo de referência"
* referenceRange.appliesTo ^definition = "População do intervalo de referência"
* referenceRange.appliesTo from https://terminologia.saude.gov.br/fhir/ValueSet-BRObservationRestricaoIntervaloReferencia (example)
* referenceRange.age ^short = "Faixa etária aplicável"
* referenceRange.age ^definition = "Faixa etária aplicável, se relevante"
* referenceRange.text ^short = "Intervalo de referência em formato textual"
* referenceRange.text ^definition = "Intervalo de referência em formato textual"
* referenceRange.text 1..1
* hasMember ^short = "Recurso relacionado que pertence a observação"
* hasMember ^definition = "Recurso relacionado que pertence a observação"
* hasMember only Reference(br-core-observation or QuestionnaireResponse or MolecularSequence)
* derivedFrom ^short = "Medições relacionadas a partir das quais a observação é feita"
* derivedFrom ^definition = "Medições relacionadas a partir das quais a observação é feita"
* derivedFrom only Reference(DocumentReference or ImagingStudy or Media or QuestionnaireResponse or br-core-observation or MolecularSequence)
* component ^short = "Resultados do componente" 
* component ^definition = "Resultados do componente"
* component.id ^short = "ID exclusivo para referência entre elementos"
* component.id ^definition = "ID exclusivo para referência entre elementos"
* component.extension ^short = "Conteúdo adicional definido por implementações"
* component.extension ^definition = "Conteúdo adicional definido por implementações"
* component.modifierExtension ^short = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* component.modifierExtension ^definition = "Extensões que não podem ser ignoradas mesmo que não sejam reconhecidas"
* component.code ^short = "Tipo do componente da observação"
* component.code ^definition = "Tipo do componente da observação"
* component.value[x] ^short = "Resultado do componente"
* component.value[x] ^definition = "Resultado do componente"
* component.dataAbsentReason ^short = "Por que o resultado do componente está ausente"
* component.dataAbsentReason ^definition = "Por que o resultado do componente está ausente"
* component.interpretation ^short = "Interpretação do resultado do componente"
* component.interpretation ^definition = "Interpretação do resultado do componente"
//* component.interpretation from https://terminologia.saude.gov.br/fhir/ValueSet-BRResultadoQualitativoExame
* component.referenceRange ^short = "Valores de referência"
* component.referenceRange ^definition = "Valores de referência para auxiliar na interpretação do resultado"