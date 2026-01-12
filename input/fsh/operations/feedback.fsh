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


* parameter[+].name = #feedback-resource
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "A Task, or a Bundle containing the Task as well as a new request, representing the decision on the PSS request. In case the decision is to override an original proposal, or go for a completely different proposal that is not among those provided by PSS, the client shall provide that order, anonymized, with intent=`proposal`, and with a new `id`."
* parameter[=].type = #Resource
//* parameter[=].allowedType[+] = #Task
//* parameter[=].allowedType[+] = #Bundle

* parameter[=].targetProfile[+] = Canonical(PSSFeedbackBundle)
* parameter[=].targetProfile[+] = Canonical(FeedbackTask)


//Review feedback operation, add reference to new option considered by the physician. 
//This would NO LONGER be feedback on a proposal, NOR submit the actual ServiceRequest because PSS doesn't want those. 
//This would be a refence to an internal prescription ID.
//Alternativelity, we could have a dummy ServiceRequest and see if that can follow the profile (anonymous etc).








// //DELETE ONE OF THESE - Option 2
// Instance: alternative-request-task-w-contained
// Title: "Antimicrobial - Select another option that is not in the recommendations"
// Description: "Prescriber decides to use another treatment that is not in the PSS recommendations"
// InstanceOf: FeedbackTask
// Usage: #example
// * contained[+] = alternative-request
// * id = "alternative-request-task"
// //* focus = Reference(30551ce1-5a28-4356-b684-1e639094ad29)  // e.g. another antimicrobial MedicationRequest
// * status = #accepted
// * intent = #option
// * statusReason.coding = PSSaFeedbackReasons#FastResults
// * statusReason.text = "Alternative treatment proposed due to patient age and need for faster treatment"
// * lastModified = "2025-05-28T10:15:00+02:00"

// // End of Option 2










