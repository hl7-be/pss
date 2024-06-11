Instance: be-op-antimicro-guidance-request
InstanceOf: OperationDefinition
Usage: #definition
* url = "https://www.ehealth.fgov.be/standards/fhir/pss/OperationDefinition/be-op-antimicro-guidance-request"
* version = "1.0"
* name = "AntimicroGuidance"
* status = #active
* kind = #operation
* description = "Request for antimicrobial guidance based on patient condition and support parameters"
* code = #antimicroGuidanceRequest
* system = true
* type = false
* instance = false
* parameter[0].name = #questionnaireResponse
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The response to the support parameters and patient variables questionnaire"
* parameter[=].type = #QuestionnaireResponse
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Bundle
* parameter[=].documentation = "The operation returns a Bundle containing a GuidanceResponse and a Parameters resource."