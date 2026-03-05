# FeedbackOption2 - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FeedbackOption2**

## Example Task: FeedbackOption2

Profile: [PSS Feedback Task](StructureDefinition-FeedbackTask.md)

**status**: Accepted

**statusReason**: Some Other Reason

**intent**: option

**focus**: [ServiceRequest MR, head, wo iv contrast](ServiceRequest-30551ce1-5a28-4356-b684-1e639044ad77.md)

**lastModified**: 2023-10-01 12:00:00+0000



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "FeedbackOption2",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
    ]
  },
  "status" : "accepted",
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
