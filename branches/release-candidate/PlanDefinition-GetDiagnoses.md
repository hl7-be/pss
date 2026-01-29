# GetDiagnoses - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetDiagnoses**

## PlanDefinition: GetDiagnoses 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/cqf/cpg/example/PlanDefinition/GetDiagnoses | *Version*:1.0.0 |
| Active as of 2026-01-29 | *Computable Name*: |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.34.2 | |

* **Actions: **: **Url: **
  * : [GetDiagnoses](PlanDefinition-GetDiagnoses.md)
* **Actions: **: **Version: **
  * : 1.0.0
* **Actions: **: ** **
  * :  urn:oid:2.16.840.1.113883.2.51.22.2.34.2 
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
  "id" : "GetDiagnoses",
  "url" : "http://fhir.org/guides/cqf/cpg/example/PlanDefinition/GetDiagnoses",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.34.2"
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
      "title" : "Determine potential diagnoses given relevant patient information",
      "description" : "Given input data, including age, gender, and symptoms, determine potential diagnoses",
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
        }
      ],
      "output" : [
        {
          "type" : "Task"
        },
        {
          "type" : "Condition",
          "profile" : [
            "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
          ],
          "codeFilter" : [
            {
              "path" : "category",
              "code" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                  "code" : "problem-list-item"
                }
              ]
            }
          ]
        }
      ]
    }
  ]
}

```
