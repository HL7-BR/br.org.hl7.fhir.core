// StructureDefinition: br-core-address
// Id: br-core-address
// Title: "Endereço Brasileiro"
// Description: "Perfil do tipo de dado Address para uso no contexto brasileiro"

Profile: BRCoreAddress
Parent: Address
Id: br-core-address
Title: "Endereço Brasileiro"
Description: "Perfil do tipo de dado Address para uso no contexto brasileiro, incluindo extensões específicas para localização de povos indígenas através de Aldeia, DSEI (Distrito Sanitário Especial Indígena) e Polo Base."

* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-30"
* ^publisher = "HL7 BRASIL"
* ^purpose = "Fornecer uma estrutura padronizada de endereçamento que contemple as particularidades do território brasileiro, especialmente no contexto da saúde indígena, permitindo a identificação precisa de aldeias, DSEIs e polos-base."
* ^copyright = "Copyright © 2025 HL7 Brasil"

// Extensões para localização indígena
* extension contains
    Aldeia named aldeia 0..1 and
    DSEI named dsei 0..1 and
    PoloBase named polo 0..1

* extension[aldeia] ^short = "Aldeia Indígena"
* extension[aldeia] ^definition = "Referência ao recurso Location que representa a aldeia indígena onde o indivíduo reside."
* extension[aldeia] ^comment = "A aldeia é a unidade básica de localização geográfica para populações indígenas. Este elemento permite associar o endereço a uma aldeia específica cadastrada como Location no sistema."

* extension[dsei] ^short = "Distrito Sanitário Especial Indígena (DSEI)"
* extension[dsei] ^definition = "Referência ao recurso Location que representa o Distrito Sanitário Especial Indígena (DSEI) responsável pela região."
* extension[dsei] ^comment = "O DSEI é uma unidade administrativa de saúde que coordena as ações de atenção à saúde indígena em uma determinada região geográfica, abrangendo múltiplas aldeias e polos-base. Este elemento permite associar o endereço ao DSEI responsável pela área."

* extension[polo] ^short = "Polo Base"
* extension[polo] ^definition = "Referência ao recurso Location que representa o Polo Base que atende a região."
* extension[polo] ^comment = "O Polo Base é uma unidade de saúde que serve como ponto de referência para um conjunto de aldeias, oferecendo serviços de saúde e apoio logístico. Este elemento permite associar o endereço ao polo-base responsável pela assistência à saúde na região."

// Elementos do Address
* use ^short = "Tipo de uso do endereço"
* use ^definition = "Identifica o propósito deste endereço."
* use from http://hl7.org/fhir/ValueSet/address-use
* use ^comment = "Os valores permitidos são: home (residencial), work (trabalho), temp (temporário), old (antigo). Para endereços de aldeias indígenas, normalmente será utilizado 'home'."

* type ^short = "Tipo do endereço"
* type ^definition = "Distingue entre endereços físicos (físico/para visita) e endereços postais (para correspondência)."
* type from http://hl7.org/fhir/ValueSet/address-type
* type ^comment = "Os valores permitidos são: postal (endereço postal), physical (endereço físico), both (ambos). Para aldeias indígenas, geralmente será 'physical'."

* line ^short = "Linha de endereço"
* line ^definition = "Este componente contém o nome da rua, número da casa, nome da aldeia, apartamento, número de caixa postal ou similar."
* line ^comment = "Para endereços de aldeias indígenas, este campo pode conter o nome da aldeia e informações adicionais de localização dentro da comunidade."

* city ^short = "Município"
* city ^definition = "Nome do município onde está localizado o endereço."

* city ^comment = "Para aldeias indígenas, este campo deve conter o município de referência onde a aldeia está situada."

* district ^short = "Distrito"
* district ^definition = "Nome do distrito administrativo (conhecido como bairro em algumas regiões)."
* district ^comment = "Este campo pode ser utilizado para especificar subdivisões administrativas dentro do município."

* state ^short = "Estado (UF)"
* state ^definition = "Sigla ou nome do estado (Unidade Federativa) onde está localizado o endereço."
* state ^comment = "Deve ser utilizada a sigla do estado brasileiro (ex: AM, RS, RR, etc.)."

