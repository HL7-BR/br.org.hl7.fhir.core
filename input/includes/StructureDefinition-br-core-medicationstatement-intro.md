### Escopo/Uso

O uso comum inclui:

-	o registro de drogas sem receita e/ou recreativas;
-	o registro de uma lista de medicamentos de admissão no hospital;
-	o resumo dos “medicamentos ativos” de um paciente em um perfil de paciente;
-	Consultar e recuperar a medicação atual de um paciente;
-	Registrar ou atualizar a medicação atual de um paciente;

Um recurso [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html#MedicationStatement) pode ser usado para registrar abuso de substâncias ou o uso de outros agentes, como tabaco ou álcool. Isso normalmente seria feito se essas substâncias fossem destinadas a serem incluídas na verificação de suporte à decisão clínica (por exemplo, verificação de interação) e como parte de uma lista de medicamentos ativos. Se a intenção for preencher o histórico social e/ou incluir informações adicionais (por exemplo, desejo de parar, quantidade por dia, efeitos negativos à saúde), então é melhor registrar como uma Observação (br-core-observation) que poderia então ser usada para preencher o Histórico Social.

Este recurso não produz uma lista de medicamentos, mas produz declarações individuais de medicamentos que podem ser usadas no recurso [List](https://www.hl7.org/fhir/r4/list.html) para construir vários tipos de listas de medicamentos. Observe que outras listas de medicamentos também podem ser construídas a partir de outros recursos Pharmacy (por exemplo, [br-core-medicationrequest](https://saude.gov.br/fhir/StructureDefiniton/medicationrequest.html), [br-core-medicationadministration](https://saude.gov.br/fhir/StructureDefiniton/medicationadministration.html)).

Uma declaração de medicamento não faz parte da sequência prescrever -> dispensar -> administrar, mas é um relato de um paciente, outra pessoa importante ou  de um médico,  de que uma ou mais ações de prescrever, dispensar ou administrar ocorreram, resultando na crença de que o paciente está, usou ou usará um medicamento específico.

MedicationStatement é um recurso de event na perspectiva de fluxo de trabalho FHIR - consulte Evento de fluxo de trabalho ([https://hl7.org/fhir/R4/workflow.html#event](https://hl7.org/fhir/R4/workflow.html#event)).

### Caso de uso

Este recurso não deve ser utilizado para representar dados que não sejam relacionados ao relatório de medicamentos, como o de solicitar, dispensar ou administrar medicamentos.

### Caso de uso da RNDS

No Brasil esse recurso não é utilizado pela RDNS para descrever os medicamentos em uso pelo paciente, os registros da RNDS são somente para pdescrever prescrições/dispensações de medicamentos não controlados reais  no âmbito do SUS. 

### Identificadores

Não se aplica.

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

O recurso [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefiniton/medicationstatement.html#MedicationStatement) é usado para registrar medicamentos ou substâncias que o paciente relata como sendo tomados, não tomando, tomou no passado ou pode tomar no futuro. Ele também pode ser usado para registrar o uso de medicamentos que é derivado de outros registros, como um [br-core-medicationrequest](https://saude.gov.br/fhir/StructureDefiniton/br-core-medicationrequest.html). A declaração não é usada para solicitar ou encomendar um medicamento, suprimento ou dispositivo. Ao solicitar medicamentos, suprimentos ou dispositivos quando há um foco no paciente ou instruções sobre seu uso, recursos [br-core-medicationrequest](https://saude.gov.br/fhir/StructureDefiniton/br-core-medicationrequest.html), [SupplyRequest](https://hl7.org/fhir/R4/supplyrequest.html) ou [DeviceRequest](https://hl7.org/fhir/R4/devicerequest.html) deve ser usado em vez disso.

O domínio Medicamentos inclui uma série de recursos relacionados.

<table border="1">
  <tbody>
    <tr>
      <td>MedicationRequest(<a href="https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest">br-core-medicationrequest</a>)</td>
      <td>Uma ordem para fornecimento do medicamento e instruções para administração do medicamento a um paciente.</td>
    </tr>
    <tr>
      <td>MedicamentoDispense(<a href="https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense.html">br-core-medicationdispense</a>)</td>
      <td>Fornecimento de um medicamento com a intenção de que ele seja posteriormente consumido por um paciente (geralmente em resposta a uma prescrição).</td>
    </tr>
    <tr>
      <td>MedicationAdministration(<a href="https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdadministration.html">br-core-medicationadministration</a>)</td>
      <td>Quando um paciente realmente consome um medicamento, ou o medicamento é administrado a ele de outra forma</td>
    </tr>
    <tr>
      <td>MedicationAdministration(<a href="https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement.html">br-core-medicationstatement</a>)</td>
      <td>Este é um registro de um medicamento sendo tomado por um paciente ou que um medicamento foi dado a um paciente, onde o registro é o resultado de um relatório do paciente ou de outro clínico. Uma declaração de medicamento não é parte do fluxo prescrever->dispensar->administrar, mas é um relatório de que este  fluxo (ou pelo menos uma parte dela) ocorreu, resultando em uma crença de que o paciente recebeu um medicamento específico.</td>
    </tr>
  </tbody>
</table>

Este recurso é referenciado por [AdverseEvent](https://hl7.org/fhir/R4/adverseevent.html#AdverseEvent), [Goal](https://hl7.org/fhir/R4/goal.html#Goal), ele mesmo e [br-core-observation](https://saude.gov.br/fhir/StructureDefiniton/br-core-observation.html).