### Escopo/Uso

Este perfil registra a capacidade funcional ou a incapacidade do indivíduo como um achado funcional (Condition). É usado, entre outros, na seção capacidadeFuncional do [br-core-sumarioalta](StructureDefinition-br-core-sumarioalta.html).

### Codificação

- `code`: achado funcional, preferencialmente em SNOMED CT (ValueSet BRCapacidadeFuncional, descendentes de 118228005 Functional finding). O CID-10 ou a CIAP-2 da condição de base que causa a incapacidade podem vir como codificação adicional no mesmo `code`, ou como Condition própria referenciada em `evidence`.
- `category`: categorias do HL7 (`condition-category`), herdadas do br-core-condition.
- `subject`: referência ao br-core-patient.
- `stage`: opcional; use para o grau da incapacidade quando houver escala aplicada (`stage.assessment`).
