# Radiology - Select orange recommendation - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiology - Select orange recommendation**

## Example Task: Radiology - Select orange recommendation

Profile: [PSS Feedback Task](StructureDefinition-FeedbackTask.md)

**status**: Accepted

**statusReason**: Some Other Reason

**intent**: option

**focus**: [ServiceRequest CT, head, wo iv contrast](ServiceRequest-30551ce1-5a28-4356-b684-1e639094ad23.md)

**lastModified**: 2025-05-28 10:10:00+0200



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-accepted-orange-r",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
    ]
  },
  "status" : "accepted",
  "statusReason" : {
    "coding" : [
      {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSrFeedbackReasons",
        "code" : "OtherReason"
      }
    ],
    "text" : "Some Other Reason"
  },
  "intent" : "option",
  "focus" : {
    "reference" : "ServiceRequest/30551ce1-5a28-4356-b684-1e639094ad23",
    "identifier" : {
      "value" : "114054"
    }
  },
  "lastModified" : "2025-05-28T10:10:00+02:00"
}

```
