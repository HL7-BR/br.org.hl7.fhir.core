### Escopo/Uso

Este perfil define o documento clínico FHIR no BR-Core: um Bundle do tipo `document`, imutável, cuja primeira entrada é uma Composition derivada do [br-core-composition](StructureDefinition-br-core-composition.html), como os documentos clínicos da RNDS (Sumário de Alta, Registro de Atendimento Clínico, comprovante de vacinação), seguida de todos os recursos que ela referencia.

As regras seguem o perfil internacional [clinical-document-bundle](https://hl7.org/fhir/uv/fhir-clinical-document/STU1.0.1/StructureDefinition-clinical-document-bundle.html) do FHIR Clinical Documents (HL7, STU1 1.0.1):

- `identifier` persistente (system e value);
- `type` = `document`;
- `timestamp` obrigatório e igual ou posterior a `Composition.date`;
- Composition como primeira entrada;
- `fullUrl` em todas as entradas.

### Caso de uso da RNDS

Envio de documentos clínicos, como o Sumário de Alta, em substituição aos perfis de documento próprios da RNDS. Retificação: novo documento, com novo `identifier`, e `Composition.relatesTo` (`replaces`) apontando para a Composition anterior.
