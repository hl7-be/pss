Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: Feedback
Title: "PSS Feedback Operation Definition"
Description: "Operation to provide feedback on PSS suggestions"
InstanceOf: OperationDefinition
Usage: #definition

* name = "Feedback"
* title = "PSS Feedback"
* status = #active
* kind = #operation
* experimental = false
* affectsState = false
* resource = #PlanDefinition

* code = #feedback

* system = false
* type = true
* instance = true

* parameter[0].name = #pss-id
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "the PSS ID"
* parameter[=].type = #string


* parameter[+].name = #feedback-task
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "A Task representing the decision on the PSS request. In case the decision is to override an original proposal, or go for a completely different proposal that is not among those provided by PSS, the client shall provide that order, anonymized, with intent=`proposal`, and with a new `id`."
* parameter[=].type = #Resource


//Review feedback operation, add reference to new option considered by the physician. 
//This would NO LONGER be feedback on a proposal, NOR submit the actual ServiceRequest because PSS doesn't want those. 
//This would be a refence to an internal prescription ID.
//Alternativelity, we could have a dummy ServiceRequest and see if that can follow the profile (anonymous etc).



Profile: FeedbackTask
Parent: Task
Description: "Task to collect feedback on PSS suggestions"
* focus 1.. MS
* focus.identifier MS // for normal PS ID
* focus.reference MS // used in case of new or modified orders
* lastModified 1.. MS
* status 1.. MS  // can only be accepted or rejected. For Overridden, please use Business Status
//* businessStatus 0..1 MS
* statusReason 0..1 MS //Why was it accepted or rejected

//* status from (subscriber;provider) // can we use VCL here?


* ^description = "Task to collect feedback on PSS suggestions"
* ^title = "PSS Feedback Task"
* ^status = #active


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






*/
// To Do:
// Make query for GET Feedback?identifier=PSS_ID&include=Task


// In order to retrieve PSS feedback, the authorised user can query by Task.
// (simple task example here)
// or by PSS ID and get everything
// (new fancy query example here)

Instance: radiology-feedback
Title: "Radiology feedback"
InstanceOf: Parameters
Usage: #example
// session identifier
* id = "radiology-feedback"
* parameter[+].name = "pss-id"
* parameter[=].valueString = "test-500089-2025-50060793"

//select green recommendation
* parameter[+].name = "feedback-task"
* parameter[=].resource = task-accepted-green

//select orange/red recommendation
* parameter[+].name = "feedback-task"
* parameter[=].resource = task-accepted-orange

Instance: task-accepted-green-r
Title: "Radiology - Select green recommendation"
Description: "Prescriber selects a green recommendation"
InstanceOf: FeedbackTask
Usage: #example
* id = "task-accepted-green"
* focus = Reference(30551ce1-5a28-4356-b684-1e639094ad23)
* focus.identifier.value = "114055" // QSI internal code – CT head w/o contrast
* status = #accepted
* intent = #option
* lastModified = "2025-05-28T10:10:00+02:00"

Instance: task-accepted-orange-r
Title: "Radiology - Select orange recommendation"
Description: "Prescriber selects an orange recommendation"
InstanceOf: FeedbackTask
Usage: #example
* id = "task-accepted-orange"
* focus = Reference(30551ce1-5a28-4356-b684-1e639094ad23)
* focus.identifier.value = "114054" // QSI internal code – CT, head, with/without IV contrast
* status = #accepted
* intent = #option
* statusReason.coding = PSSFeedbackReasons#other-reason
* statusReason.text = "Some Other Reason"
* lastModified = "2025-05-28T10:10:00+02:00"

CodeSystem: PSSFeedbackCodes
Title: "PSS Feedback Codes"
Description: "Feedback codes for PSS"
* ^experimental = false
* ^caseSensitive = true

* #accepted "Accepted"
* #rejected "Rejected"
* #overridden "Overridden"



ValueSet: PSSFeedbackCodesVS
Title: "PSS Feedback Codes"
Description: "Feedback codes for PSS"
* codes from system PSSFeedbackCodes


CodeSystem: PSSFeedbackReasons
Title: "PSS Feedback Code Reasons"
Description: "Feedback code reasons for PSS"
* ^experimental = false
* ^caseSensitive = true

* #clinic-issue "Concerning clinical presentation"
* #comorbidities "Comorbidities"
* #fast-results "Faster results"
* #Pos-Prev-Exp "Positive prior experience"
* #insuff-effect "Insufficient effect of recommended management in the past"
* #better-tol "Better tolerated"
* #allergy "Allergy"
* #other-reason "Other reason — which"


ValueSet: PSSFeedbackReasonsVS
Title: "PSS Feedback Code Reasons"
Description: "Feedback code reasons for PSS"
* codes from system PSSFeedbackReasons













