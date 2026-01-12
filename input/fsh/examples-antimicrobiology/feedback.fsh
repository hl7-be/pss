Instance: antimicrobial-feedback-green
Title: "Antimicrobial feedback - green recommendation"
Description: "Prescriber selects a green antimicrobial recommendation"
InstanceOf: Parameters
Usage: #example
* id = "antimicrobial-feedback-green"

// session identifier
* parameter[+].name = "pss-id"
* parameter[=].valueString = "0051510d-79e7-4bc6-a4f5-6b0654b23c03"

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
* id = "antimicrobial-feedback-red"

// session identifier
* parameter[+].name = "pss-id"
* parameter[=].valueString = "0051510d-79e7-4bc6-a4f5-6b0654b23c03"

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







Instance: alternative-request
InstanceOf: PSSResponseServiceRequest
* status = #active
* intent = #proposal
* code = PSSQSIProcedures#114055 "CT, head, wo iv contrast"
* subject = Reference(30551ce1-5a28-4356-b684-3e639094ad48)

* status = #draft
* intent = #proposal





//DELETE ONE OF THESE - Option 1: endpoint can be Task or Bundle
Instance: alternative-request-task
Title: "Antimicrobial - Select another option that is not in the recommendations"
Description: "Prescriber decides to use another treatment that is not in the PSS recommendations"
InstanceOf: Task
Usage: #example
* id = "alternative-request-task"
//* focus = Reference(30551ce1-5a28-4356-b684-1e639094ad29)  // e.g. another antimicrobial MedicationRequest
* status = #accepted
* intent = #option
* statusReason.coding = PSSaFeedbackReasons#FastResults
* statusReason.text = "Alternative treatment proposed due to patient age and need for faster treatment"
* lastModified = "2025-05-28T10:15:00+02:00"

Instance: alternative-request-bundle
InstanceOf: PSSFeedbackBundle
* entry[+].resource = alternative-request
* entry[+].resource = alternative-request-task

* identifier.value = "response1"
* timestamp = "2025-05-20T00:00:00Z"
* type = #collection
// End of Option 1
