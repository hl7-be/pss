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
