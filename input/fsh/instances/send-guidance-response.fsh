Instance: send-guidance-response
InstanceOf: ActivityDefinition
Usage: #example
* url = "https://www.ehealth.fgov.be/standards/fhir/pss/fhir/ActivityDefinition/send-guidance-response"
* status = #active
* description = "ActivityDefinition to send a GuidanceResponse"
* kind = #GuidanceResponse
//* input.type = "QuestionnaireResponse"
//* input.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/fhir/StructureDefinition/antimicrobial-questionnaire-response"
//* output.type = "GuidanceResponse"
//* output.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/fhir/StructureDefinition/antimicrobial-guidance-response"