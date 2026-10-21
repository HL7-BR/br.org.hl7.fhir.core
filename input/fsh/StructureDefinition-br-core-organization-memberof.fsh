Extension: BRCoreOrganizationMemberOf
Id: br-core-organization-memberof
Title: "Vínculo do Estabelecimento"
Description: "Extensão que representa a organização à qual o estabelecimento está vinculado, por exemplo um Polo-base da Saúde Indígena. Diferente de Organization.partOf (0..1, usado para a mantenedora), um estabelecimento pode ter vários vínculos: alguns estabelecimentos (CNES) estão vinculados a mais de um polo-base."
Context: Organization

* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-10-21"
* ^publisher = "HL7 Brasil"
* ^jurisdiction = urn:iso:std:iso:3166#BR
* ^purpose = "Permitir registrar os vínculos de um estabelecimento de saúde com outras organizações, como os polos-base da saúde indígena, quando houver mais de um."
* ^copyright = "Copyright © 2026 HL7 Brasil"
* . ^short = "Organização à qual o estabelecimento está vinculado"
* . ^definition = "Organização à qual o estabelecimento está vinculado, por exemplo um Polo-base da Saúde Indígena. Repete-se uma vez por vínculo."
* . ^comment = "A mantenedora continua em Organization.partOf. Use esta extensão para vínculos que podem ser vários, como os polos-base de um estabelecimento."
* value[x] 1..1
* value[x] only Reference(br-core-organization)
* value[x] ^short = "Organização vinculada"
* value[x] ^definition = "Referência à organização à qual o estabelecimento está vinculado."
