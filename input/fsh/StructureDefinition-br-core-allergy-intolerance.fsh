Profile: br-core-allergy-intolerance
Parent: AllergyIntoleranceBRIPS
Id: br-core-allergy-intolerance
Title: "br-core-allergy-intolerance"
Description: "Alergia ou intolerância (geralmente: risco de reação adversa a uma substância)."

* code from https://simplifier.net/redenacionaldedadosemsaude/valueset-bralergenos-1.0 (required)
* patient only Reference(br-core-patient)
//* encounter only Reference(br-core-contatoassistencial)
* recorder only Reference(br-core-patient or br-core-practitioner or br-core-practitioner-role or br-core-related-person)
* asserter only Reference(br-core-patient or br-core-practitioner or br-core-practitioner-role or br-core-related-person)
* reaction.substance from https://terminologia.saude.gov.br/fhir/ValueSet/BRAlergenos
* reaction.manifestation from https://terminologia.saude.gov.br/fhir/ValueSet/BRMedDRA (required)
* reaction.exposureRoute from https://terminologia.saude.gov.br/fhir/ValueSet/medicine-route-of-administration/