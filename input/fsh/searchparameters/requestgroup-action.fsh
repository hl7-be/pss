Instance: requestgroup-action
InstanceOf: SearchParameter
Usage: #definition
* url = "http://example.org/fhir/SearchParameter/requestgroup-action"
* version = "1.0.1"
* name = "RequestGroupActionResource"
* status = #active
* description = "Resources referenced anywhere in RequestGroup.action[*.].resource (supports one level of nested actions)."
* code = #action
* base = #RequestGroup
* type = #reference
* expression = "RequestGroup.action.resource | RequestGroup.action.action.resource | RequestGroup.action.action.action.resource"
* target[0] = #ServiceRequest
* target[+] = #MedicationRequest
* target[+] = #Procedure
* target[+] = #Observation
* target[+] = #DiagnosticReport
* target[+] = #CommunicationRequest
* target[+] = #MedicationDispense
* target[+] = #MedicationAdministration
* target[+] = #Task
* multipleOr = true
* multipleAnd = true

// To Do:
// Make query for GET Feedback?identifier=PSS_ID&include=Task