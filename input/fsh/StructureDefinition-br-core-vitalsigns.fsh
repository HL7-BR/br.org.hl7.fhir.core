Profile: br-core-vitalsigns
Parent: VitalSignsBRIPS
Id: br-core-vitalsigns
Description: "Este perfil representa uma sinal vital."

* basedOn only Reference(br-core-careplan or DeviceRequest or ImmunizationRecommendation or br-core-medicationrequest or NutritionOrder or br-core-servicerequest) 
//* partOf only Reference(br-core-medicationadministration or br-core-medicationdispense or br-core-medicationstatement or br-core-procedure or ImmunizationBRIPS or ImagingStudyBRIPS)
* subject only Reference(br-core-patient)
//* display only Reference(br-core-encounter)
* encounter only Reference(br-core-encounter)
//* effective[x].id.extension only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or br-core-patient or br-core-relatedperson or Device or CareTeam)
* issued 1..1
* performer only Reference(br-core-practitioner or br-core-practitionerrole or br-core-organization or CareTeam or br-core-patient or br-core-relatedperson)
* value[x] 1..1
//* derivedFrom only Reference(DocumentReference or br-core-imagingstudy or Media or QuestionnaireResponse or br-core-observation or MolecularSequence)
