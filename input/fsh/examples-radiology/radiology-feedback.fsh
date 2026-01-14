
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

//select other recommendation
* parameter[+].name = "feedback-task"
* parameter[=].resource = task-accepted-other-r

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

Instance: task-accepted-other-r
Title: "Radiology - Select other recommendation"
Description: "Prescriber selects an other recommendation"
InstanceOf: FeedbackTask
Usage: #example
* id = "task-accepted-other-r"
* focus.display = "MR, cervical spine, wo/w iv contrast"
* focus.identifier.system = $sct
* focus.identifier.value = "42807009"
* status = #accepted
* intent = #option
* statusReason.coding = PSSrFeedbackReasons#OtherReason
* statusReason.text = "Better alternative that was not provided by PSS"
* lastModified = "2025-05-28T10:10:00+02:00"

