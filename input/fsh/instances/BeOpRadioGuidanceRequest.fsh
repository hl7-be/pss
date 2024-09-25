Instance: be-op-radioguidance-request
InstanceOf: OperationDefinition
Usage: #definition
* version = "1.0"
* name = "RadioGuidanceRequest"
* status = #active
* kind = #operation
* code = #radioGuidanceRequest
* system = true
* instance = false
* type = false
* parameter[0].name = #response
* parameter[=].type = #QuestionnaireResponse
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The indications selected by EPD"
* parameter[+].name = #return
* parameter[=].type = #Bundle
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The operation returns a Bundle containing a GuidanceResponse and a Parameters resource."