### Escopo/Uso

Este recurso abrange a administração de todos os medicamentos, mas não a administração de vacinas. Consulte o recurso/Perfil [br-core-immunization](https://saude.go.br/fhir/StructureDefinition/br-core-immunization) para registrar a administração de vacinas. O recurso [br-core-medicationadministration](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration) será usado principalmente em ambientes de atendimento (incluindo internação) para registrar a captura de administrações de medicamentos, incluindo autoadministrações de medicamentos orais, injeções, ajustes intravenosos, etc. Este recurso pode também ser utilizado em ambientes ambulatoriais para registrar vacinas contra alergia e outras administrações não relacionadas à imunização. Em alguns casos, ele pode ser usado para relatórios de saúde domiciliar, como registrar insulina autoadministrada ou mesmo administrada por um dispositivo.
O recurso br-core-medicationadministration é um recurso de evento de uma perspectiva de fluxo de trabalho FHIR - veja Evento de fluxo de trabalho

O recurso [br-core-medicationadministration](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration) é um recurso de evento de uma perspectiva de fluxo de trabalho FHIR - veja Evento de fluxo de trabalho

### Caso de uso

O recurso [br-core-medicationadministration](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration) no FHIR é utilizado para documentar e rastrear a administração de medicamentos a um paciente, mas não faz parte dos documentos clínicos da RNDS. Este recurso desempenha um papel importante em sistemas de prescrição, gerenciamento de terapias e auditorias clínicas. As seguintes situações de uso se aplicam a este recurso:

1. Registro de Administração de Medicamentos em Hospitais
-	Descrição: Enfermeiros registram a administração de medicamentos no ponto de cuidado (por exemplo, via sistemas de prontuário eletrônico).
2. Monitoramento de Terapias Intravenosas
-	Descrição: Representação de infusões contínuas ou intermitentes, incluindo taxa de fluxo, tipo de solução e aditivos.
3. Auditorias e Conformidade
-	Descrição: Rastrear administrações para atender a regulamentações e garantir conformidade com protocolos hospitalares.
4. Administração de Medicamentos em Casa
-	Descrição: Pacientes ou cuidadores registram a administração de medicamentos prescritos em dispositivos ou aplicativos.
5. Suporte a Estudos Clínicos
-	Descrição: Registro detalhado de administrações para documentar a adesão ao protocolo de estudos.
6. Geração de Alarmes em Tempo Real
-	Descrição: Integração com dispositivos para monitorar atrasos ou falhas na administração planejada.
7. Comunicação entre Sistemas
-	Descrição: Troca de informações sobre administração entre diferentes sistemas, como farmácias, dispositivos de infusão e Registros Eletrônicos de Saúde.
8. Registro de Reações Adversas Imediatas
-	Descrição: Documentação de eventos adversos ocorridos durante ou imediatamente após a administração.

### Limites e relacionamentos

O recurso [br-core-medicationadministration](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration) é destinado a rastrear a administração de medicamentos não vacinais. A administração de vacinas deve ser manipulada usando o recurso [br-core-immunization](https://saude.go.br/fhir/StructureDefinition/br-core-immunization) . Alguns sistemas tratam imunizações da mesma forma que qualquer outra administração de medicamentos. Esses sistemas DEVEM usar um recurso de [br-core-immunization](https://saude.go.br/fhir/StructureDefinition/br-core-immunization) para representá-los. Se os sistemas precisarem usar um recurso [br-core-medicationadministration](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration) para capturar vacinações para fluxo de trabalho ou outros motivos, eles DEVEM também criar e expor uma instância do [br-core-immunization](https://saude.go.br/fhir/StructureDefinition/br-core-immunization).

O domínio de medicamentos inclui uma série de recursos relacionados:

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