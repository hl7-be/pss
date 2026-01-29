# Antimicrobial - Select another option that is not in the recommendations - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antimicrobial - Select another option that is not in the recommendations**

## Example Task: Antimicrobial - Select another option that is not in the recommendations

**status**: Accepted

**statusReason**: Alternative treatment proposed due to patient age and need for faster treatment

**intent**: option

**lastModified**: 2025-05-28 10:15:00+0200



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "alternative-request-task",
  "status" : "accepted",
  "statusReason" : {
    "coding" : [
      {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSaFeedbackReasons",
        "code" : "FastResults"
      }
    ],
    "text" : "Alternative treatment proposed due to patient age and need for faster treatment"
  },
  "intent" : "option",
  "lastModified" : "2025-05-28T10:15:00+02:00"
}

```
