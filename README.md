# Guia de Implantação FHIR BR-Core (HL7 Brasil)

![FHIR](https://img.shields.io/badge/FHIR-R4-firebrick.svg)
![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow.svg)
![Publisher](https://img.shields.io/badge/Publisher-HL7%20Brasil-blue.svg)

Este é o repositório oficial do **Guia de Implantação Core do Brasil (BR-Core)** em HL7 FHIR. 
O principal objetivo deste projeto é estabelecer a base nacional unificada e padronizada de recursos, extensões e terminologias para interoperabilidade na Saúde Digital Brasileira (como a RNDS e Saúde Suplementar).

⚠️ *Diferentemente de documentos específicos (como Sumário Internacional de Paciente ou Receita Digital), o BR-Core encorpora os perfis fundamentais da saúde brasileira: Pacientes, Organizações, Profissionais e Alinhadores Estruturais em sua generalidade.*

## 📐 Estrutura do Repositório

Optamos pelo padrão [FHIR Shorthand (FSH)](https://fshschool.org/) para declarar e refinar a estrutura dos nossos diagramas de maneira escalável.

* `input/fsh/`: Contém os artefatos base criados pela engenharia (.fsh)
  * `alias.fsh`: Mapeamento literal central de todas as URIs oficias e URLs do governo.
  * `StructureDefinition-*.fsh`: Nossos perfis (`Profiles`) e extensões (`Extensions`).
  * `TestesImplementacao.fsh`: Instâncias (casos de uso) para simular interoperabilidade e testar integridade base.
* `input/pagecontent/`: Arquivos textuais geradores das páginas (HTMl/XML) para a documentação final.
* `sushi-config.yaml`: Metadados oficiais de publicação e regimento de dependências da compilação SUSHI.

## 🛠️ Como executar localmente
Recomendamos gerar e testar qualquer modificação na sua máquina antes de enviar para publicação oficial.

### Pré-requisitos
1. [Node.js](https://nodejs.org/) (inclui NPM)
2. Compilador [FSH SUSHI](https://fshschool.org/docs/sushi/) via terminal:
```bash
npm install -g fsh-sushi
```

### Validação Rápida (Recomendado para o Dia a Dia)
Gere os JSONs brutos a partir das suas criações no terminal:
```bash
sushi .
```
*(Após finalizado, se tudo estiver verde, a pasta `/fsh-generated/resources` mostrará os JSONs puros prontos para uso em bancos via REST).*

### O Build Completo (IG Publisher)
Para rodar a esteira completa e emular as páginas do "Site Oficial" na sua máquina, com checagem rigorosa de terminologias:
**No Windows:**
```powershell
.\_genonce.bat
```
**(Linux/Mac:** `./_genonce.sh`)

## 🤝 Como contribuir
Sua participação é valiosa para o Sistema de Saúde! Algumas *guidelines*:
1. **Nomenclatura (Naming):** O HL7 Brasil prefere nomes como *BRPatient* no Titulo dos perfis, utilizando *kebab-case* para ids sistêmicos de documento (`Id: br-core-patient`).
2. Siga o fluxo tradicional de contribuição de código aberto: 
   - Faça seu `Fork` e isole seu código `git checkout -b feature/SuaFeature`.
   - Inclua no mínimo uma **Instância de Exemplo** atrelando a sua funcionalidade para agir como teste mecânico.
   - Abra seu *Pull Request*.

## 🔗 Links Úteis
* [HL7 Brasil Oficial](https://hl7.org.br/)
* [Especificação FHIR Shorthand](http://hl7.org/fhir/uv/shorthand/)
* [Catálogo Nacional de Terminologias Unificadas do MS](https://terminologia.saude.gov.br/)
