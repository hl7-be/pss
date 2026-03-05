# Radiology - Select other recommendation - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiology - Select other recommendation**

## Example Task: Radiology - Select other recommendation

Profile: [PSS Feedback Task](StructureDefinition-FeedbackTask.md)

**status**: Accepted

**statusReason**: Better alternative that was not provided by PSS

**intent**: option

**focus**: MR, cervical spine, wo/w iv contrast (Identifier: [SNOMED CT International Edition](http://terminology.hl7.org/6.1.0/NamingSystem-v3-snomed-CT.html)/42807009)

**lastModified**: 2025-05-28 10:10:00+0200



## Resource Content

```json
{
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

```
