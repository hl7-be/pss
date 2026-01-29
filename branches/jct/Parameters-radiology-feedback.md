# Radiology feedback - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiology feedback**

## Example Parameters: Radiology feedback



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "radiology-feedback",
  "parameter" : [
    {
      "name" : "pss-id",
      "valueString" : "test-500089-2025-50060793"
    },
    {
      "name" : "feedback-task",
      "resource" : {
        "resourceType" : "Task",
        "id" : "task-accepted-green-r",
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
    },
    {
      "name" : "feedback-task",
      "resource" : {
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
    },
    {
      "name" : "feedback-task",
      "resource" : {
        "resourceType" : "Task",
        "id" : "task-accepted-other-r",
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
          "text" : "Better alternative that was not provided by PSS"
        },
        "intent" : "option",
        "focus" : {
          "identifier" : {
            "system" : "http://snomed.info/sct",
            "value" : "42807009"
          },
          "display" : "MR, cervical spine, wo/w iv contrast"
        },
        "lastModified" : "2025-05-28T10:10:00+02:00"
      }
    }
  ]
}

```
