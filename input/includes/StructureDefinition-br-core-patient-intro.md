### Exemplos de cenários de uso:

- Consulta por informações demográficas do paciente usando o identificador CPF.

### Elementos de dados obrigatórios e que devem estar presentes (must support)  

Os seguintes elementos de dados devem estar sempre presentes (definição FHIR [mandatory](https://build.fhir.org/ig/HL7/US-Core/must-support.html)) ou devem ser suportados se os dados estiverem presentes no sistema de envio (definição FHIR [must support](https://build.fhir.org/ig/HL7/US-Core/must-support.html)). 

### Identificadores

Cada paciente deve ter obrigatoriamente um identificador, conforme as extensões abaixo:

<table border="1">
  <thead>
    <tr>
      <th>Elemento</th>
      <th>Descrição</th>
      <th>Cardinalidade</th>
      <th>CodeSystem</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Identifier:cpf</td>
      <td>O CPF é um identificador de pessoa física no Brasil, definido como número único e suficiente para identificação do cidadão nos bancos de dados de serviços públicos e é composto por 11 dígitos, sendo os 2 últimos dígitos os verificadores do CPF. Todo o paciente deve possuir obrigatoriamente um identificador, que deve ser o Cadastro de Pessoa Física (CPF) conforme a <a href="http://legislacao.planalto.gov.br/legisla/legislacao.nsf/Viw_Identificacao/lei%2014.534-2023?OpenDocument">LEI Nº 14.534, DE 11 DE JANEIRO DE 2023</a>.</td>
      <td>0..1</td>
      <td><a href="http://terminology.hl7.org/CodeSystem/v2-0203">http://terminology.hl7.org/CodeSystem/v2-0203</a> fixo em ‘TAX’</td>
    </tr>
    <tr>
      <td>Identifier:cns</td>
      <td>O CNS também é um identificador do paciente no âmbito do Sistema Único de Saúde (SUS), é composto por 15 dígitos onde os 2 últimos são verificadores do CNS.</td>
      <td>0..1</td>
      <td><a href="http://terminology.hl7.org/CodeSystem/v2-0203">http://terminology.hl7.org/CodeSystem/v2-0203</a> fixo em ‘HC’</td>
    </tr>
    <tr>
      <td>Identifier:registroEstrangeiro</td>
      <td>Registro Nacional de Estrangeiros (RNE) é um documento que atesta a identidade de indivíduos estrangeiros com residência temporária ou permanente no Brasil. A Carteira de Registro Nacional Migratório (CRNM) está substituindo, aos poucos, o antigo RNE (Registro Nacional de Estrangeiro). A mudança veio após a Lei de Migração (Lei nº 13.445, de 24 de maio de 2017). O modelo atual foi definido pela Portaria nº 11.264, de 24 de janeiro de 2020. Neste perfil foi criada uma extensão para representar o documento RNE – Registro Nacional de Estrangeiro e foi criado um NamingSystem - <a href="https://saude.gov.br/sid/rne">https://saude.gov.br/sid/rne</a>.</td>
      <td>0..1</td>
      <td><a href="https://terminologia-br-ig.web.app/ValueSet-BRTipoIdentificador">https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoIdentificador</a> fixo em ‘RNE’</td>
    </tr>
    <tr>
      <td>Identifier:passaporte</td>
      <td>Passaporte é um documento oficial de viagem emitido por um governo que contém a identidade de uma pessoa para viagens internacionais. Uma pessoa com passaporte pode viajar de e para países estrangeiros com mais facilidade e ter acesso à assistência consular. Um passaporte certifica a identidade pessoal e a nacionalidade do seu titular.</td>
      <td>0..1</td>
      <td><a href="http://terminology.hl7.org/CodeSystem/v2-0203">http://terminology.hl7.org/CodeSystem/v2-0203</a> fixo em ‘PPN’</td>
    </tr>
  </tbody>
</table>
    
<h2>Extensões adicionais do recurso br-core-patient </h2>

<table border="1">
    <thead>
        <tr>
        <th>Elemento</th>
        <th>Descrição</th>
        <th>Cardinalidade</th>
        <th>CodeSystem</th>
        </tr>
    </thead>
  <tbody>
    <tr>
      <td>localNascimento</td>
      <td>Informa no datatype Address o local de nascimento do paciente. Pode ser informado o endereço completo ou apenas, cidade e país ou apenas país.</td>
      <td>0..1</td>
      <td></td>
    </tr>
    <tr>
      <td>raca</td>
      <td>Informa a raça do paciente – informação obrigatória conforme <a href="http://pesquisa.in.gov.br/imprensa/jsp/visualiza/index.jsp?jornal=1&pagina=62&data=02/02/2017">Portaria nº 344 de 1º de fevereiro de 2017</a>.</td>
      <td>1..1</td>
      <td><a href="https://terminologia-br-ig.web.app/CodeSystem-BRRacaCor.html">https://terminologia.saude.gov.br/fhir/CodeSystem/BRRacaCor</a></td>
    </tr>
    <tr>
      <td>povoIndigena</td>
      <td>Informa a etnia indígena conforme Portaria Nº 508, de 28 de setembro de 2010 e Portaria Nº 719, de 28 de dezembro de 2007. NT 7/2023 CGCOIM/SESAI.</td>
      <td>0..1</td>
      <td><a href="https://terminologia-br-ig.web.app/ValueSet-BREtniaIndigena">https://terminologia.saude.gov.br/fhir/ValueSet/BREtniaIndigena</a></td>
    </tr>
    <tr>
      <td>povoTradicional</td>
      <td>Povos e comunidades tradicionais são grupos culturalmente diferenciados e que se reconhecem como tais, que possuem formas próprias de organização social, que ocupam e usam territórios e recursos naturais como condição para sua reprodução cultural, social, religiosa, ancestral e econômica, utilizando conhecimentos, inovações e práticas gerados e transmitidos pela tradição (inciso I Art. 3º Decreto 6.040 / 2007). <a href="https://www.in.gov.br/en/web/dou/-/portaria-gm/ms-n-3.396-de-11-de-dezembro-de-2020-294083290">Portaria GM/MS Nº 3.396, DE 11 de dezembro de 2020</a>.</td>
      <td>0..1</td>
      <td><a href="https://terminologia-br-ig.web.app/ValueSet-BRPopulacaoTradicional">https://terminologia.saude.gov.br/fhir/CodeSystem/BRPopulacaoTradicional</a></td>
    </tr>
    <tr>
      <td>povoItinerante</td>
      <td>População em situação de rua, ciganos, circenses, andarilhos, acampados, assentados, etc ou mesmo trabalhadores da área adstrita. Portaria Nº 2.436, de 21 de setembro de 2017.</td>
      <td>0..1</td>
      <!-- <td><a href="https://terminologia-br-ig.web.app/ValueSet-BRPovoItinerante">https://terminologia.saude.gov.br/fhir/CodeSystem/BRPovoItinerante</a></td>--> 
      
    </tr>
    <tr>
      <td>sexoNascimento</td>
      <td>Sexo do nascimento do paciente.</td>
      <td>0..1</td>
      <td><a href="https://terminologia-br-ig.web.app/ValueSet-BRSexoNascimento">https://terminologia.saude.gov.br/fhir/ValueSet/BRSexoNascimento</a></td>
    </tr>
    <tr>
      <td>identidadeGenero</td>
      <td>Consiste no <b>modo como o indivíduo se identifica com o seu gênero. Em suma, representa como a pessoa se reconhece: homem, mulher, ambos ou outros gêneros.</b> O que determina a identidade de gênero é a maneira como a pessoa se sente e se percebe, assim como a forma que esta deseja ser reconhecida pelas outras pessoas.</td>
      <td>0..1</td>
      <td><a href="https://terminologia-br-ig.web.app/ValueSet-BRIdentidadeGenero">https://terminologia.saude.gov.br/fhir/ValueSet/BRIdentidadeGenero</a></td>
    </tr>
  </tbody>
</table>

<h2> Orientações para implementação </h2>

O endereço do paciente será representado pelo tipo de dados Address do FHIR R4. Observar que: 

<table border="1">
  <thead>
    <tr>
      <th>Elemento</th>
      <th>Descrição</th>
      <th>Cardinalidade</th>
      <th>Tipo de dados</th>
      <th>Binding</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>use</td>
      <td>Propósito deste endereço</td>
      <td>0..1</td>
      <td>code</td>
      <td><a href="https://terminologia.saude.gov.br/#/orgs/HL7/collections/address-use/">https://terminologia.saude.gov.br/#/orgs/HL7/collections/address-use/</a></td>
    </tr>
    <tr>
      <td>type</td>
      <td>Tipo de endereço</td>
      <td>0..1</td>
      <td>code</td>
      <td><a href="https://terminologia.saude.gov.br/#/orgs/HL7/collections/address-type/">https://terminologia.saude.gov.br/#/orgs/HL7/collections/address-type/</a></td>
    </tr>
    <tr>
      <td>text</td>
      <td>Representação em texto do endereço</td>
      <td>0..1</td>
      <td>string</td>
      <td>Exemplo: Av Riachuelo, 230 apto 100 – Porto Alegre, RS -9430-060, Brasil</td>
    </tr>
    <tr>
      <td>line</td>
      <td>Nome da rua, número, cidade, estado, cep etc. Esta ordem de elementos repetidos: A ordem em que as linhas devem aparecer em uma etiqueta de endereço</td>
      <td>0..1</td>
      <td>string</td>
      <td></td>
    </tr>
    <tr>
      <td>city</td>
      <td>Nome da cidade</td>
      <td>0..1</td>
      <td>string</td>
      <td>Colocar o texto que representa o nome da cidade. NÃO COLOCAR CÓDIGO IBGE DA CIDADE.</td>
    </tr>
    <tr>
      <td>state</td>
      <td>Nome do estado</td>
      <td>0..1</td>
      <td>string</td>
      <td>Colocar a UF do endereço do paciente com duas letras. Utilizar os códigos das UF conforme representados no atributo UF do <a href="https://terminologia.saude.gov.br/#/orgs/IBGE/sources/IBGE_uf_display/">https://terminologia.saude.gov.br/#/orgs/IBGE/sources/IBGE_uf_display/</a> para cada um dos estados quando o endereço for no Brasil.</td>
    </tr>
    <tr>
      <td>postalCode</td>
      <td>CEP do endereço</td>
      <td>0..1</td>
      <td>string</td>
      <td></td>
    </tr>
    <tr>
      <td>country</td>
      <td>Nome do país</td>
      <td>0..1</td>
      <td>string</td>
      <td>Utilizar <a href="https://terminologia.saude.gov.br/#/orgs/ISO/sources/iso3166/">https://terminologia.saude.gov.br/#/orgs/ISO/sources/iso3166/</a></td>
    </tr>
  </tbody>
</table>

