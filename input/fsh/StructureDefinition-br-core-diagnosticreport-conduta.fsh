Extension: BRCoreDiagnosticReportConduta
Id: br-core-diagnosticreport-conduta
Title: "BR Core DiagnosticReport Conduta"
Description: "Esta extensão representa uma conduta associada ao laudo, fornecendo orientações ou sugestões baseadas nos resultados do diagnóstico para o manejo clínico do paciente."
Context: DiagnosticReport
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from https://terminologia.saude.gov.br/fhir/ValueSet/BRCondutaColposcopia (extensible)
