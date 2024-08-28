Profile: br-core-allergy-intolerance
Parent: AllergyIntoleranceBRIPS
Id: br-core-allergy-intolerance
Title: "br-core-allergy-intolerance"
* code from http://www.saude.gov.br/fhir/r4/ValueSet/BRAlergenos-1.0 (required)
* patient only Reference(br-core-patient)
* recorder only Reference(br-core-practitioner or br-core-practitioner-role or br-core-patient or RelatedPerson)
* asserter only Reference(br-core-practitioner or br-core-practitioner-role or br-core-patient or RelatedPerson)
* reaction.manifestation from http://www.saude.gov.br/fhir/r4/ValueSet/BRReacoesAdversasMedDRA-1.0 (required)
* reaction.exposureRoute from http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration