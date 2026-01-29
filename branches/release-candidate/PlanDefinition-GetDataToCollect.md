# GetDataToCollect - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetDataToCollect**

## PlanDefinition: GetDataToCollect 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/cqf/cpg/example/PlanDefinition/GetDataToCollect | *Version*:1.0.0 |
| Active as of 2026-01-29 | *Computable Name*: |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.34.1 | |

* **Actions: **: **Url: **
  * : [GetDataToCollect](PlanDefinition-GetDataToCollect.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: ** **
  * :  urn:oid:2.16.840.1.113883.2.51.22.2.34.1 
* **Actions: **: **Date: **
  * : 2026-01-29 09:07:50+0000
* **Actions: **: **Publisher: **
  * : eHealth Platform Belgium
* **Actions: **: **Jurisdiction: **
  * : BE



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "GetDataToCollect",
  "url" : "http://fhir.org/guides/cqf/cpg/example/PlanDefinition/GetDataToCollect",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.34.1"
    }
  ],
  "version" : "1.0.0",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
        "code" : "eca-rule"
      }
    ]
  },
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
  "action" : [
    {
      "title" : "Determine additional information required",
      "description" : "Given input data, including age, gender, symptoms, and suspected diagnoses, determine what additional information should be collected",
      "code" : [
        {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process-cs",
              "code" : "determine-diagnosis"
            }
          ]
        }
      ],
      "input" : [
        {
          "type" : "Patient",
          "mustSupport" : ["birthDate", "gender"]
        },
        {
          "type" : "Observation",
          "mustSupport" : ["category", "code", "value"],
          "codeFilter" : [
            {
              "path" : "category",
              "code" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                  "code" : "vital-signs"
                }
              ]
            }
          ]
        },
        {
          "type" : "Condition",
          "mustSupport" : ["category", "code", "clinicalStatus", "verificationStatus", "onset"],
          "codeFilter" : [
            {
              "path" : "category",
              "code" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                  "code" : "encounter-diagnosis"
                },
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                  "code" : "problem-list-item"
                }
              ]
            }
          ]
        },
        {
          "type" : "Condition",
          "codeFilter" : [
            {
              "path" : "verificationStatus",
              "code" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
                  "code" : "unconfirmed"
                }
              ]
            }
          ]
        }
      ],
      "output" : [
        {
          "type" : "Task",
          "profile" : [
            "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSQuestionnaireTask"
          ]
        },
        {
          "type" : "Questionnaire"
        }
      ]
    }
  ]
}

```
