# Feedback: accepted green recommendation - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Feedback: accepted green recommendation**

## Example Parameters: Feedback: accepted green recommendation

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "feedback-accepted-green",
  "parameter" : [
    {
      "name" : "pss-id",
      "valueString" : "test-500089-2025-50060793"
    },
    {
      "name" : "feedback-task",
      "resource" : {
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
    }
  ]
}

```
