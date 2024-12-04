### Escopo/Uso

Este recurso abrange todos os tipos de pedidos de medicamentos para um paciente. Isso inclui pedidos de medicamentos para internação, bem como pedidos comunitários (sejam atendidos pelo prescritor ou por uma farmácia). Também inclui pedidos de medicamentos de venda livre (por exemplo, aspirina), nutrição parenteral total e suplementos dietéticos/vitamínicos. Pode ser usado para dar suporte ao pedido de dispositivos relacionados a medicamentos. Não se destina ao uso na prescrição de dietas específicas ou para solicitar itens não relacionados a medicamentos (óculos, suprimentos, etc.). Além disso, o [br-core-medicationrequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest) pode ser utilizado para relatar pedidos/solicitações de sistemas externos que foram relatados para fins informativos e não são autoritativos e não se espera que sejam atendidos (por exemplo, dispensados ou administrados).

O recurso [br-core-medicationrequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest) é um recurso de "solicitação" de uma perspectiva de fluxo de trabalho FHIR - consulte [Solicitação de fluxo de trabalho](https://www.hl7.org/fhir/R4/workflow.html#request).

O recurso o [br-core-medicationrequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest) permite solicitar apenas um único medicamento. Se um fluxo de trabalho exigir a solicitação de vários itens simultaneamente, isso será feito usando várias instâncias desse recurso. Essas instâncias podem ser vinculadas de diferentes maneiras, dependendo das necessidades do fluxo de trabalho. Para obter orientação, consulte o padrão [Request](https://www.hl7.org/fhir/R4/request.html#compound).

### Caso de uso da RNDS

Na RNDS o documento clínico [Registro da Prescrição de Medicamentos (RPM)](https://simplifier.net/redenacionaldedadosemsaude/brregistroprescricaomedicamento) descreve a prescrição de medicamentos por profissional de saúde habilitado, compreendendo a prescrição em âmbito de atendimento ambulatorial e de medicamentos não sujeitos a controle especial. Para isso a RDNS utiliza a structuredefintion [BRPrescricaoMedicamento](https://simplifier.net/redenacionaldedadosemsaude/brprescricaomedicamento) para descrever a prescrição de medicamentos. Cada um dos medicamentos prescritos são descritos utilizando outra estrutura, a structuredefinition [BRMedicamento](https://simplifier.net/redenacionaldedadosemsaude/brmedicamento). Os modelos da RNDS não contemplam todos os caso de uso previstos para os casos de uso do recurso MedicationRequest.  O perfil [br-core-medicationrequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest) foi criado para atender  todos os casos de uso de prescrição de medicamentos: comunitários, ambulatoriais medicamentos controlados, prescrição única e de uso contínuo e de venda livre  em farmácias comerciais.

### Identificadores

Não se aplica.

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

O recurso [br-core-medicationrequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest) é utilizado solicitar ou pedir medicamentos para um indivíduo. Este também pode ser utilizado para relatar uma solicitação ou pedido de medicamento de uma organização ou fonte para outra. Ao solicitar suprimentos ou dispositivos quando há um foco no paciente ou instruções sobre seu uso, [SupplyRequest](https://www.hl7.org/fhir/R4/supplyrequest.html) ou [DeviceRequest](https://www.hl7.org/fhir/R4/devicerequest.html) devem ser utilizados. Ao relatar o uso de um medicamento por um paciente, o recurso [br-core-medicationrequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest) deve ser utilizado.

O domínio Medicamentos inclui uma série de recursos relacionados:


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

Este recurso é referenciado por [br-core-careplan](https://www.hl7.org/fhir/R4/careplan.html#CarePlan), [Claim](https://www.hl7.org/fhir/R4/claim.html#Claim), [br-core-diagnosticreport](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticresport), [ExplanationOfBenefit](https://www.hl7.org/fhir/R4/explanationofbenefit.html#ExplanationOfBenefit), [br-core-medicationadministration](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration), [br-core-medicationdispense](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense), [br-core-medicationstatement](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationastatement), [br-core-observation](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation) e [br-core-servicerequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest).




