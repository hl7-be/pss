# FeedbackOption1 - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FeedbackOption1**

## Example Task: FeedbackOption1

Profile: [PSS Feedback Task](StructureDefinition-FeedbackTask.md)

**status**: Rejected

**statusReason**: Some Other Reason

**intent**: option

**focus**: [ServiceRequest MR, head, wo iv contrast](ServiceRequest-30551ce1-5a28-4356-b684-1e639044ad77.md)

**lastModified**: 2023-10-01 12:00:00+0000



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "FeedbackOption1",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
    ]
  },
  "status" : "rejected",
  "statusReason" : {
    "text" : "Some Other Reason"
  },
  "intent" : "option",
  "focus" : {
    "reference" : "ServiceRequest/30551ce1-5a28-4356-b684-1e639044ad77"
  },
  "lastModified" : "2023-10-01T12:00:00Z"
}

```
