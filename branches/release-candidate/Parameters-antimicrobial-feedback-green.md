# Antimicrobial feedback - green recommendation - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antimicrobial feedback - green recommendation**

## Example Parameters: Antimicrobial feedback - green recommendation



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "antimicrobial-feedback-green",
  "parameter" : [
    {
      "name" : "pss-id",
      "valueString" : "0051510d-79e7-4bc6-a4f5-6b0654b23c03"
    },
    {
      "name" : "feedback-task",
      "resource" : {
        "resourceType" : "Task",
        "id" : "task-accepted-green-a",
        "meta" : {
          "profile" : [
            "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
          ]
        },
        "status" : "accepted",
        "intent" : "option",
        "focus" : {
          "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-1e639094ac23",
          "identifier" : {
            "value" : "J01XD01"
          }
        },
        "lastModified" : "2025-05-28T10:10:00+02:00"
      }
    }
  ]
}

```
