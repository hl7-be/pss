Instance: be-op-getIndications
InstanceOf: OperationDefinition
Usage: #definition
* version = "1.0.1"
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
* parameter[+].name = #indication_proposal
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].type = #CodeableConcept
* parameter[=].documentation = "The code(s) for the indication(s) from various coding systems (e.g., SNOMED, ICD-10, CPC-2)."
* parameter[=].binding.strength = #required
* parameter[=].binding.valueSet = "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/be-pss-condition-codes"
* parameter[+].name = #freetext_indication
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].type = #string
* parameter[=].documentation = "The free text description of the patient's indication(s)."
* parameter[+].name = #examination_proposal
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #CodeableConcept
* parameter[=].documentation = "Proposed examination code(s) from various coding systems (e.g., internal, SNOMED, ICD-10, CPC-2)."
* parameter[=].binding.strength = #required
* parameter[=].binding.valueSet = "http://your-internal-system/qsi-examinations"
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Questionnaire