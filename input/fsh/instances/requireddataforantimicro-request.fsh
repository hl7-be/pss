Instance: be-op-required-dataforantimicro-request
InstanceOf: OperationDefinition
Usage: #definition
* url = "https://www.ehealth.fgov.be/standards/fhir/pss/OperationDefinition/be-op-required-dataforantimicro-request"
* version = "1.0"
* name = "RequiredDataForAntimicro"
* status = #active
* kind = #operation
* code = #requiredDataForAntimicro
* system = true
* type = false
* instance = false
* parameter[0].name = #indication
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The indication selected by EPD"
* parameter[=].type = #Coding
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Questionnaire