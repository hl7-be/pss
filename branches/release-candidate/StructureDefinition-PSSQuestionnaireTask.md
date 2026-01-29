# PSS Questionnaire Task - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Questionnaire Task**

## Resource Profile: PSS Questionnaire Task 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSQuestionnaireTask | *Version*:1.0.0 |
| Active as of 2026-01-29 | *Computable Name*:PSSQuestionnaireTask |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.6 | |

 
PSS Task for Questionnaire - using anonymised patient 

**Usages:**

* Examples for this Profile: [Task/26491cef-c5c7-4c5f-b10b-839e938f6b3d](Task-26491cef-c5c7-4c5f-b10b-839e938f6b3d.md) and [Task/30551ce1-5a28-4356-b684-11ef43a67755](Task-30551ce1-5a28-4356-b684-11ef43a67755.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSQuestionnaireTask)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSQuestionnaireTask.csv), [Excel](StructureDefinition-PSSQuestionnaireTask.xlsx), [Schematron](StructureDefinition-PSSQuestionnaireTask.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSQuestionnaireTask",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSQuestionnaireTask",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.6"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSQuestionnaireTask",
  "title" : "PSS Questionnaire Task",
  "status" : "active",
  "date" : "2026-01-29T09:07:50+00:00",
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
  "description" : "PSS Task for Questionnaire - using anonymised patient",
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
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Task",
        "path" : "Task"
      },
      {
        "id" : "Task.for",
        "path" : "Task.for",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSPatient"
            ]
          }
        ]
      }
    ]
  }
}

```
