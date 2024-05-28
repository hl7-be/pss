Instance: antimicrobial-recommendation-plan
InstanceOf: PlanDefinition
Usage: #example
* url = "https://www.ehealth.fgov.be/standards/fhir/pss/fhir/PlanDefinition/antimicrobial-recommendation-plan"
* version = "1.0.0"
* name = "AntimicrobialRecommendation"
* title = "Antimicrobial Recommendation"
* status = #active
* date = "2024-05-27"
* description = "A PlanDefinition for managing antimicrobial recommendations."
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/fhir/StructureDefinition/antimicrobial-recommendation-plan"
* action[0].title = "Receive Indication"
* action[=].description = "Client sends a Parameters resource with an indication (SNOMED CT code)"
* action[=].trigger.type = #named-event
* action[=].trigger.name = "apply"
* action[=].condition.kind = #applicability
* action[=].condition.expression.language = #text/fhirpath
* action[=].condition.expression.expression = "%resource.resourceType = 'Parameters'"
* action[=].input.type = #Parameters
* action[=].input.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/fhir/StructureDefinition/indication-parameters"
* action[=].output.type = #Questionnaire
* action[=].output.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/fhir/StructureDefinition/antimicrobial-questionnaire"
* action[+].title = "Receive QuestionnaireResponse"
* action[=].description = "Client submits a QuestionnaireResponse"
* action[=].trigger.type = #named-event
* action[=].trigger.name = "apply"
* action[=].condition.kind = #applicability
* action[=].condition.expression.language = #text/fhirpath
* action[=].condition.expression.expression = "%resource.resourceType = 'QuestionnaireResponse'"
* action[=].input.type = #QuestionnaireResponse
* action[=].input.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/fhir/StructureDefinition/antimicrobial-questionnaire-response"
* action[=].output.type = #Bundle
* action[=].output.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/examinations-bundle"