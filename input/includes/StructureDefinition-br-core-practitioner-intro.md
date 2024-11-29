### Escopo/Uso

O perfil [br-core-practitioner](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner.html) abrange todos os indivíduos envolvidos no processo de assistência à saúde e serviços relacionados à saúde como parte de suas responsabilidades. Os profissionais incluem (mas não estão limitados a): médicos, farmacêuticos, dentistas, enfermeiros e outros profissionais que lidam com o registro do paciente, bem como a equipe que lida com a gestão de tecnologia da informação.

O recurso Profissional representa qualquer pessoa envolvida na prestação de cuidados ou serviços a um paciente e está associado a uma Organização.

### Uso indevido

Este recurso não deve ser utilizado para representar paciente, estabelecimento ou operadora de saúde.

### Caso de uso

O profissional desempenha diferentes papeis dentro de uma ou mais organizações. Dependendo da jurisdição e costume, pode ser necessário manter um recurso Profissional específico para cada função ou ter um único Profissional com várias funções. A função pode ser limitada a um período específico.   

### Identificadores

O paciente deve possuir obrigatoriamente um identificador, que pode ser o Cadastro de Pessoa Física (CPF) ou o Cartão Nacional de Saúde (CNS) conforme os modelos de informação de lançamentos.

O CPF é um identificador de pessoa física no Brasil, definido como número único e suficiente para identificação do cidadão nos bancos de dados de serviços públicos e é composto por 11 dígitos ([http://terminology.hl7.org/CodeSystem/v2-0203#TAX](http://terminology.hl7.org/CodeSystem/v2-0203#TAX)), sendo os 2 últimos dígitos os verificadores do CPF.

O CNS também é um identificador do paciente no âmbito do Sistema Único de Saúde (SUS), é composto por 15 dígitos ([https://saude.gov.br/sid/cns](https://saude.gov.br/sid/cns)), onde os 2 últimos são verificadores do CNS.

Os identificadores enviados pela RNDS não possuem o identifier.system, por este motivo estão sendo identificados pelo seu tamanho conforme abaixo:

<table border="1">
  <thead>
    <tr>
      <th>Identificador</th>
      <th>Tamanho</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>CNS</td>
      <td>15 caracteres</td>
    </tr>
    <tr>
      <td>CPF</td>
      <td>11 caracteres</td>
    </tr>
  </tbody>
</table>

Foram criadas extensões para representar os identificadores de todos os profissionais de saúde que podem assinar o prontuário do paciente, de acordo com os respectivos conselhos profissionais. Para cada um destes conselhos foi criado um NamingSystem conforme abaixo:

<table border="1">
  <thead>
    <tr>
      <td>Profissional</td>
      <td>Conselho Profissional</td>
      <td>NamingSystem</td>
      <td>Domínio do system ID</td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Médico</td>
      <td>Conselhos Regionais de Medicina do Brasil<br><br>Practitioner.identifier:identificadorMedico.type<br>Fixed Value: <a href="http://terminology.hl7.org/CodeSystem/v2-0203">MD</a></td>
      <td></td>
      <td><a href="https://terminologia.saude.gov.br/fhir/ValueSet/BRCRM">https://terminologia.saude.gov.br/fhir/ValueSet/BRCRM</a></td>
    </tr>
    <tr>
      <td>Farmacêutico</td>
      <td>Conselhos regionais de Farmácia do Brasil<br><br>Practitioner.identifier:identificadorFarmaceutico.type<br>Fixed Value: <a href="http://terminology.hl7.org/CodeSystem/v2-0203">RPH</a></td>
      <td></td>
      <td><a href="https://terminologia.saude.gov.br/ValueSet-BRCRF.html">https://terminologia.saude.gov.br/ValueSet-BRCRF.html</a></td>
    </tr>
    <tr>
      <td>Odontólogo</td>
      <td>Conselhos regionais de Odontologia do Brasil<br><br>Practitioner.identifier:identificadorOdontologo.type<br>Fixed Value:<a href="http://terminology.hl7.org/CodeSystem/v2-0203">DDS</a></td>
      <td></td>
      <td><a href="https://terminologia.saude.gov.br/fhir/ValueSet/BRCRO">https://terminologia.saude.gov.br/fhir/ValueSet/BRCRO</a></td>
    </tr>
    <tr>
      <td>Enfermeiro</td>
      <td>Conselhos regionais de Enfermagem do Brasil<br><br>Practitioner.identifier:identificadorEnfermeiro.type<br>Fixed Value: RN</td>
      <td></td>
      <td><a href="https://terminologia.saude.gov.br/fhir/ValueSet/BRCOREN">https://terminologia.saude.gov.br/fhir/ValueSet/BRCOREN</a></td>
    </tr>
    <tr>
      <td>Outros Profissionais de Saúde (Psicologia, Fisioterapia, Nutricionista, Fonoaudiologia)</td>
      <td>Conselhos regionais de outros profissionais da saúde do Brasil<br><br>Practitioner.identifier:identificadorOutrosProfissionais.type<br>Fixed Value:<a href="http://terminology.hl7.org/CodeSystem/v2-0203">RI</a></td>
      <td></td>
      <td><a href="https://terminologia-br-ig.web.app/ValueSet-BROutrosProfissionais.html">https://terminologia-br-ig.web.app/ValueSet-BROutrosProfissionais.html</a></td>
    </tr>
  </tbody>
</table>

### Limites e relacionamentos

O recurso [br-core-practitioner](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner.html) NÃO DEVE ser utilizado para pessoas envolvidas sem uma responsabilidade formal no cuidado e saúde, tais como: pessoas cuidando de amigos, parentes ou vizinhos. Estes podem ser registrados como Contato do Paciente. Se estiverem realizando alguma ação ou sendo referenciado por outro recurso, use o recurso [br-core-relatedperson](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson.html) para representá-los.

As principais diferenças entre um perfil [br-core-practitioner](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner.html) e um perfil  [br-core-relatedperson](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson.html) nas situações descritas abaixo:
-	Se a pessoa/animal opera em nome da organização de prestação de cuidados em vários pacientes, então será um [br-core-practitioner](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner.html),
-	Se a pessoa/animal não está associado à organização e, em vez disso, executa tarefas especificamente para um paciente, então será um [br-core-relatedperson](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-relatedperson.html),
-	Uma extensão do practitioner [animalSpecies](http://hl7.org/fhir/R4/extension-practitioner-animalspecies.html) pode ser usada para indicar a espécie de um animal de serviço.

O recurso [br-core-practitioner](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitioner.html) fornece os detalhes das funções que o profissional pode exercer em quais organizações (e em quais locais e, opcionalmente, quais serviços também).

Os profissionais também são frequentemente agrupados em CareTeams independentemente de suas funções, onde o CareTeam define qual função específica que estão desempenhando dentro da equipe e pode ou não ter recursos [br-core-practitionerrole](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole.html) criados para o profissional (quer no contexto da equipe de atendimento, ou da organização que o profissional está representando).

### Elementos de dados obrigatórios e que devem estar presentes (Must Support)  

**Identificadores** (se existirem identificadores de uso obrigatório ou MS estes devem ser descritos aqui, com a respectiva legislação se forem obrigatórios)

<table border="1">
  <thead>
    <tr>
      <th>Elemento</th>
      <th>Descrição/Legislação</th>
      <th>Cardinalidade</th>
      <th>URL CodeSystem</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>name.use</td>
      <td>Usos do nome. DECRETO Nº 8.727, DE 28 DE ABRIL DE 2016 (Dispõe sobre o uso do nome social e o reconhecimento da identidade de gênero de pessoas travestis e transexuais no âmbito da administração pública federal direta, autárquica e fundacional.)</td>
      <td>1..1</td>
      <td><a href="http://hl7.org/fhir/ValueSet/identifier-use">http://hl7.org/fhir/ValueSet/identifier-use</a><br>Para o o nome social o code deve ser ‘usual’</td>
    </tr>
    <tr>
      <td>qualification.code</td>
      <td>Descreve a qualificação do profissional <a href="https://bvsms.saude.gov.br/bvs/saudelegis/gm/2020/prt0458_20_03_2020.html#:~:text=Altera%20a%20Portaria%20de%20Consolidação,CNAE)%20nos%20sistemas%20de%20informação.">PORTARIA Nº 458, DE 20 DE MARÇO DE 2020</a> (Altera a Portaria de Consolidação nº 1/GM/MS, de 28 de setembro de 2017 e nº 2, de 28 de setembro de 2017, para dispor sobre a inclusão e o preenchimento obrigatório dos campos Classificação Brasileira de Ocupações (CBO) eClassificação Nacional de Atividades Econômicas (CNAE) nos sistemas de informação)</td>
      <td>1..1</td>
      <td><a href="https://terminologia.saude.gov.br/fhir/ValueSystem-BRCBO.html">https://terminologia.saude.gov.br/fhir/ValueSystem-BRCBO.html</a></td>
    </tr>
  </tbody>
</table>

### Extensões

Este perfil não possui extensões.

### Limites e relacionamentos

Este perfil pode ser referenciado por outros recursos para determinadas ações relacionadas aos profissionais. Por exemplo, este perfil faz referência ao perfil br-core-organization que indica o estabelecimento de saúde do profissional.