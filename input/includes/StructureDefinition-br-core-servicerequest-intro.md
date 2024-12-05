### Escopo/Uso

O [br-core-servicerequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest.html) é um registro de uma solicitação para um procedimento, diagnóstico ou outro serviço a ser planejado, proposto ou executado, conforme distinguido pela intenção, conforme o valor do campo *serviceRequest.intent*, relacionado a um ou em um paciente. O procedimento levará a um procedimento ([br-core-procedure](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure.html)) ou a um relatório de diagnóstico ([br-core-diagnosticReport](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html)), que por sua vez pode referenciar uma ou mais observações ([br-core-observation](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation.html)), que resumem o desempenho dos procedimentos e a documentação associada, como observações, imagens, descobertas que são relevantes para o tratamento/gerenciamento do sujeito. 

Este recurso pode ser usado para compartilhar informações relevantes necessárias para dar suporte a uma referência ou transferência de solicitação de atendimento de um profissional ou organização para outro quando um paciente precisa ser encaminhado a outro provedor para uma consulta/segunda opinião e/ou para gerenciamento de curto ou longo prazo de um ou mais problemas ou questões de saúde.

Exemplos incluem:

-	testes/estudos de diagnóstico
-	procedimentos endoscópicos
-	aconselhamento
-	biópsias
-	terapias (por exemplo, fisio, social, psicológica)
-	cirurgias ou procedimentos (exploratórios)
-	exercícios
-	consulta e avaliações especializadas
-	serviços comunitários
-	serviços de enfermagem
-	revisão de medicamentos farmacêuticos e
-	outras intervenções clínicas.

Os procedimentos podem ser realizados por um profissional de saúde, um amigo ou parente ou, em alguns casos, pelo próprio paciente.

A principal intenção do [br-core-servicerequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest.html) é dar suporte a procedimentos de pedidos para um paciente (o que inclui pacientes não humanos em medicina veterinária). No entanto, em muitos contextos, os processos relacionados à assistência médica incluem a realização de investigações diagnósticas em grupos de indivíduos, dispositivos envolvidos na prestação de assistência médica e até mesmo locais ambientais, como dutos, corpos d'água, etc. O [br-core-servicerequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest.html) dá suporte a todos esses usos. A solicitação de serviço pode representar um pedido inserido por um profissional em um sistema prescrição eletrônica bem como uma proposta feita por um sistema de suporte à decisão clínica (CDS) com base no registro clínico de um paciente e no contexto de atendimento. Procedimentos planejados referenciados por um [br-core-careplan](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan.html) também podem ser representados por este recurso.

Este recurso facilita que um sistema clínico gere uma solicitação de serviço. A solicitação de serviço é então acessada ou trocada com um sistema, talvez por meio de intermediários, que representa uma organização (por exemplo, serviço de diagnóstico ou imagem, equipe cirúrgica, departamento de fisioterapia) que pode executar o procedimento. A organização que recebe a solicitação de serviço, após aceitar a solicitação, atualizará a solicitação conforme o trabalho for executado e, finalmente, emitirá um relatório que faz referência às solicitações que ela atendeu.

O recurso [br-core-servicerequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest.html) permite solicitar apenas um único procedimento. Se um fluxo de trabalho exigir a solicitação de vários procedimentos simultaneamente, isso será feito usando várias instâncias desse recurso. Essas instâncias podem ser vinculadas de diferentes maneiras, dependendo das necessidades do fluxo de trabalho. Para obter orientação, consulte o perfil FHIR R4  [Request](https://hl7.org/fhir/R4/request.html).

### Caso de uso

Exemplos de uso dos recursos do ServiceRequest são:
-	Consulta sobre um procedimento específico ou solicitação de teste, como um pedido de eletrocardiograma (ECG) ou um encaminhamento para um programa de suporte.
-	Consulta sobre um serviço específico oferecido a um paciente, como um encaminhamento para um programa de suporte.
-	Consultar uma categoria de solicitação de serviço (por exemplo, todas as solicitações de cardiologia).

### Caso de uso da RNDS

Este perfil está representado pela requisição de regulação assistencial conforme [https://simplifier.net/redenacionaldedadosemsaude/brrequisicaoregulacaoassistencial](https://simplifier.net/redenacionaldedadosemsaude/brrequisicaoregulacaoassistencial). A estrutura da RNDS utiliza o perfil FHIR R4 [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html). 

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support). 

**Cada Perfil ServiceRequest deve ter:**
1.	status - situação
2.	intent - um código de intenção que indica se a solicitação é uma proposta, um plano ou um pedido
3.	subject - um código que define o que está sendo solicitado
4.	um paciente

### Cada Perfil ServiceRequest deve oferecer suporte a:

Não há elementos.

### Orientações de implementação específicas do perfil

### Limites e relacionamentos

O [br-core-servicerequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest.html) é um registro de uma proposta/plano ou ordem para um serviço a ser executado que resultaria em um [br-core-procedure](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure.html), [br-core-observation](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation.html), [br-core-diagnosticreport](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diganosticreport.html), [br-core-imagingstudy](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-imagingsstudy.html) ou recurso similar. Em contraste com ServiceRequest, [Task](https://hl7.org/fhir/R4/task.html) que abrange tanto a intenção quanto o evento e rastreia a execução até a conclusão e é destinado a ações "administrativas" como solicitar e rastrear coisas a serem feitas em um registro, ou manter o controle de uma lista de verificação de etapas a serem executadas como parte de um processo de atendimento. Um [br-core-servicerequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest.html) pode ser uma autorização de nível superior que acionou a criação de Task, ou pode ser o recurso de "solicitação" que Task está buscando atender.

[ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html) e [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html) estão relacionados. Um [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html) é uma solicitação para meramente divulgar informações. Enquanto um [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html) seria usado para solicitar informações como parte de treinamento ou aconselhamento - ou seja, quando o processo envolverá a verificação da compreensão do paciente ou uma tentativa de mudar o estado mental do paciente. Em alguns fluxos de trabalho, ambos podem existir. Por exemplo, ao receber um [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html), um profissional pode iniciar um [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html).

Este recurso é referenciado por [Appointment](https://hl7.org/fhir/R4/appointment.html#Appointment), [BiologicallyDerivedProduct](https://hl7.org/fhir/R4/biologicallyderivedproduct.html#BiologicallyDerivedProduct), [br-core-careplan](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-careplan.html), [Claim](https://hl7.org/fhir/R4/claim.html#Claim), [DeviceUseStatement](https://hl7.org/fhir/R4/deviceusestatement.html#DeviceUseStatement), [br-core-diagnosticreport](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-diganosticreport.html), [br-core-encounter](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter.html), [EpisodeOfCare](https://hl7.org/fhir/R4/episodeofcare.html#EpisodeOfCare), [ExplanationOfBenefit](https://hl7.org/fhir/R4/explanationofbenefit.html#ExplanationOfBenefit), [Goal](https://hl7.org/fhir/R4/goal.html#Goal), [br-core-imagingstudy](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-imagingsstudy.html), [Media](https://hl7.org/fhir/R4/media.html#Media), [br-core-medicationrequest](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationrequest.html), [br-core-medicationstatement](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement.html), [br-core-observation](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation.html), [br-core-procedure](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-procedure.html), [QuestionnaireResponse](https://hl7.org/fhir/R4/questionnaireresponse.html#QuestionnaireResponse), [br-core-specimen](https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-specimen.html).
