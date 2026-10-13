# BR-Core: StructureDefinitions em JSON (main 9cf1bc9)

47 StructureDefinitions (perfis e extensões) do repositório HL7-BR/br.org.hl7.fhir.core,
commit 9cf1bc9 do main, sobre a 1.4.1. Cada arquivo traz differential e snapshot.

Gerado em 06/10/2026 com SUSHI 3.20.1 e IG Publisher 2.3.4, sem servidor de terminologia.

Inclui as correções do Sumário de Alta: discriminador pattern em section.code,
LOINC http://loinc.org, section.code com doc-section-codes (example), códigos de seção
do IPS, br-core-capacidadefuncional revisto e o novo br-core-bundle-documento.

Limitações do build:
- Os pacotes br.gov.saude.terminologia.fhir#1.2.0 e br.gov.saude.ips.fhir#1.0.0 não
  estavam acessíveis. Os bindings apontam para as URLs corretas, mas os ValueSets
  nacionais não foram resolvidos.
- As quatro extensões do IPS-BR usadas em br-core-patient (identidade-genero, raca,
  povo-indigena, sexo-nascimento) foram resolvidas por definições provisórias locais.
  As fatias e as URLs estão corretas; o conteúdo interno dessas extensões não vem
  do pacote oficial.
