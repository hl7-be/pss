# PSS Feedback Task - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Feedback Task**

## Resource Profile: PSS Feedback Task 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask | *Version*:1.0.0 |
| Active as of 2025-11-04 | *Computable Name*:FeedbackTask |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.19 | |

 
Task to collect feedback on PSS suggestions 

**Usages:**

* Examples for this Profile: [Task/FeedbackGroup1](Task-FeedbackGroup1.md), [Task/FeedbackOption1](Task-FeedbackOption1.md) and [Task/FeedbackOption2](Task-FeedbackOption2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/FeedbackTask)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-FeedbackTask.csv), [Excel](StructureDefinition-FeedbackTask.xlsx), [Schematron](StructureDefinition-FeedbackTask.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FeedbackTask",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.19"
    }
  ],
  "version" : "1.0.0",
  "name" : "FeedbackTask",
  "title" : "PSS Feedback Task",
  "status" : "active",
  "date" : "2025-11-04T09:37:58+00:00",
  "publisher" : "eHealth Platform Belgium",
  "contact" : [
    {
      "name" : "eHealth Platform Belgium",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ehealth.fgov.be/standards/fhir/"
        },
        {
          "system" : "email",
          "value" : "support@be-ehealth-standards.atlassian.net"
        }
      ]
    },
    {
      "name" : "Message Structure eHealth",
      "telecom" : [
        {
          "system" : "email",
          "value" : "support@be-ehealth-standards.atlassian.net",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Task to collect feedback on PSS suggestions",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "BE",
          "display" : "Belgium"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Task",
        "path" : "Task"
      },
      {
        "id" : "Task.status",
        "path" : "Task.status",
        "mustSupport" : true
      },
      {
        "id" : "Task.statusReason",
        "path" : "Task.statusReason",
        "mustSupport" : true
      },
      {
        "id" : "Task.focus",
        "path" : "Task.focus",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Task.focus.reference",
        "path" : "Task.focus.reference",
        "mustSupport" : true
      },
      {
        "id" : "Task.focus.identifier",
        "path" : "Task.focus.identifier",
        "mustSupport" : true
      },
      {
        "id" : "Task.lastModified",
        "path" : "Task.lastModified",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
