### Base normativa

Este modelo lógico representa o Modelo de Informação do CadSUS, Anexo XLII à Portaria de Consolidação GM/MS nº 1, de 28 de setembro de 2017, instituído pela Portaria GM/MS nº 12.263, de 1º de outubro de 2026 (DOU de 5/10/2026, Seção 1, Edição Extra A, p. 6). Cada elemento cita o artigo do Anexo que o define.

O Anexo lista os registros de cada bloco, mas não define cardinalidades nem domínios. Por isso, todos os elementos são opcionais aqui. As obrigatoriedades ficam nos perfis FHIR que implementam o modelo.

### Uso

O modelo serve para duas coisas:

- conferir o [br-core-patient](StructureDefinition-br-core-patient.html) e os demais perfis do BR-Core contra a norma, elemento a elemento;
- servir de referência para as especificações técnicas que o Art. 12 do Anexo prevê no Portal de Serviços do DATASUS.

O mapeamento para FHIR R4 está na aba de mapeamentos deste artefato. Elementos sem representação no BR-Core 1.6.0 aparecem como LACUNA.

### Regras de identificação da PC nº 1/2017

- Sem registro civil ou CPF, o acesso é garantido com identificador provisório gerado no CadSUS, quando for possível coletar dados mínimos (Art. 257, § 1º). Esse identificador é um CNS (Art. 259, II).
- Sem CPF, o CNS é obrigatório nos registros de saúde (Art. 257, § 2º), e é vinculado depois ao CPF, preservando o histórico (§ 3º).
- Quando nem a identificação provisória é possível, aplica-se o art. 258 (Art. 257, § 4º).
- A falta de documento civil ou de domicílio permanente não pode impedir o acesso (Art. 257, § 5º), e o endereço não é exigido de quem não tem domicílio fixo (Art. 272, § 1º).

### Pontos em aberto

- **Recurso de destino.** Educação, trabalho, renda, tipo sanguíneo, orientação sexual e situação de moradia são mapeados para Observation, e não para extensões do Patient. Assim, esses dados não viajam na consulta ao MPI do CadSUS, que devolve só o Patient.
- **Histórico de CNS.** O CNS é identificador "secundário e histórico" (Art. 3º, II), mas a fatia cns do br-core-patient é 0..1.
- **Dados sensíveis.** O § 2º do Art. 4º não lista pessoa com deficiência como dado sensível, embora seja dado referente à saúde pela LGPD (art. 5º, II). O controle de acesso do § 1º é responsabilidade do servidor e das security labels, não do perfil.
- **Sexo.** O Anexo distingue sexo ao nascer (Art. 3º, IX) de sexo do paciente autodeclarado (Art. 4º, II). A equivalência do segundo com Patient.gender precisa ser confirmada.
