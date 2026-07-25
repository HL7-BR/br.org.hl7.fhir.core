### Escopo/Uso

Este perfil define expectativas mínimas para o recurso Specimen registrar, pesquisar e buscar informações sobre substâncias associadas a um paciente sendo amostrado ou testado. 

### Caso de uso

Alguns cenários de uso para este perfil são:
- retirado de uma entidade biológica, viva ou morta
- tirado de um objeto físico ou do ambiente

Algumas amostras são biológicos e podem conter um ou mais componentes, incluindo, mas não se limitando a moléculas celulares, células, tecidos, órgãos, fluidos corporais, embriões e produtos excretores do corpo.

O recurso de espécime abrange substâncias usadas para diagnóstico e testes ambientais. O foco do recurso de espécime é o processo de coleta, manutenção e processamento do espécime, bem como onde o espécime se originou. Isso é distinto do uso de Substância, que é usado somente quando esses outros aspectos não são relevantes.

### Caso de uso da RNDS

Na RNDS a amostra biológica é referenciado pelo perfil [BRAmostraBiologica](https://simplifier.net/RedeNacionaldeDadosemSaude/BRAmostraBiologica/) (Specimen) que verifica o tipo da amostra de um exame ou teste a partir do valueset [BRTipoAmostra](https://simplifier.net/redenacionaldedadosemsaude/valueset-brtipoamostra-1.0).

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos devem ser obrigatórios, ou devem ser suportados, se os dados estiverem presentes no sistema de envio (definição Must Support).

**Cada amostra biológica (Specimen) deve ter:**
1. o tipo da amostra biológica

**Cada amostra biológica (Specimen) deve oferecer suporte a:**
1.	identificador(es) comercial(ais)
2.	um identificador de acesso
3.	um paciente

### Orientações de implementação específicas do perfil

Como a vinculação é extensível quando um código não está disponível, apenas texto é permitido.

Embora ambos Specimen.identifier e Specimen.accessionIdentifier sejam marcados como Deve suportar, o sistema do servidor não é obrigado a suportar ambos, mas **DEVE** suportar pelo menos um desses elementos. No entanto, o aplicativo cliente **DEVE** suportar ambos os elementos.

A condição da amostra é usada pelo laboratório para determinar a aceitabilidade de uma amostra para o teste solicitado. Uma condição de amostra individual pode ser aceitável para um teste e não para outro. A condição da amostra é normalmente fornecida quando a amostra não atende aos critérios de aceitabilidade do laboratório, independentemente de o teste ter sido realizado ou não. 

Além dos critérios de busca de Specimen, os clientes podem solicitar que os recursos Specimen sejam incluídos com a consulta de recurso [Observation](https://hl7.org/fhir/R4/observation.html#Observation) ou [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html#DiagnosticReport). 

### Limites e relacionamentos

Este recurso é referenciado por [DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html#DiagnosticReport), [ImagingStudy](https://hl7.org/fhir/R4/imagingstudy.html#ImagingStudy), [Media](https://hl7.org/fhir/R4/media.html#Media), [MolecularSequence](https://hl7.org/fhir/R4/molecularsequence.html#MolecularSequence), [Observation](https://hl7.org/fhir/R4/observation.html#Observation), [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html#ServiceRequest) e ele mesmo.
