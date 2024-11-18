### Escopo/Uso

As observações são um elemento central no cuidado em saúde, usadas para dar suporte ao diagnóstico, monitorar o progresso, determinar linhas de base e padrões e até mesmo capturar características demográficas. A maioria das observações são simples asserções de pares nome/valor com alguns metadados, mas algumas observações agrupam outras observações logicamente, ou até mesmo são observações multicomponentes.  

O recurso [br-core-observation](https://saude.gov.br/fhir/StructureDefinition/br-core-observation.html) pode ser utilizado para registrar:

-	Sinais vitais, como peso corporal, pressão arterial e temperatura
-	Dados laboratoriais, como glicemia ou uma estimativa da TFG
-	Resultados de imagem, como densidade óssea ou medidas fetais
-	Achados clínicos*, como sensibilidade abdominal
-	Medidas do dispositivo, como dados de ECG ou dados de oximetria de pulso
-	Ferramentas de avaliação clínica, como APGAR ou uma pontuação de coma de Glasgow
-	Características pessoais: como cor dos olhos
-	Histórico social, como uso de tabaco, apoio familiar ou estado cognitivo
-	Características principais, como estado de gravidez ou uma afirmação de morte

* Os limites entre achados clínicos e distúrbios continuam sendo um desafio na ontologia médica. Consulte a seção Limites abaixo e em Condição para orientação geral. Esses limites podem ser esclarecidos ao criar um perfil de [br-core-observation](https://saude.gov.br/fhir/StructureDefinition/br-core-observation.html) para um caso de uso específico. Medições e afirmações simples feitas sobre um paciente, dispositivo ou outro assunto.

Sempre que as medidas observadas forem sinais vitais, caracterizadas pelos conceitos descritos no VSBRSinaisVitais o perfil derivado [br-core-sinaisvitais](https://saude.gov.br/fhir/StructureDefinition/br-core-sinaisvitais.html) deve ser utilizado 

<table border="1">
  <tbody>
    <tr>
      <td><a href="http://hl7.org/fhir/R4/observation-vitalsigns.html">Vital Signs</a></td>
      <td>O perfil <a href="http://hl7.org/fhir/R4/observation-vitalsigns.html">observation-vitalsigns </a>do FHIR  R4 define expectativas mínimas para o Recurso <a href="https://hl7.org/fhir/R4/observation.html">Observation</a> registrar, pesquisar e buscar os sinais vitais (por exemplo, temperatura, pressão arterial, frequência respiratória, etc.) associados a um paciente.</td>
    </tr>
  </tbody>
</table>

**Tabela 1. ValueSet BRSinaisVotais**
<table border="1">
  <thead>
    <tr>
      <th>id</th>
      <th>Name</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>8302-2</td>
      <td>Altura</td>
    </tr>
    <tr>
      <td>9843-4</td>
      <td>Perímetro cefálico</td>
    </tr>
    <tr>
      <td>29463-7</td>
      <td>Peso corporal</td>
    </tr>
    <tr>
      <td>8480-6</td>
      <td>Pressão arterial sistólica</td>
    </tr>
    <tr>
      <td>8462-4</td>
      <td>Pressão arterial diastólica</td>
    </tr>
    <tr>
      <td>8280-0</td>
      <td>Circunferência abdominal</td>
    </tr>
   <tr>
      <td>9279-1</td>
      <td>Frequência respiratória</td>
    </tr>
    <tr>
      <td>8867-4</td>
      <td>Frequência cardíaca</td>
    </tr>
    <tr>
      <td>2708-6</td>
      <td>Saturação de Oxigênio</td>
    </tr>
    <tr>
      <td>8310-5</td>
      <td>Temperatura corporal</td>
    </tr>
    <tr>
      <td>39156-5</td>
      <td>IMC</td>
    </tr>
  </tbody>
</table>

### Caso de uso da RNDS

Na RNDS o recurso Observation é referenciado por documentos clínicos que contém recursos contendo dados como sinais vitais, medidas, resultados laboratoriais e outros testes. Os dados são representados conforme a seguir:

- [Registro de Atendimento Clínico](https://simplifier.net/redenacionaldedadosemsaude/brregistroatendimentoclinico)
- [Sumário de Alta](https://simplifier.net/redenacionaldedadosemsaude/brsumarioalta)
- [Resultado de Exame Laboratorial -Teste Rápido 1.0](https://simplifier.net/redenacionaldedadosemsaude/brresultadoexamelaboratorialtesterapido-1.0)
- [Resultado de Exame Laboratorial](https://simplifier.net/redenacionaldedadosemsaude/brresultadoexamelaboratorial-duplicate-2)

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos são obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support). 

**Cada [br-core-observation](https://saude.gov.br/fhir/StructureDefinition/br-core-observation.html) deve ter:**

1.	um paciente
2.	um status
3.	data e hora em que a Observação foi escrita
4.	um código

**Cada [br-core-observation](https://saude.gov.br/fhir/StructureDefinition/br-core-observation.html) deve oferecer suporte a:**

1.	um momento que indica quando a observação foi feita
2.	quem respondeu às perguntas
3.	um valor

### Orientações de implementação específicas do perfil

Os códigos podem ser do LOINC ou da SNOMED CT. Os valores para esses tipos de observações podem ser:
-	uma string
-	um código
-	um “qualificador” que confirma ou refuta uma declaração no código

### Limites e relacionamentos

O perfil [br-core-observation](https://saude.gov.br/fhir/StructureDefinition/br-core-observation.html) se destina a capturar medições e avaliações subjetivas pontuais. Não se destina a ser usada para aqueles contextos e casos de uso específicos já cobertos por outros recursos do FHIR. Por exemplo, o recurso [br-core-allergyintolerance](https://saude.gov.br/fhir/StructureDefinition/br-core-allergyintolerance.html) representa as alergias de um paciente, o recurso [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement.html): medicamentos tomados por um paciente, o recurso [FamilyMemberHistory](https://hl7.org/fhir/R4/familymemberhistory.html): o histórico familiar de um paciente, o recurso [br-core-procedure](https://saude.gov.br/fhir/StructureDefinition/br-core-procedure.html) : informações sobre um procedimento e o recurso [QuestionnaireResponse](https://hl7.org/fhir/R4/questionnaireresponse.html): um conjunto de respostas a um conjunto de perguntas. O recurso [br-core-observation](https://saude.gov.br/fhir/StructureDefinition/br-core-observation.html) não deve ser usado para registrar diagnósticos clínicos sobre um paciente ou sujeito que são normalmente capturados no recurso [br-core-condition](https://saude.gov.br/fhir/StructureDefinition/br-core-condition.html) ou no recurso [ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html). O perfil [br-core-observation](https://saude.gov.br/fhir/StructureDefinition/br-core-observation.html) é frequentemente referenciado pelo recurso [br-core-condition](https://saude.gov.br/fhir/StructureDefinition/br-core-condition.html) para fornecer dados subjetivos e objetivos específicos para dar suporte às suas afirmações. No entanto, haverá situações de sobreposição. 

Por exemplo, uma resposta a uma pergunta "você já tomou drogas ilícitas" poderia, em princípio, ser representada usando MedicationStatement, mas a maioria dos sistemas trataria tal afirmação como um [br-core-observation](https://saude.gov.br/fhir/StructureDefinition/br-core-observation.html). Em alguns casos, como quando os dados de origem vêm de um feed [HL7 v2](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=185), um sistema pode não ter informações que permitam distinguir diagnóstico, alergia e outros tipos "especializados" de observações de laboratório, sinais vitais e outros tipos de observação destinados a serem transmitidos com este recurso. Nessas circunstâncias, tais observações especializadas também podem aparecer usando este recurso. Aderir a tal convenção é um uso apropriado de Observação. Se os implementadores não tiverem certeza se um uso proposto de Observação é apropriado, eles são encorajados a consultar os implementadores no [chat.fhir.org implementer's stream](https://chat.fhir.org/).

O recurso [Media](https://hl7.org/fhir/R4/media.html) captura um tipo específico de observação cujo valor é dado de áudio, vídeo ou imagem. Este recurso é usado em vez de [br-core-observation](https://saude.gov.br/fhir/StructureDefinition/br-core-observation.html) para representar tais formas de informação, pois expõe os metadados relevantes para interpretar as informações.

Em contraste com o recurso [Observation](http://hl7.org/fhir/R4/observation.html), o recurso [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) normalmente inclui contexto clínico adicional e alguma mistura de resultados atômicos, imagens, relatórios de imagem, interpretação textual e codificada e representações formatadas. Relatórios de laboratório, relatórios de patologia e relatórios de imagem devem ser representados usando o recurso [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) . O recurso [Observation](http://hl7.org/fhir/R4/observation.html) é referenciado pelo [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) para fornecer os resultados atômicos para uma investigação específica. Os laboratórios rotineiramente têm uma variável que é somativa em uma série de variáveis discretas - essas são geralmente chamadas de 'impressões' ou 'interpretações'. Às vezes, elas são especificadas algoritmicamente e às vezes têm o imprimatur de patologistas e são transmitidas em [Observation](http://hl7.org/fhir/R4/observation.html) ou [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html)  em vez do recurso [Clinical Impression](https://hl7.org/fhir/R4/clinicalimpression.html). O recurso [Observation](http://hl7.org/fhir/R4/observation.html) não deve ser usado para registrar diagnósticos clínicos sobre um paciente ou sujeito, conforme discutido acima.