### Escopo/Uso

Este perfil implementa o Sumário de Alta Hospitalar conforme modelo de informação publicado na [PORTARIA Nº 701, DE 29 DE SETEMBRO DE 2022](https://bvsms.saude.gov.br/bvs/saudelegis/Saes/2022/prt0701_19_10_2022.html).

Conforme a Portaria acima:

Este documento se aplica a todas as partes interessadas no processo de continuidade da
assistência do indivíduo, incluindo:
-	Estabelecimentos de saúde em processo de planejamento, implementação ou atualização de sistemas de informação de saúde
-	Desenvolvedores de sistemas de informação de saúde;
-	Administradores, gerentes e formuladores de políticas de saúde;
-	Profissionais de saúde;
-	Profissionais de Tecnologia da Informação e Comunicação (TIC); e
-	Indivíduos em geral.

As seções do modelo de informação da [PORTARIA Nº 701](https://bvsms.saude.gov.br/bvs/saudelegis/Saes/2022/prt0701_19_10_2022.html) foram criadas no elemento br-core-composition conforme abaixo:

**Tabela 1. Mapeamento modelo de informação SA para br-core-sumarioalta**

<table border="1">
  <tbody>
    <tr>
      <td>Nome da secção no modelo de informação SA</td>
      <td>Nome da secção no br-core-sumarioalta</td>
    </tr>
    <tr>
      <td>Motivo da admissão, diagnósticos relevantes e patologias associadas desenvolvidas na internação</td>
      <td>Composition.section[diagnosticosAdmissao]<br>Composition.section[diagnosticosAvaliados]
    </td>
    </tr>
    <tr>
      <td>Alergias e/ou reações adversas na internação</td>
      <td>Composition.section.[alergiasIntolerancias]</td>
    </tr>
    <tr>
      <td>Procedimento(s) realizado(s) ou solicitado(s)</td>
      <td>Composition.section[procedimentosRealizados]</td>
    </tr>
    <tr>
      <td>Medicamentos prescritos na alta (não estruturado)<br>Medicamentos prescritos na alta (estruturado)</td>
      <td>Composition.section[prescricaoAlta]</td>
    </tr>
    <tr>
      <td>Plano de cuidados, instruções e recomendações (na alta)</td>
      <td>Composition.section[planoCuidados]</td>
    </tr>
    <tr>
      <td>Restrições funcionais e incapacidades em saúde</td>
      <td>Composition.section[capacidadeFuncional]</td>
    </tr>
  </tbody>
</table>

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

**Tabela 2.Dados Obrigatórios no br-core-sumarioalta (*)**

<table border="1">
  <thead>
        <tr>
        <th>Elemento do br-core-sumarioalta</th>
        <th>Contéudo</th>
        </tr>
    </thead>
  <tbody>
    <tr>
      <td>Composition.status</td>
      <td>Cfme - <a href="https://terminologia.saude.gov.br/fhir/ValueSet/BREstadoDocumento">BREstadoDocumento</a></td>
    </tr>
    <tr>
      <td>Composition.type</td>
      <td>Cfme - <a href="https://terminologia.saude.gov.br/fhir/ValueSet/BRTpoDocumento">BRTipoDocumento</a> fixo em “SA”</td>
    </tr>
    <tr>
      <td>Composition.category</td>
      <td>Cfme - <a href="http://hl7.org/fhir/ValueSet/document-classcodes">document-classcodes</a> fixo em "<a href="http://details.loinc.org/LOINC/18842-5.html">18842-5</a>" (Sumário de Alta)</td>
    </tr>
    <tr>
      <td>Composition.section[diagnosticosAdmissao].code.coding.code</td>
      <td>fixo em “42347-5”	</td>
    </tr>
    <tr>
      <td>Composition.section[diagnosticosAdmissao].code.coding.display</td>
      <td>“Diagnóstico da Admissão”</td>
    </tr>
    <tr>
      <td>Composition.section[alergiasIntolerancias].code.coding.code</td>
      <td>fixo em “48765-2”</td>
    </tr>
    <tr>
      <td>Composition.section[alergiasIntolerancias].code.coding.display</td>
      <td>“Alergias e Reações Adversas”</td>
    </tr>
    <tr>
      <td>Composition.section[diagnosticosAvaliados].code.coding.code</td>
      <td>fixo em “11450-4</td>
    </tr>
    <tr>
      <td>Composition.section[diagnosticosAvaliados].code.coding.display</td>
      <td>“Lista de Problemas”</td>
    </tr>
    <tr>
      <td>Composition.section[procedimentosRealizados].code.coding.code</td>
      <td>Fixo em “47519-4”</td>
    </tr>
    <tr>
      <td>Composition.section[procedimentosRealizados].code.coding.display</td>
      <td>“Histórico de Procedimentos”</td>
    </tr>
    <tr>
      <td>Composition.section[prescricaoAlta].code.coding.code</td>
      <td>Fixo em “8654-6”</td>
    </tr>
    <tr>
      <td>Composition.section[prescricaoAlta].code.coding.display</td>
      <td>“Medicações da alta hospitalar”</td>
    </tr>
    <tr>
      <td>Composition.section[planoCuidados].code.coding.code</td>
      <td>Fixo em “18776-5”</td>
    </tr>
    <tr>
      <td>Composition.section[planoCuidados].code.coding.display</td>
      <td>“Plano de Cuidados”</td>
    </tr>
    <tr>
      <td>Composition.section[capacidadeFuncional].code</td>
      <td>Fixo em “54522-8”</td>
    </tr>
    <tr>
      <td>Composition.section[capacidadeFuncional].code.coding.display</td>
      <td>“Capacidade Funcional”</td>
    </tr>
  </tbody>
</table>

(*) códigos LOINC traduzidos cfme https://terminologia.saude.gov.br/CodeSystem/loinc