### Escopo/Uso

Este recurso abrange o fornecimento de medicamentos a um paciente. Exemplos incluem dispensação e retirada de uma farmácia ambulatorial ou comunitária, dispensação de medicamentos específicos do paciente da farmácia hospitalar para uma enfermaria, bem como emissão de uma dose única do estoque da enfermaria para um paciente para consumo final.  

MedicationDispense é um recurso de evento de uma perspectiva de fluxo de trabalho FHIR - veja [https://hl7.org/fhir/r4/workflow.html#event](https://hl7.org/fhir/r4/workflow.html#event).

### Caso de uso

O recurso brasileiro [br-core-medicationdispense](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense) restringe os casos de uso do Recurso FHIR canônico, e deve ser utilizado para dispensação de qualquer medicamento, em qualquer tipo de estabelecimento, mesmo não vinculado ao SUS.

O recurso [br-core-medicationdispense](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationdispense) contempla as seguintes situações de uso:

-	Solicitações de medicamentos de Atenção Primária, Assistência Comunitária e Atendimento de Urgência e Emergência em uma farmácia do SUS;
-	Solicitações de medicamentos ambulatoriais para uma farmácia privada;
-	Solicitações de medicamentos ambulatoriais a um provedor de medicamentos; 
-	Solicitações de medicamentos para internação, para um paciente nomeado, a serem dispensados pela farmácia do hospital e destinados à administração em um leito do hospital;
-	Solicitações de medicamentos para um paciente nomeado que está em licença de curta duração de uma internação (mas não recebeu alta), a serem dispensados pela farmácia do hospital e destinados à administração em casa;
-	Solicitações de medicamentos na alta, para um paciente nomeado, a serem dispensados pela farmácia do hospital e emitidos na alta para administração em casa;
-	Solicitações de medicamentos ambulatoriais, para um paciente nomeado, a serem dispensados pela farmácia do hospital e destinados à administração no departamento ambulatorial, departamento de emergência ou unidade de hospital-dia;
-	Solicitações de medicamentos ambulatoriais, para um paciente nomeado, a serem dispensados pela farmácia do hospital para administração em casa.

### Caso de uso da RNDS

NA RNDS o registro de Dispensação de Medicamentos (RDM)  é descrito como um documento clínico (composition) conforme [BRRegistrodispensacaomedicamento](https://simplifier.net/redenacionaldedadosemsaude/brregistrodispensacaomedicamento). Esta estrutura referencia o recurso RNDS [BRDispensacaoMedicamento](https://simplifier.net/redenacionaldedadosemsaude/brdispensacaomedicamento) que é o FHIR R4 – medicationdispense, ou seja, exatamente o que está sendo descrito aqui. Na RNDS este registro está limitado a  dispensação de medicamentos **não sujeitos a controle especial ocorrida em âmbito de atendimento ambulatorial por unidades públicas de saúde, unidades privadas financiadas pelo SUS ou pelo Programa Farmácia Popular do Brasil**, conforme modelo disposto no Anexo B da Portaria SAES/MS nº 50/2022. 

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos de dados devem estar sempre presentes ( definição Mandatory ) ou devem ser suportados se os dados estiverem presentes no sistema de envio ( definição Must Support ). Eles são apresentados abaixo em uma explicação simples e legível por humanos. Orientações e exemplos específicos de perfil também são fornecidos. As Exibições Formais abaixo fornecem o resumo formal, definições e requisitos de terminologia.

**Cada medicamento dispensado deve ter:**

1.	um status (por exemplo, dispensado, não dispensado)
2.	um medicamento*
3.	um paciente
* veja orientação abaixo

**Cada dispensação de medicamento deve suportar:**

1.	o encontro associado à dispensação
2.	quem dispensou o medicamento
3.	a prescrição autorizadora
4.	tipo de dispensação (por exemplo, parcialmente dispensado)
5.	a quantidade dispensada
6.	uma data para quando o medicamento foi dispensado ao paciente
7.	instruções de dosagem em texto livre
8.	quando a medicação deve ser administrada
9.	a via de administração
10.	a dose e a taxa (doseAndRate)

**Orientações de implementação específicas do perfil:**

-	O recurso MedicationDispense é usado para representar o status de dispensação de medicamento no Brasil, excetuando os medicamentos  de receitas controladas  pela ANVISA, que ainda exigem que as receitas físicas sejam retidas na farmácia.
Este Perfil pode representar um medicamento usando um código ou fazer referência a um recurso de Medicamento .
    -	De acordo com a RNDS, [BRRegistrodispensacaomedicamento](https://simplifier.net/redenacionaldedadosemsaude/brregistrodispensacaomedicamento), ao se utilizar o medication[medicationCodeableConcept]  os conceitos da Ontologia Brasileira de Medicamentos (OBM) deverão ser utilizados (http://portal-obm.saude.gov.br). 
    -	Ao referenciar um recurso de Medicamento no elemento em medication[medicationReference],   o recurso pode ser contido ou um recurso externo.
    -	Os sistemas não precisam suportar um código e uma referência, mas **DEVEM** suportar pelo menos um desses métodos.
    -	Se uma referência externa a um recurso de medicação for usada, o servidor **DEVERÁ** suportar o _includeparâmetro para pesquisar este elemento.
    -	O aplicativo cliente **DEVE** suportar todos os tipos de métodos.

### Limites e relacionamentos

O domínio Medicação(Medication) inclui uma série de recursos relacionados, conforme abaixo:

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