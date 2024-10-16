Profile: br-core-allergyintolerance
Parent: AllergyIntoleranceBRIPS
Id: br-core-allergyintolerance
Title: "br-core-allergyintolerance"
Description: "Alergia ou intolerância (geralmente: risco de reação adversa a uma substância)."

* code from https://simplifier.net/redenacionaldedadosemsaude/valueset-bralergenos-1.0 (required)
* patient only Reference(br-core-patient)
* encounter only Reference(br-core-encounter)
* recorder only Reference(br-core-patient or br-core-practitioner or br-core-practitionerrole or br-core-relatedperson)
* asserter only Reference(br-core-patient or br-core-practitioner or br-core-practitionerrole or br-core-relatedperson)
* reaction.substance from https://terminologia.saude.gov.br/fhir/ValueSet/BRAlergenos
* reaction.manifestation from https://terminologia.saude.gov.br/fhir/ValueSet/BRMedDRA (required)
* reaction.exposureRoute from https://terminologia.saude.gov.br/fhir/ValueSet/medicine-route-of-administration/