### Escopo e uso

O [br-core-healthcareservice](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice) é usado para descrever um único serviço de saúde ou categoria de serviços que são fornecidos por uma organização em um local. O local dos serviços pode ser virtual, como por exemplo os serviços de telemedicina. 

Exemplos comuns de recursos do HealthcareServices são:
-	Neuropsicólogo Clínico
-	Serviço de Podologia
-	Emergência do Hospital Menino Jesus  
-	Cuidados Paliativos oferecidos em HLP (Hospital de Longa Permanência)
-	Serviço 24h de aconselhamento telefônico de crise  
-	Serviços de informação, aconselhamento e/ou encaminhamento
-	Serviços de Telessaúde  
-	Hospital em casa
-	Farmácia
-	Apoio Social
-	Aconselhamento sobre drogas e/ou álcool
-	Programas diurnos, treinamento para adultos e serviços de apoio
-	Consultoria de psicólogos e/ou serviços de psicologia

### Caso de uso

Exemplos de uso dos recursos do [br-core-healthcareservice](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice) são:
-	CNES – Cadastro Nacional de Estabelecimentos   - pesquisa de estabelecimentos e prestadores
-	Portal do Cliente numa Organização - para localizar serviços / agendar consultas
-	Catálogo de endereços de serviços para encaminhamentos, incluindo referências a questionários para avaliações que são necessárias como parte do encaminhamento

### Caso de uso da RNDS

Este perfil ainda não está implementado na RNDS.

**Orientações de implementação específicas do perfil**
Apesar de ainda não definido na RNDS, quando for utilizado deve se levar em conta a [Portaria de consolidação Nº1 de 28 de setembro de 2017](https://bvsms.saude.gov.br/bvs/saudelegis/gm/2021/prt2236_20_09_2021.html), que trata da consolidação das normas sobre os direitos e deveres dos usuários da saúde, a organização e o funcionamento do Sistema Único de Saúde no Brasil, com respeito as terminologias a serem utilizadas neste perfil, conforme Tabela 1 abaixo.

**Tabela 1. Binding Terminologias Nacionais para br-core-healthcareservice**

<table border="1">
  <thead>
    <tr>
      <th>Elemento</th>
      <th>Cardinalidade</th>
      <th>Binding canônico</th>
      <th>URL CodeSystem</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>category</td>
      <td>0..*</td>
      <td><a href="https://hl7.org/fhir/R4/valueset-service-category.html">Service category (Example)</a></td>
      <td><a href="https://terminologia.saude.gov.br/fhir/CodeSystem-BRTipoEstabelecimentoSaude.html">BRTipoEstabelecimento</a> CNES</td>
    </tr>
    <tr>
      <td>type</td>
      <td>0..*</td>
      <td><a href="https://hl7.org/fhir/R4/valueset-service-type.html">Service type (Example)</a></td>
      <td>BRServicosEspecializados CNES</td>
    </tr>
    <tr>
      <td>speciality</td>
      <td>0..*</td>
      <td><a href="https://hl7.org/fhir/R4/valueset-c80-practice-codes.html">Practice Setting Code Value Set (Preferred)</a></td>
      <td><a href="https://terminologia.saude.gov.br/fhir/NamingSystem-BRCBO.html">CBO</a> obrigatório</td>
    </tr>
    <tr>
      <td>serviceProvisionCode</td>
      <td>0..*</td>
      <td><a href="https://hl7.org/fhir/R4/valueset-service-provision-conditions.html">ServiceProvisionConditions (Example)</a></td>
      <td>BRTipoConvenio CNES - obrigatório</td>
    </tr>
  </tbody>
</table>

### Limites e relacionamentos

O recurso [br-core-healthcareservice](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice) pode ser usado com o recurso [Schedule](https://hl7.org/fhir/R4/schedule.html#Schedule) para definir a disponibilidade do serviço. Isso pode ser feito usando a propriedade Actor do recurso Schedule.

Ao criar um [Appointment](https://hl7.org/fhir/R4/appointment.html#Appointment), o HealthcareService deve ser atribuído a um dos participantes. Cabe ao sistema de agendamento determinar se o serviço está disponível e pode ser aceito.

O recurso HealthcareService é usado com os seguintes recursos:
-	[Organization](https://hl7.org/fhir/R4/organization.html) ([br-core-organization](https://saude.gov.br/fhir/StrucutreDefinition.br-core-organization)): A organização fornece os serviços.
-	[ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html) ([br-core-servicerequest](https://saude.gov.br/fhir/StrucutreDefinition.br-core-servicerequest)): Esta é uma solicitação específica de assunto para um serviço específico, pode ser para um serviço de saúde específico e/ou simplesmente um valor de serviço codificado. A granularidade incluída nos códigos de solicitação pode ser mais fina do que a definida no serviço de saúde.
-	[OrganizationAffiliation](https://hl7.org/fhir/R4/organizationaffiliation.html): pode restringir uma lista de serviços de saúde disponíveis entre duas organizações. 
-	[Location](https://hl7.org/fhir/R4/location.html) ([br-core-location](https://saude.gov.br/fhir/StrucutreDefinition.br-core-location)): especifica o local onde o(s) serviço(s) são oferecidos/disponíveis.

Este recurso é referenciado por [UsageContext](https://hl7.org/fhir/R4/metadatatypes.html#UsageContext), [Account](https://hl7.org/fhir/R4/account.html#Account), [Appointment](https://hl7.org/fhir/R4/appointment.html#Appointment), [AppointmentResponse](https://hl7.org/fhir/R4/appointmentresponse.html#AppointmentResponse), [br-core-careplan](https://saude.gov.br/fhir/StrucutreDefinition.br-core-careplan.html), [CatalogEntry](https://hl7.org/fhir/R4/catalogentry.html#CatalogEntry), [Communication](https://hl7.org/fhir/R4/communication.html#Communication), [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html#CommunicationRequest), [DeviceRequest](https://hl7.org/fhir/R4/devicerequest.html#DeviceRequest), [OrganizationAffiliation](https://hl7.org/fhir/R4/organizationaffiliation.html#OrganizationAffiliation), [br-core-practitionerrole](https://saude.gov.br/fhir/StrucutreDefinition.br-core-practitionerrole.html), [Schedule](https://hl7.org/fhir/R4/schedule.html#Schedule), [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html#ServiceRequest), [SupplyRequest](https://hl7.org/fhir/R4/servicerequest.html#ServiceRequest) e [Task]().
