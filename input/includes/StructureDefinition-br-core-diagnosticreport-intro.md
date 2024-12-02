### Escopo/Uso

O [br-core-diagnosticreport](https://saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html) é um conjunto de informações que normalmente é fornecido por um serviço de diagnóstico quando as investigações são concluídas. As informações incluem uma mistura de resultados atômicos, relatórios de texto, imagens e códigos. A mistura varia dependendo da natureza do procedimento de diagnóstico e, às vezes, da natureza dos resultados de uma investigação específica. No FHIR, o relatório pode ser transmitido de várias maneiras, incluindo um [Documento](https://hl7.org/fhir/R4/documents.html), [API RESTful](https://hl7.org/fhir/R4/http.html) ou estrutura de [Mensagens](https://hl7.org/fhir/R4/messaging.html). Incluído em cada um deles, estaria o próprio recurso [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html).

O recurso [br-core-diagnosticreport](https://saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html) tem informações sobre o próprio relatório de diagnóstico, e sobre o sujeito e, no caso de testes laboratoriais, a amostra do relatório. Este recurso também pode se referir aos detalhes da solicitação e detalhes de observações atômicas ou instâncias de imagem. As conclusões do relatório podem ser expressas como um blob de texto simples, dados codificados estruturados ou como um relatório anexado totalmente formatado, como um PDF.

O recurso [br-core-diagnosticreport](https://saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html) é adequado para os seguintes tipos de relatórios de diagnóstico:

-	Laboratório (Química Clínica, Hematologia, Microbiologia, etc.)
-	Patologia / Histopatologia / disciplinas relacionadas
-	Exames de imagem (raio-x, tomografia computadorizada, ressonância magnética etc.)
-	Outros diagnósticos - Cardiologia, Gastroenterologia etc.

O recurso [br-core-diagnosticreport](https://saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html) não se destina a dar suporte à apresentação de resultados cumulativos (apresentação tabular de resultados passados e presentes no recurso). O recurso [br-core-diagnosticreport](https://saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html) ainda não fornece suporte completo para relatórios estruturados detalhados de sequenciamento; isso está planejado para uma versão futura.

### Caso de uso

Exemplos de uso dos recursos do [br-core-diagnosticreport](https://saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html) são:
Laudo de densitometria óssea [https://hl7.org/fhir/r4/diagnosticreport-example-dxa.html]((https://hl7.org/fhir/r4/diagnosticreport-example-dxa.html))
Laudo de US de Abdomen [https://hl7.org/fhir/r4/diagnosticreport-example-ultrasound.xml]((https://hl7.org/fhir/r4/diagnosticreport-example-ultrasound.xml))
Laudo de Anatomia Patológica [https://hl7.org/fhir/r4/diagnosticreport-example-gingival-mass.html]((https://hl7.org/fhir/r4/diagnosticreport-example-gingival-mass.html))

### Caso de uso da RNDS

Este perfil ainda não está implementado na RNDS.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support). 

**Cada Perfil DiagnosticReport  deve ter:**
1.	status - situação do relatório (registrado | disponível | cancelado | inserido-por-erro | desconhecido)
2.	Code – código LOINC para o relatório de diagnóstico.
3.	Media.link – link que referencia a imagem.

### Cada Perfil DiagnosticReport deve oferecer suporte a:

Não há elementos.

### Limites e relacionamentos

Muitos processos de diagnóstico são procedimentos que geram observações e relatórios de diagnóstico. Em muitos casos, tal observação não requer uma representação explícita do procedimento usado para criar a observação, mas onde há detalhes de interesse sobre como o procedimento de diagnóstico foi realizado, o recurso Procedure é usado para descrever a atividade.

Em contraste com o recurso [br-core-observation](https://saude.gov.br/fhir/StructureDefinition/br-core-observation.html), o recurso [br-core-diagnosticreport](https://saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html) normalmente inclui contexto clínico adicional e alguma mistura de resultados atômicos, imagens, relatórios de imagem, interpretação textual e codificada e representações formatadas. Relatórios de laboratório, relatórios de patologia e relatórios de imagem devem ser representados usando o recurso [br-core-diagnosticreport](https://saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html). O recurso [br-core-observation](https://saude.gov.br/fhir/StructureDefinition/br-core-observation.html) é referenciado pelo [br-core-diagnosticreport](https://saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html) para fornecer os resultados atômicos para uma investigação específica.

Se você tiver um relatório altamente estruturado, use o [br-core-diagnosticreport](https://saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html) - ele tem suporte a dados e fluxo de trabalho. Detalhes sobre a solicitação de uma investigação diagnóstica são capturados nos vários recursos de "solicitação" (por exemplo, [br-core-servicerequest](https://saude.gov.br/fhir/StructureDefinition/br-core-servicerequest.html)) e permitem que o relatório se conecte a fluxos de trabalho clínicos. Para relatórios mais orientados por narrativas com menos fluxo de trabalho (histologia/necrotério, etc.), o recurso [br-core-composition](https://saude.gov.br/fhir/StructureDefinition/br-core-composition.html)  seria mais apropriado.

As representações de imagem e mídia do relatório e imagens de suporte são referenciadas no recurso [br-core-diagnosticreport](https://saude.gov.br/fhir/StructureDefinition/br-core-diagnosticreport.html). Os detalhes e instâncias de imagem reais podem ser referenciados diretamente no Diagnostic report usando o elemento "imaging" ou por referência indireta por meio dos recursos [br-core-imagingstudy](https://saude.gov.br/fhir/StructureDefinition/br-core-imagingStudy.html) que representam o conteúdo produzido em um estudo de imagem DICOM ou conjunto de Instâncias DICOM para um paciente.

Este recurso é referenciado por [br-core-careplan](https://saude.gov.br/fhir/StructureDefinition/br-core-careplan.html), [ChargeItem](https://hl7.org/fhir/R4/chargeitem.html#ChargeItem), [ClinicalImpression](https://hl7.org/fhir/R4/clinicalimpression.html#ClinicalImpression), [Communication](https://hl7.org/fhir/R4/communication.html#Communication), [CommunicationRequest](https://hl7.org/fhir/R4/communicationrequest.html#CommunicationRequest), [br-core-condition](https://saude.gov.br/fhir/StructureDefinition/br-core-condition.html), [Contract](https://hl7.org/fhir/R4/contract.html#Contract), [DeviceRequest](https://hl7.org/fhir/R4/devicerequest.html#DeviceRequest), [DeviceUseStatement](https://hl7.org/fhir/R4/deviceusestatement.html#DeviceUseStatement), [FamilyMemberHistory](https://hl7.org/fhir/R4/familymemberhistory.html#FamilyMemberHistory), [GuidanceResponse](https://hl7.org/fhir/R4/guidanceresponse.html#GuidanceResponse), [br-core-imagingstudy](https://saude.gov.br/fhir/StructureDefinition/br-core-imagingStudy.html), [br-core-immunization](https://saude.gov.br/fhir/StructureDefinition/br-core-immunization.html), [br-core-medicationadministration](https://saude.gov.br/fhir/StructureDefinition/br-core-medicationadministration.html), [br-core-medicationstatement](https://saude.gov.br/fhir/StructureDefinition/br-core-medicationstatement.html), [br-core-procedure](https://saude.gov.br/fhir/StructureDefinition/br-core-procedure.html), [RequestGroup](https://hl7.org/fhir/R4/requestgroup.html#RequestGroup), [RiskAssessment](https://hl7.org/fhir/R4/riskassessment.html#RiskAssessment), [br-core-servicerequest](https://saude.gov.br/fhir/StructureDefinition/br-core-servicerequest.html) e [SupplyRequest](https://hl7.org/fhir/R4/supplyrequest.html#SupplyRequest).