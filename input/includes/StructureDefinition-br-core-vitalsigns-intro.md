### Escopo/Uso

Os sinais vitais são observações físicas que indicam as funções de sustentação da vida do corpo. Eles são realizados para avaliar a saúde física geral, dar pistas sobre possíveis estados de doença ou para mostrar progresso em direção à recuperação. É necessária que exista uma estrutura única e vocabulários padrão para representar cada sinal vital, e permitir o acesso onipresente e a reutilização das Observation dos sinais vitais. Principalmente com o uso de vestíveis pelos pacientes onde desejam ou precisam compartilhar informações desses dispositivos. Para atender a esta necessidade, deve haver um vocabulário consistente e uma sintaxe comum para alcançar a interoperabilidade semântica. 

O objetivo do perfil de [VitalSigns](https://hl7.org/fhir/R4/observation-vitalsigns.html) neste guia de implementação é fornecer um mecanismo para capturar as observações de sinais vitais associados a um paciente informado pelos perfis da RNDS que incluem os sinais vitais, ou seja, pressão arterial, temperatura corporal, frequência cardíaca e frequência respiratória. Também é possível incluir outros achados clínicos neste perfil, tais como: como altura, peso, índice de massa corporal, perímetro cefálico, oximetria de pulso e circunferência abdominal. Em particular, podem ser incluídos sinais vitais notáveis ou achados físicos, como os mais recentes, máximos e/ou mínimos, linha de base ou tendências relevantes.

### Cenários de uso

As informações de sinais vitais são enviadas para a RNDS a partir do Sumário do Atendimento Clínico (RAC). No RAC essas informações foram incluídas na Structure Definition BRMedidaObservada, que contém um valueset, BRTipoObservacao-1.0 para categorizar os tipos de observações registradas, as quais, além de observações de sinais vitais, incluem vários outros tipos de observações que não são pertinentes ao perfil br-core-observationvitalsigns. 

### Caso de uso da RNDS

Apenas os conceitos relacionados ao perfil Sinais Vitais serão apresentados no perfil br-core-vitalsigns. O curador de sumário identificará que se trata de uma estrutura de BRMedidaObservada e testará o código LOINC enviado no elemento value.  

A Tabela 1 representa o conjunto mínimo de conceitos de sinais vitais e os códigos LOINC que serão usados para representar observações de sinais vitais RNDS no IPS.

**Tabela 1. Sinais Vitais expressos no ValueSet BRSinaisVitais**

<table border="1">
  <thead>
    <tr>
      <th>Código LOINC</th>
      <th>Descrição do conceito</th>
      <th>Nome e comentários do LOINC</th>
      <th>Unidade de Medida UCUM</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>8302-2</td>
      <td><a href="https://hl7.org/fhir/R4/bodyheight.html">Altura</a></td>
      <td>Altura do corpo</td>
      <td>cm, [in_i]</td>
    </tr>
    <tr>
      <td>9843-4</td>
      <td><a href="https://hl7.org/fhir/R4/headcircum.html">Perímetro cefálico</a></td>
      <td>Circunferência occipital-frontal da cabeça</td>
      <td>cm, [in_i]</td>
    </tr>
    <tr>
      <td>29463-7</td>
      <td><a href="https://hl7.org/fhir/R4/bodyweight.html">Peso corporal</a></td>
      <td>Peso corporal</td>
      <td>g, Kg, [lb_av]</td>
    </tr>
    <tr>
      <td>8480-6</td>
      <td><a href="https://hl7.org/fhir/R4/bp.html">Pressão arterial sistólica</a></td>
      <td>Pressão arterial sistólica</td>
      <td>Mm[Hg]</td>
    </tr>
    <tr>
      <td>8462-4</td>
      <td><a href="https://hl7.org/fhir/R4/bp.html">Pressão sanguínea diastólica</a></td>
      <td>Pressão sanguínea diastólica</td>
      <td>Mm[Hg]</td>
    </tr>
    <tr>
      <td>8280-0</td>
      <td>Circunferência abdominal</td>
      <td>Circunferência da cintura no umbigo por fita métrica</td>
      <td>cm, [in_i]</td>
    </tr>
   <tr>
      <td>9279-1</td>
      <td>Frequência respiratória</td>
      <td>Frequência respiratória</td>
      <td>/min</td>
    </tr>
    <tr>
      <td>8867-4</td>
      <td>Frequência cardíaca</td>
      <td>Frequência cardíaca</td>
      <td>/min</td>
    </tr>
    <tr>
      <td>2708-6</td>
      <td>Saturação de Oxigênio</td>
      <td>Saturação de Oxigênio</td>
      <td>%</td>
    </tr>
    <tr>
      <td>8310-5</td>
      <td>Temperatura corporal</td>
      <td>Temperatura corporal</td>
      <td>Cel, [degF]</td>
    </tr>
    <tr>
      <td>39156-5</td>
      <td>IMC</td>
      <td>IMC – Índice de massa corporal</td>
      <td>kg/m2</td>
    </tr>
  </tbody>
</table>

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos são obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support). 

**Cada Observation-VitalSigns deve ter:**

1.	um status,
2.	um código de categoria de 'sinais vitais',
3.	um "valor" que informa o que está sendo medido,
- A terminologia LOINC foi a escolhida para representar os “valores” dos sinais vitais uma vez que esta é terminologia mais utilizada na maioria dos países para representar este tipo de observação. Os implementadores que precisam usar um sistema de código diferente podem mapear adequadamente seus códigos locais para a terminologia.
4.	um paciente,
5.	um horário que indica quando a medição foi feita

**Cada Observation-VitalSigns deve oferecer suporte a:**

1.	um valor de resultado numérico e uma unidade UCUM padrão.
-	nota: se não houver resultado numérico, deverá ser fornecido um motivo
2.	uma razão, se o valor estiver ausente
3.	resultados dos componentes

### Orientações de implementação específicas do perfil

Não se aplica.

### Limites e relacionamentos

Não se aplica.