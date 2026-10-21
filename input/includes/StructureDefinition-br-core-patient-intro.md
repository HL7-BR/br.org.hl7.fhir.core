### Sobre o perfil

O br-core-patient representa a pessoa que recebe cuidados de saúde no Brasil. É um perfil de recurso: os documentos clínicos (Sumário de Alta, Registro de Atendimento Clínico, Registro de Imunobiológico Administrado) e os recursos clínicos do BR-Core apontam para ele em `subject` ou `patient`, sem redefini-lo.

Os dados do perfil seguem o Modelo de Informação do Cadastro Nacional de Usuários do SUS (CadSUS), no Anexo XLII da Portaria de Consolidação GM/MS nº 1/2017, na redação da Portaria GM/MS nº 12.263/2026. A tabela [br-core-patient e o Modelo de Informação do CadSUS](#cadsus) mostra onde cada dado do Anexo fica no perfil, e o modelo lógico [br-core-cadsus-ml](StructureDefinition-br-core-cadsus-ml.html) registra as lacunas.

### Cenários de uso

- Identificar o paciente de um documento clínico depois de consultar o CadSUS, com CPF, CNS ou ambos.
- Identificar o recém-nascido sem registro civil e sem CPF pelo CNS provisório gerado no CadSUS. Ver o [exemplo](Patient-7d2e9b41-3c58-4f0a-9e16-5b8a2c7f4d03.html).
- Consultar dados demográficos do paciente pelo CPF ou pelo CNS.

### Obrigatório e mustSupport

Toda instância deve ter CPF ou CNS (invariante br-core-pat-2) e um nome, ou o motivo da ausência do nome em data-absent-reason (invariante br-core-pat-1).

O CPF e a raça/cor são mustSupport, com o significado definido na seção [Suporte obrigatório (mustSupport) no BR-Core](index.html#mustsupport): o emissor envia o dado sempre que o tem, e o receptor aceita e guarda o dado quando presente. A ausência de um elemento mustSupport opcional não invalida a instância.

A ausência de dado segue a seção [Dados ausentes](index.html#dadosausentes). A raça/cor é a exceção prevista ali: a extensão do IPS Brasil tem binding required e não aceita data-absent-reason no valor, por isso, quando a pessoa não declara, a extensão é omitida. O código 99 do BRRacaCor não é usado em instâncias novas.

### Paciente sem identificação

O br-core-patient não tem extensão de paciente não identificado. Pela Portaria GM/MS nº 12.263/2026, quem chega sem CPF e sem CNS é cadastrado no CadSUS com os dados mínimos e recebe um CNS provisório (Art. 257, § 1º), que depois é vinculado ao CPF (Art. 257, § 3º). Quem não tem nem os dados mínimos é registrado no Conjunto Mínimo de Dados (CMD), e não em documento clínico. O documento clínico é feito depois do atendimento, quando o paciente já está identificado.

### Identificadores

Os identificadores nacionais são fatias de `identifier`, discriminadas por `system`. O CPF é opcional e mustSupport: deve ser enviado sempre que conhecido. Sem CPF, o CNS é obrigatório. O CNS pode ser definitivo (`use = official`) ou provisório (`use = temp`), conforme a invariante br-core-pat-3.

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
      <td>O CPF é um identificador de pessoa física no Brasil, definido como número único e suficiente para identificação do cidadão nos bancos de dados de serviços públicos e é composto por 11 dígitos, sendo os 2 últimos dígitos os verificadores do CPF. O CPF é opcional e mustSupport: deve ser enviado sempre que conhecido, conforme a <a href="http://legislacao.planalto.gov.br/legisla/legislacao.nsf/Viw_Identificacao/lei%2014.534-2023?OpenDocument">LEI Nº 14.534, DE 11 DE JANEIRO DE 2023</a>.</td>
      <td>0..1</td>
      <td><a href="http://terminology.hl7.org/CodeSystem/v2-0203">http://terminology.hl7.org/CodeSystem/v2-0203</a> fixo em ‘TAX’</td>
    </tr>
    <tr>
      <td>Identifier:cns</td>
      <td>O CNS identifica o paciente no âmbito do Sistema Único de Saúde (SUS) e tem 15 dígitos, dos quais os 2 últimos são verificadores. Obrigatório quando não há CPF (br-core-pat-2). Definitivo com <code>use = official</code>, provisório com <code>use = temp</code> (br-core-pat-3).</td>
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
    
<h3>Extensões adicionais do recurso br-core-patient </h3>

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
      <td>Informa a raça do paciente, autodeclarada, de coleta obrigatória conforme <a href="http://pesquisa.in.gov.br/imprensa/jsp/visualiza/index.jsp?jornal=1&pagina=62&data=02/02/2017">Portaria nº 344 de 1º de fevereiro de 2017</a>. Quando a pessoa não declara, a extensão é omitida.</td>
      <td>0..1</td>
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

<h3>Identificação do paciente no documento clínico</h3>

Fluxo proposto com base na Portaria GM/MS nº 12.263/2026 (Art. 257 e Art. 259, II, da PC nº 1/2017). O sistema do estabelecimento consulta o MPI do CadSUS antes do envio e inclui o paciente no Bundle com referência literal. A exposição do MPI em PDQm e PIXm (FHIR) é recomendação ao Ministério da Saúde e ainda não está disponível.

<p><img src="br-core-identificacao-paciente.svg" alt="Identificação do paciente no documento clínico" style="max-width:100%"/></p>

<a name="cadsus"> </a>
<h3>br-core-patient e o Modelo de Informação do CadSUS</h3>

Onde cada dado do Anexo XLII da PC nº 1/2017 (Portaria GM/MS nº 12.263/2026) fica no BR-Core. Sensível: Art. 4º, § 2º. As lacunas estão no modelo lógico [br-core-cadsus-ml](StructureDefinition-br-core-cadsus-ml.html).

<table class="grid">
  <thead><tr><th>Artigo</th><th>Dado do Anexo XLII</th><th>Sensível</th><th>BR-Core</th><th>Situação</th></tr></thead>
  <tbody>
    <tr><td colspan="5"><b>Identificação (Art. 3º)</b></td></tr>
    <tr><td>I</td><td>CPF</td><td></td><td><code>identifier:cpf 0..1, mustSupport</code></td><td><span style="background:#FFEDD5;color:#7C2D12;padding:2px 8px;border-radius:10px;white-space:nowrap">Resolvido na 1.6.0</span></td></tr>
    <tr><td>II</td><td>CNS</td><td></td><td><code>identifier:cns, official ou temp; br-core-pat-2</code></td><td><span style="background:#FFEDD5;color:#7C2D12;padding:2px 8px;border-radius:10px;white-space:nowrap">Resolvido na 1.6.0</span></td></tr>
    <tr><td>III</td><td>DNV</td><td></td><td><code>sem fatia</code></td><td><span style="background:#FDE8E8;color:#7F1D1D;padding:2px 8px;border-radius:10px;white-space:nowrap">Lacuna</span></td></tr>
    <tr><td>IV, V</td><td>Nome completo e nome social</td><td></td><td><code>name; sem regra para nome social</code></td><td><span style="background:#FDE8E8;color:#7F1D1D;padding:2px 8px;border-radius:10px;white-space:nowrap">Lacuna</span></td></tr>
    <tr><td>VI, VII</td><td>Gêmeo, data de nascimento</td><td></td><td><code>multipleBirth[x], birthDate</code></td><td><span style="background:#E6F1EA;color:#1E5631;padding:2px 8px;border-radius:10px;white-space:nowrap">Coberto</span></td></tr>
    <tr><td>VIII</td><td>Filiação</td><td></td><td><code>RelatedPerson ou contact</code></td><td><span style="background:#FDE8E8;color:#7F1D1D;padding:2px 8px;border-radius:10px;white-space:nowrap">Lacuna</span></td></tr>
    <tr><td>IX, X</td><td>Sexo ao nascer, naturalidade</td><td></td><td><code>extensões sexoNascimento, localNascimento</code></td><td><span style="background:#E6F1EA;color:#1E5631;padding:2px 8px;border-radius:10px;white-space:nowrap">Coberto</span></td></tr>
    <tr><td>XI</td><td>Óbito</td><td></td><td><code>deceased[x]</code></td><td><span style="background:#E6F1EA;color:#1E5631;padding:2px 8px;border-radius:10px;white-space:nowrap">Coberto</span></td></tr>
    <tr><td colspan="5"><b>Sensíveis e autodeclarados (Art. 4º)</b></td></tr>
    <tr><td>I, II</td><td>Identidade de gênero, sexo do paciente</td><td></td><td><code>extensão identidadeGenero, gender</code></td><td><span style="background:#E6F1EA;color:#1E5631;padding:2px 8px;border-radius:10px;white-space:nowrap">Coberto</span></td></tr>
    <tr><td>III</td><td>Orientação sexual</td><td>Sim</td><td><code>Observation</code></td><td><span style="background:#EEF1F5;color:#1F3A5C;padding:2px 8px;border-radius:10px;white-space:nowrap">Fora do Patient</span></td></tr>
    <tr><td>IV</td><td>Raça/cor</td><td>Sim</td><td><code>extensão raca 0..1 MS; omitida se não declarada</code></td><td><span style="background:#FFEDD5;color:#7C2D12;padding:2px 8px;border-radius:10px;white-space:nowrap">Resolvido na 1.6.0</span></td></tr>
    <tr><td>IV, a</td><td>Etnia indígena</td><td>Sim</td><td><code>extensão povoIndigena</code></td><td><span style="background:#E6F1EA;color:#1E5631;padding:2px 8px;border-radius:10px;white-space:nowrap">Coberto</span></td></tr>
    <tr><td>§ 3º</td><td>DSEI, Polo Base, aldeado</td><td></td><td><code>sem representação</code></td><td><span style="background:#FDE8E8;color:#7F1D1D;padding:2px 8px;border-radius:10px;white-space:nowrap">Lacuna</span></td></tr>
    <tr><td>V</td><td>Quilombolas, etnia cigana</td><td>Sim</td><td><code>extensão povoTradicional</code></td><td><span style="background:#E6F1EA;color:#1E5631;padding:2px 8px;border-radius:10px;white-space:nowrap">Coberto</span></td></tr>
    <tr><td>VI</td><td>Situação de moradia</td><td></td><td><code>Observation</code></td><td><span style="background:#EEF1F5;color:#1F3A5C;padding:2px 8px;border-radius:10px;white-space:nowrap">Fora do Patient</span></td></tr>
    <tr><td>VII</td><td>Tipo sanguíneo</td><td>Sim</td><td><code>Observation</code></td><td><span style="background:#EEF1F5;color:#1F3A5C;padding:2px 8px;border-radius:10px;white-space:nowrap">Fora do Patient</span></td></tr>
    <tr><td>VIII</td><td>Pessoa com deficiência</td><td></td><td><code>Condition ou Observation</code></td><td><span style="background:#EEF1F5;color:#1F3A5C;padding:2px 8px;border-radius:10px;white-space:nowrap">Fora do Patient</span></td></tr>
    <tr><td colspan="5"><b>Endereço e contato (Art. 5º)</b></td></tr>
    <tr><td>I a IV</td><td>Endereço, e-mails, telefones</td><td></td><td><code>address, telecom; bairro e zona sem regra</code></td><td><span style="background:#FDE8E8;color:#7F1D1D;padding:2px 8px;border-radius:10px;white-space:nowrap">Lacuna</span></td></tr>
    <tr><td colspan="5"><b>Educação, trabalho e renda (Art. 6º)</b></td></tr>
    <tr><td>I a V</td><td>Escolaridade, CBO, CNAE, trabalho, programas sociais</td><td></td><td><code>Observation</code></td><td><span style="background:#EEF1F5;color:#1F3A5C;padding:2px 8px;border-radius:10px;white-space:nowrap">Fora do Patient</span></td></tr>
    <tr><td colspan="5"><b>Controle (Art. 7º)</b></td></tr>
    <tr><td>I, II</td><td>Dados protegidos, VIP</td><td></td><td><code>meta.security</code></td><td><span style="background:#E6F1EA;color:#1E5631;padding:2px 8px;border-radius:10px;white-space:nowrap">Coberto</span></td></tr>
    <tr><td>III</td><td>Situação de prioridade</td><td></td><td><code>Flag</code></td><td><span style="background:#EEF1F5;color:#1F3A5C;padding:2px 8px;border-radius:10px;white-space:nowrap">Fora do Patient</span></td></tr>
    <tr><td colspan="5"><b>Saúde suplementar e APS (Arts. 8º e 9º)</b></td></tr>
    <tr><td>8º</td><td>Planos de saúde (ANS)</td><td></td><td><code>Coverage, sem persistir</code></td><td><span style="background:#EEF1F5;color:#1F3A5C;padding:2px 8px;border-radius:10px;white-space:nowrap">Fora do Patient</span></td></tr>
    <tr><td>9º</td><td>UBS, equipe, ACS, área, microárea</td><td></td><td><code>generalPractitioner; área e microárea sem regra</code></td><td><span style="background:#FDE8E8;color:#7F1D1D;padding:2px 8px;border-radius:10px;white-space:nowrap">Lacuna</span></td></tr>
  </tbody>
</table>

<h3> Orientações para implementação </h3>

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
    <tr>
      <td>extension:aldeia</td>
      <td>Aldeia indígena do endereço do paciente</td>
      <td>0..1</td>
      <td>CodeableConcept</td>
      <td>Extensão <a href="StructureDefinition-br-core-address-aldeia.html">br-core-address-aldeia</a>. Binding <i>required</i> em <a href="https://terminologia.saude.gov.br/fhir/ValueSet/BRAldeia">https://terminologia.saude.gov.br/fhir/ValueSet/BRAldeia</a>.</td>
    </tr>
    <tr>
      <td>extension:municipio</td>
      <td>Código IBGE do município do endereço</td>
      <td>0..1</td>
      <td>CodeableConcept</td>
      <td>Extensão <a href="StructureDefinition-br-core-address-municipio.html">br-core-address-municipio</a>. Binding <i>required</i> em <a href="https://terminologia.saude.gov.br/fhir/ValueSet/BRMunicipio">https://terminologia.saude.gov.br/fhir/ValueSet/BRMunicipio</a>.</td>
    </tr>
  </tbody>
</table>

