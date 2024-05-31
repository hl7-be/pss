Instance: be-op-plandefinition-evaluate
InstanceOf: OperationDefinition
Usage: #definition
* url = "https://www.ehealth.fgov.be/standards/fhir/pss/OperationDefinition/be-op-plandefinition-evaluate"
* version = "1.0.0"
* name = "Evaluate"
* status = #active
* kind = #operation
* code = #evaluate
* resource = #PlanDefinition
* system = false
* type = false
* instance = true
* parameter[0].name = #planDefinition
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #PlanDefinition
* parameter[=].documentation = "The instance of plandefinition this operation is invoked on"
* parameter[+].name = #context
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Bundle
* parameter[=].documentation = "Additional information needed to evaluate the PlanDefinition"
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #CarePlan
* parameter[=].documentation = "A CarePlan structure containing the next steps as indicated by the PlanDefinition"