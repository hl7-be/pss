Instance: match-indications
InstanceOf: ActivityDefinition
Usage: #example
* url = "https://www.ehealth.fgov.be/standards/fhir/pss/ActivityDefinition/match-indications"
* status = #active
* description = "Match the provided patient parameters with potential indications."
* kind = #Questionnaire
//* input.type = "Parameters"
//* input.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/fhir/StructureDefinition/patient-parameters"
//* output.type = "Questionnaire"
//* output.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/fhir/StructureDefinition/questionnaire-matching-indications"