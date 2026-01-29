# GetRecommendations - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetRecommendations**

## PlanDefinition: GetRecommendations 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.org/guides/cqf/cpg/example/PlanDefinition/GetRecommendations | *Version*:1.0.0 |
| Active as of 2025-11-04 | *Computable Name*: |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.34.3 | |

* **Actions:**: **Url:**
  * : [GetRecommendations](PlanDefinition-GetRecommendations.md)
* **Actions:**: **Version:**
  * : 1.0.0
* **Actions:**: ****
  * : urn:oid:2.16.840.1.113883.2.51.22.2.34.3
* **Actions:**: **Date:**
  * : 2025-11-04 09:37:58+0000
* **Actions:**: **Publisher:**
  * : eHealth Platform Belgium
* **Actions:**: **Jurisdiction:**
  * : BE



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "GetRecommendations",
  "url" : "http://fhir.org/guides/cqf/cpg/example/PlanDefinition/GetRecommendations",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.34.3"
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
      "title" : "Determine potential treatments given relevant patient information",
      "description" : "Given input data, including age, gender, symptoms, diagnoses, and possible orders, determine potential treatments",
      "code" : [
        {
          "coding" : [
            {
              "system" : "http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process-cs",
              "code" : "guideline-based-care"
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
          "type" : "ServiceRequest",
          "mustSupport" : ["category", "code"]
        }
      ],
      "output" : [
        {
          "type" : "ServiceRequest",
          "profile" : [
            "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest"
          ]
        },
        {
          "type" : "MedicationRequest",
          "profile" : [
            "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseMedicationRequest"
          ]
        }
      ]
    }
  ]
}

```
