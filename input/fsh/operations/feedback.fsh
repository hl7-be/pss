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
* parameter[=].type = #Identifier // or string? Identifier is a superset.

* parameter[+].name = #feedback-timestamp
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Feedback time stamp"
* parameter[=].type = #dateTime

* parameter[+].name = #outcome
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Overall outcome"
* parameter[=].type = #Coding



* parameter[+].name = #suggestion-feedback
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Feedback on individual suggestions"


* parameter[=].part[0].name = #suggestion-id
* parameter[=].part[=].use = #in
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "The suggestion id"
* parameter[=].part[=].type = #Identifier

* parameter[=].part[+].name = #outcome
* parameter[=].part[=].use = #in
* parameter[=].part[=].min = 1
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "The outcome of the suggestion"
* parameter[=].part[=].type = #Coding

* parameter[=].part[=].binding.strength = #required
* parameter[=].part[=].binding.valueSet = Canonical(PSSFeedbackCodesVS)


* parameter[=].part[+].name = #override-reason
* parameter[=].part[=].use = #in
* parameter[=].part[=].min = 0
* parameter[=].part[=].max = "1"
* parameter[=].part[=].documentation = "The reason for override or rejection"
* parameter[=].part[=].type = #Coding

* parameter[=].part[=].binding.strength = #required
* parameter[=].part[=].binding.valueSet = Canonical(PSSFeedbackReasonsVS)





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

* #patient-preference "Due to patient preference"
* #patient-refusal "Due to patient refusal"
* #not-applicable "Not applicable to the current case"
* #clinical-concerns "Recipient has concerns about applying the guidance"
* #suboptimal-guidance "Perceived issues with guidelines (not timely, unclear...)"
* #guidance-disagreement "Recipient disagrees with guidance"
* #feasibility "Guidance is not considered feasible for the case"


ValueSet: PSSFeedbackReasonsVS
Title: "PSS Feedback Code Reasons"
Description: "Feedback code reasons for PSS"
* codes from system PSSFeedbackReasons


