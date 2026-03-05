Instance: feedback-accepted-green
Title: "Feedback: accepted green recommendation"
Description: "Example feedback parameters - accepted recommendation for a green task."
InstanceOf: Parameters
Usage: #example
* id = "feedback-accepted-green"
* parameter[+].name = "pss-id"
* parameter[=].valueString = "test-500089-2025-50060793"
* parameter[+].name = "feedback-task"
* parameter[=].resource = task-accepted-green


// Conforms to your FeedbackTask profile
Instance: task-accepted-green
InstanceOf: FeedbackTask
Description: "Example feedback task - accepted recommendation for a green task."
Usage: #example
* id = "task-accepted-green"
* focus = Reference(30551ce1-5a28-4356-b684-1e639094ad23)
* focus.identifier.value = "114055" // QSI internal code – CT head w/o contrast
* status = #accepted
* intent = #option
* lastModified = "2025-05-28T10:10:00+02:00"



