Profile: br-core-diagnosticreport
Parent: http://hl7.org/fhir/StructureDefinition/DiagnosticReport
Id: br-core-diagnosticreport
Description: "Este perfil restringe o recurso [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html) que representa as descobertas e a interpretação de testes diagnósticos realizados em pacientes, grupos de pacientes, dispositivos e locais, e/ou espécimes derivados destes. O relatório inclui contexto clínico, como solicitação e informações do provedor, e alguma mistura de resultados atômicos, imagens, interpretações textuais e codificadas, e representação formatada de relatórios diagnósticos."

* identifier ^short = "Identificadores externos para este recurso"
* identifier ^definition = "Identificadores externos para este recurso"
* basedOn ^short = "O que foi solicitado"
* basedOn ^definition = "O que foi solicitado"
* basedOn only Reference(br-core-careplan or ImmunizationRecommendation or br-core-medicationrequest or NutritionOrder or br-core-servicerequest)
* status ^short = "O status do relatório de diagnóstico."
* status ^definition = "registered | partial | preliminary | final +"
* category ^short = "Categoria do serviço" 
* category ^definition = "Categoria do serviço"
* code ^short = "Nome/Código para este relatório de diagnóstico"
* code ^definition = "Nome/Código para este relatório de diagnóstico"
* subject ^short = "O indivíduo do relatório - geralmente, mas nem sempre, o paciente"
* subject ^definition = "O indivíduo do relatório - geralmente, mas nem sempre, o paciente"
* subject only Reference(br-core-patient)
* encounter ^short = "Evento de assistência médica quando o teste foi solicitado"
* encounter ^definition = "Evento de assistência médica quando o teste foi solicitado"
* encounter only Reference(br-core-encounter)
* effective[x] ^short = "Tempo/período de tempo clinicamente relevante para o relatório"
* effective[x] ^definition = "Tempo/período de tempo clinicamente relevante para o relatório"
* issued ^short = "Data e hora em que esta versão foi feita"
* issued ^definition = "Data e hora em que esta versão foi feita"
* performer ^short = "Serviço de Diagnóstico Responsável"
* performer ^definition = "Serviço de Diagnóstico Responsável"
* performer only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or CareTeam)
* resultsInterpreter ^short = "Intérprete de resultado primário"
* resultsInterpreter ^definition = "Intérprete de resultado primário"
* resultsInterpreter only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or CareTeam)
* specimen ^short = "Amostras nas quais este relatório se baseia"
* specimen ^definition = "Amostras nas quais este relatório se baseia"
* specimen only Reference(br-core-specimen)
* result ^short = "Observations"
* result ^definition = "Observations"
* result only Reference(br-core-observation)
* imagingStudy ^short = "Referência a todos os detalhes da imagem associada ao relatório de diagnóstico"
* imagingStudy ^definition = "Referência a todos os detalhes da imagem associada ao relatório de diagnóstico"
* media ^short = "Imagens principais associadas a este relatório"
* media ^definition = "Imagens principais associadas a este relatório"
* media.comment ^short = "Comentário sobre a imagem (por exemplo, explicação)"
* media.comment ^definition = "Comentário sobre a imagem (por exemplo, explicação)"
* media.link ^short = "Referência à fonte da imagem"
* media.link ^definition = "Referência à fonte da imagem"
* conclusion ^short = "Conclusão clínica (interpretação) dos resultados dos testes"
* conclusion ^definition = "Conclusão clínica (interpretação) dos resultados dos testes"
* conclusionCode ^short = "Códigos para a conclusão clínica dos resultados dos testes"
* conclusionCode ^definition = "Códigos para a conclusão clínica dos resultados dos testes"
* presentedForm ^short = "Relatório completo conforme emitido"
* presentedForm ^definition = "Relatório completo conforme emitido"