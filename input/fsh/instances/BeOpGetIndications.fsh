Instance: be-op-get-indications
InstanceOf: OperationDefinition
Usage: #definition
* url = "https://www.ehealth.fgov.be/standards/fhir/pss/OperationDefinition/be-op-get-indications"
* version = "1.0.0"
* name = "GetIndications"
* status = #active
* kind = #operation
* code = #getIndications
* system = true
* type = false
* instance = false
* parameter[0].name = #age
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #integer
* parameter[=].documentation = "Age of the patient"
* parameter[+].name = #gender
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #code
* parameter[=].documentation = "Gender of the patient, possible values are: male, female, unknown"
* parameter[+].name = #snomed_code
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].type = #CodeableConcept
* parameter[=].documentation = "The SNOMED code(s) for the condition(s)."
* parameter[=].binding.strength = #required
* parameter[=].binding.valueSet = "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/be-pss-indications"
* parameter[+].name = #freetext_indication
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].type = #string
* parameter[=].documentation = "The free text indication(s) of the patient's condition(s)."
* parameter[+].name = #examination
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #integer
* parameter[=].documentation = "Optional examination code"
* parameter[+].name = #response
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Questionnaire