* postalCode ^short = "CEP (Código de Endereçamento Postal)"
* postalCode ^definition = "Código de endereçamento postal designado pelo Correios do Brasil."
* postalCode ^comment = "O CEP deve ser fornecido no formato XXXXX-XXX. Para aldeias indígenas, pode-se utilizar o CEP do polo-base ou município de referência quando a aldeia não possuir CEP específico."

* country ^short = "País"
* country ^definition = "Código do país em formato ISO 3166."
* country ^comment = "Para o Brasil, deve ser utilizado o código 'BR' ou 'BRA'."
* country = "BR"

* period ^short = "Período de validade do endereço"
* period ^definition = "Período de tempo em que o endereço esteve ou está em uso."
* period ^comment = "Este elemento é útil para manter histórico de endereços anteriores, especialmente importante para populações com mobilidade territorial."


// ================================================================================
// EXTENSÕES
// ================================================================================

Extension: Aldeia
Id: br-core-address-aldeia
Title: "Aldeia Indígena"
Description: "Extensão que permite referenciar uma aldeia indígena como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira."
Context: Address

* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-30"
* ^publisher = "HL7 Brasil"
* ^purpose = "Permitir a identificação precisa da aldeia indígena onde um indivíduo reside ou onde uma atividade de saúde é realizada, essencial para a organização dos serviços de saúde indígena."
* ^copyright = "Copyright © 2025 HL7 Brasil"

* value[x] only Reference(BRCoreLocation)
* valueReference 1..1
* valueReference ^short = "Referência à Aldeia"
* valueReference ^definition = "Referência ao recurso Location que representa a aldeia indígena."
* valueReference ^comment = "A aldeia deve estar previamente cadastrada como um recurso Location do tipo 'si' (special institution) ou outro tipo apropriado que represente comunidades indígenas."


Extension: DSEI
Id: br-core-address-dsei
Title: "Distrito Sanitário Especial Indígena (DSEI)"
Description: "Extensão que permite referenciar um Distrito Sanitário Especial Indígena (DSEI) como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira."
Context: Address

* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-30"
* ^publisher = "HL7 Brasil"
* ^purpose = "Permitir a identificação do DSEI responsável pela coordenação das ações de saúde indígena na região onde está localizado o endereço, facilitando a gestão administrativa e epidemiológica dos serviços de saúde."
* ^copyright = "Copyright © 2025 HL7 Brasil"

* value[x] only Reference(BRCoreLocation)
* valueReference 1..1
* valueReference ^short = "Referência ao DSEI"
* valueReference ^definition = "Referência ao recurso Location que representa o Distrito Sanitário Especial Indígena."
* valueReference ^comment = "O DSEI deve estar previamente cadastrado como um recurso Location. Existem 34 DSEIs no Brasil, cada um responsável por uma região geográfica específica que abrange territórios indígenas."


Extension: PoloBase
Id: br-core-address-polo
Title: "Polo Base"
Description: "Extensão que permite referenciar um Polo Base como parte do endereço de um indivíduo ou organização no contexto da saúde indígena brasileira."
Context: Address

* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-30"
* ^publisher = "HL7 Brasil"
* ^purpose = "Permitir a identificação do Polo Base que atende a região do endereço, essencial para o planejamento e execução das ações de saúde, agendamento de consultas e serviços diagnósticos para populações indígenas."
* ^copyright = "Copyright © 2025  HL7 Brasil"

* value[x] only Reference(BRCoreLocation)
* valueReference 1..1
* valueReference ^short = "Referência ao Polo Base"
* valueReference ^definition = "Referência ao recurso Location que representa o Polo Base de saúde."
* valueReference ^comment = "O Polo Base deve estar previamente cadastrado como um recurso Location. Cada polo-base atende um conjunto de aldeias dentro da área de abrangência de um DSEI, servindo como ponto estratégico para a prestação de serviços de saúde e apoio logístico às Equipes Multidisciplinares de Saúde Indígena (EMSI)."
