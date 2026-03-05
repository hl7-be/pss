# FeedbackGroup1 - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FeedbackGroup1**

## Example Task: FeedbackGroup1

Profile: [PSS Feedback Task](StructureDefinition-FeedbackTask.md)

**status**: Accepted

**intent**: option

**focus**: [RequestGroup: status = active; intent = proposal](RequestGroup-getrecommendations-r-response-1.md)

**lastModified**: 2023-10-01 12:00:00+0000

**owner**: Identifier: Practitioner2



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "FeedbackGroup1",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
    ]
  },
  "status" : "accepted",
  "intent" : "option",
  "focus" : {
    "reference" : "RequestGroup/getrecommendations-r-response-1"
  },
  "lastModified" : "2023-10-01T12:00:00Z",
  "owner" : {
    "identifier" : {
      "value" : "Practitioner2"
    }
  }
}

```
