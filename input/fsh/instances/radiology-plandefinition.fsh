Instance: radiology-plandefinition
InstanceOf: PlanDefinition
Usage: #example
* url = "https://www.ehealth.fgov.be/standards/fhir/pss/PlanDefinition/Radiology"
* version = "1.0.0"
* name = "RadiologyPlanDefinition"
* status = #active
* type = $plan-definition-type#clinical-protocol
* action[0].title = "Match Indications"
* action[=].description = "Match the provided parameters with potential matching coded indications."
* action[=].trigger.type = #named-event
* action[=].trigger.name = "apply"
* action[=].condition.kind = #applicability
* action[=].condition.expression.language = #text/fhirpath
* action[=].condition.expression.expression = "%resource.resourceType = 'Parameters'"
* action[=].definitionCanonical = "https://www.ehealth.fgov.be/standards/fhir/pss/ActivityDefinition/match-indications"
* action[=].input.type = #Parameters
* action[=].input.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/fhir/StructureDefinition/radiology-parameters"
* action[=].output.type = #Questionnaire
* action[=].output.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/fhir/StructureDefinition/questionnaire-matching-indications"
* action[+].title = "Propose Examinations"
* action[=].description = "Propose examinations based on the selected indication."
* action[=].trigger.type = #named-event
* action[=].trigger.name = "apply"
* action[=].condition.kind = #applicability
* action[=].condition.expression.language = #text/fhirpath
* action[=].condition.expression.expression = "%resource.resourceType = 'QuestionnaireResponse'"
* action[=].definitionCanonical = "https://www.ehealth.fgov.be/standards/fhir/pss/ActivityDefinition/propose-examinations"
* action[=].input.type = #QuestionnaireResponse
* action[=].input.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/fhir/StructureDefinition/radiology-questionnaire-response"
* action[=].output.type = #Bundle
* action[=].output.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/examinations-bundle"