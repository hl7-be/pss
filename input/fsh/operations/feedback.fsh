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
* parameter[=].resource = task-accepted-green-r

//select orange/red recommendation
* parameter[+].name = "feedback-task"
* parameter[=].resource = task-accepted-orange-r

Instance: task-accepted-green-r
Title: "Radiology - Select green recommendation"
Description: "Prescriber selects a green recommendation"
InstanceOf: FeedbackTask
Usage: #example
* id = "task-accepted-green-r"
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
* id = "task-accepted-orange-r"
* focus = Reference(30551ce1-5a28-4356-b684-1e639094ad23)
* focus.identifier.value = "114054" // QSI internal code – CT, head, with/without IV contrast
* status = #accepted
* intent = #option
* statusReason.coding = PSSrFeedbackReasons#OtherReason
* statusReason.text = "Some Other Reason"
* lastModified = "2025-05-28T10:10:00+02:00"

Instance: antimicrobial-feedback-green
Title: "Antimicrobial feedback - green recommendation"
Description: "Prescriber selects a green antimicrobial recommendation"
InstanceOf: Parameters
Usage: #example
* id = "antimicrobial-feedback-green"

// session identifier
* parameter[+].name = "pss-id"
* parameter[=].valueString = "test-500089-2025-60012345"

// select green recommendation
* parameter[+].name = "feedback-task"
* parameter[=].resource = task-accepted-green-a

Instance: task-accepted-green-a
Title: "Antimicrobial - Select green recommendation"
Description: "Prescriber selects a green antimicrobial recommendation"
InstanceOf: FeedbackTask
Usage: #example
* id = "task-accepted-green-a"
* focus = Reference(30551ce1-5a28-4356-b684-1e639094ac23)  // e.g. antimicrobial MedicationRequest
* focus.identifier.value = "J01XD01"                        // ATC
* status = #accepted
* intent = #option
* lastModified = "2025-05-28T10:10:00+02:00"

Instance: antimicrobial-feedback-red
Title: "Antimicrobial feedback - red recommendation"
Description: "Prescriber selects an red antimicrobial recommendation with a reason"
InstanceOf: Parameters
Usage: #example
* id = "antimicrobial-feedback-orange"

// session identifier
* parameter[+].name = "pss-id"
* parameter[=].valueString = "test-500089-2025-60012345"

// select orange/red recommendation
* parameter[+].name = "feedback-task"
* parameter[=].resource = task-accepted-red-a

Instance: task-accepted-orange-a
Title: "Antimicrobial - Select red recommendation"
Description: "Prescriber selects an red antimicrobial recommendation with a reason"
InstanceOf: FeedbackTask
Usage: #example
* id = "task-accepted-red-a"
* focus = Reference(30551ce1-5a28-4356-b684-1e639094ad29)  // e.g. another antimicrobial MedicationRequest
* status = #accepted
* intent = #option
* statusReason.coding = PSSaFeedbackReasons#OtherReason
* statusReason.text = "Alternative required due to previous insufficient effect"
* lastModified = "2025-05-28T10:15:00+02:00"


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


CodeSystem: PSSaFeedbackReasons
Title: "PSSa Feedback Code Reasons"
Description: "Feedback code reasons for PSS antimicrobial"
* ^experimental = false
* ^caseSensitive = true

* #ClinicIssue "Concerning clinical presentation"
* #Comorbidities "Comorbidities"
* #FastResults "Faster results"
* #PosPrevExp "Positive prior experience"
* #InsuffEffect "Insufficient effect of recommended management in the past"
* #BetterTol "Better tolerated"
* #Allergy "Allergy"
* #OtherReason "Other reason — which"

CodeSystem: PSSrFeedbackReasons
Title: "PSSr Feedback Code Reasons"
Description: "Feedback code reasons for PSS radiology"
* ^experimental = false
* ^caseSensitive = true

* #Pregnancy "Contraindicated due to pregnancy"
* #ImplantIncompatibility "Not suitable because of an implanted device"
* #ContrastAllergy "Patient has allergy to contrast agents"
* #IncompleteRecommendation "Recommendation lacked needed clinical details"
* #WaitingTimeTooLong "Expected waiting time is too long"
* #Emergency "Urgent situation requiring faster action"
* #OtherReason "Other reason — which"


ValueSet: PSSFeedbackReasonsVS
Title: "PSS Feedback Code Reasons"
Description: "Feedback code reasons for PSS"
* codes from system PSSaFeedbackReasons
* codes from system PSSrFeedbackReasons
