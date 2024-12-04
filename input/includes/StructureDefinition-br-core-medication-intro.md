### Escopo/Uso

Representar medicamentos na maioria dos ambientes de assistência á saúde é uma questão de identificar um item de uma lista e então transmitir uma referência para o item selecionado em um recurso relacionado ao paciente ou para outros aplicativos. Informações adicionais sobre o medicamento são frequentemente fornecidas para verificação humana, mas uma representação completa dos detalhes da composição e eficácia do medicamento é transmitida consultando dicionários de medicamentos por meio dos códigos que eles definem. Há algumas ocasiões em que é necessário identificar um pouco mais de detalhes, como quando dispensar um pacote contendo um medicamento específico requer a identificação do medicamento e do pacote ao mesmo tempo. Há também algumas ocasiões (por exemplo, formulações personalizadas) em que a composição de um medicamento deve ser representada. Nesses casos, os ingredientes do medicamento devem ser especificados junto com a quantidade contida, embora o recurso [Medication](https://hl7.org/fhir/R4/medication.html) não forneça detalhes completos.

O recurso [br-core-medication](https://saude.gov.br/fhir/StructureDefinitions/br-core-medication.html) permite que os medicamentos sejam caracterizados pela forma do medicamento e pelo ingrediente (ou ingredientes), bem como pela forma como são embalados. O medicamento incluirá o(s) ingrediente(s) e sua(s) dosagem(ns) e a embalagem pode incluir a quantidade (por exemplo, número de comprimidos, volume,  etc.) contida em um recipiente específico (por exemplo, 100 cápsulas de Amoxicilina 500mg por frasco).

O recurso [br-core-medication](https://saude.gov.br/fhir/StructureDefinitions/br-core-medication.html) pode ser utilizado para descrever um produto composto (também conhecido como extemporâneo ou magistral) que é fabricado pela farmácia no momento da dispensação. Neste caso, haverá vários ingredientes que são tipicamente produtos químicos básicos (por exemplo, pó de hidrocortisona) e pode haver outros ingredientes que são produtos manufaturados (por exemplo, Glaxal Base).

Quando um medicamento inclui um pacote, ou seja medicamentos na apresentação “pack”, mais detalhes sobre a composição podem ser fornecidos. Um pacote tem um recipiente (caixa embalada a vácuo, jarra, etc.) e uma lista dos produtos ou outros pacotes que estão no pacote.

### Uso indevido

Este recurso não deve ser utilizado para representar dados que não sejam relacionados a medicamentos.

### Caso de uso

A RDNS utiliza a structuredefintion [BRPrescricaoMedicamento](https://simplifier.net/redenacionaldedadosemsaude/brprescricaomedicamento) para descrever a prescrição de medicamentos. Cada um dos medicamentos prescritos são descritos utilizando a structuredefinition [BRMedication](https://simplifier.net/redenacionaldedadosemsaude/brmedicamento) aqui descrita.  

### Identificadores

Para identificação dos códigos do medicamento os identificadores da base nacional de medicamentos OBM-Ontologia Brasileira de Medicamentos serão utilizados.

### MUST SUPPORT - Elementos de dados obrigatórios e que devem estar presentes

Os seguintes elementos de dados devem estar sempre presentes (definição obrigatória) ou devem ser suportados se os dados estiverem presentes no sistema de envio (definição de suporte obrigatório). Eles são apresentados abaixo em uma explicação simples e legível. Orientações e exemplos específicos do perfil também são fornecidos. As Visualizações Formais abaixo fornecem o resumo formal, as definições e os requisitos de terminologia.

**Cada medicamento deve ter:**
1.	Um código de medicação

**Orientação de implementação específica do perfil:**
1.	Os conceitos da OBM  são definidos como uma  associação preferred. 
2.	Como a associação é [preferred](http://hl7.org/fhir/R4/terminologies.html#extensible) quando um código não está disponível, apenas o texto é permitido.
3.	Quando o medicamento é composto e é uma lista de ingredientes, o código ainda está presente e pode conter apenas o texto.

### Extensões

Este perfil não possui extensões.
