Profile: br-core-specimen
Parent: SpecimenBRIPS
Id: br-core-specimen
Description: "Este perfil representa uma amostra."

* type from https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoAmostra
//* subject only Reference(br-core-patient or Group or Device or Substance or br-core-location)
* parent only Reference(br-core-specimen)
* request only Reference(br-core-servicerequest)
* collection.collector only Reference(br-core-practitioner or br-core-practitionerrole)