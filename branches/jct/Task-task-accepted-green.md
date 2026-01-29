# task-accepted-green - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **task-accepted-green**

## Example Task: task-accepted-green

Profile: [PSS Feedback Task](StructureDefinition-FeedbackTask.md)

**status**: Accepted

**intent**: option

**focus**: [ServiceRequest CT, head, wo iv contrast](ServiceRequest-30551ce1-5a28-4356-b684-1e639094ad23.md)

**lastModified**: 2025-05-28 10:10:00+0200



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-accepted-green",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
    ]
  },
  "status" : "accepted",
  "intent" : "option",
  "focus" : {
    "reference" : "ServiceRequest/30551ce1-5a28-4356-b684-1e639094ad23",
    "identifier" : {
      "value" : "114055"
    }
  },
  "lastModified" : "2025-05-28T10:10:00+02:00"
}

```
