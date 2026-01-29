# PSS Provider System Capability Statement - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Provider System Capability Statement**

## CapabilityStatement: PSS Provider System Capability Statement 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/CapabilityStatement/PSSProviderCapabilityStatement | *Version*:1.0.0 |
| Active as of 2025-05-22 | *Computable Name*: |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.13.1 | |

 
CapabilityStatement for PSS provider systems. 

 [Raw OpenAPI-Swagger Definition file](PSSProviderCapabilityStatement.openapi.json) | [Download](PSSProviderCapabilityStatement.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "PSSProviderCapabilityStatement",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/CapabilityStatement/PSSProviderCapabilityStatement",
  "version" : "1.0.0",
  "title" : "PSS Provider System Capability Statement",
  "status" : "active",
  "date" : "2025-05-22",
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
  "description" : "CapabilityStatement for PSS provider systems.",
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
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["xml"],
  "rest" : [
    {
      "mode" : "server",
      "resource" : [
        {
          "type" : "PlanDefinition",
          "operation" : [
            {
              "name" : "$apply",
              "definition" : "http://hl7.org/fhir/uv/cpg/OperationDefinition/cpg-plandefinition-apply"
            }
          ]
        },
        {
          "type" : "Consent",
          "interaction" : [
            {
              "code" : "create"
            }
          ]
        },
        {
          "type" : "Bundle",
          "interaction" : [
            {
              "code" : "read"
            }
          ]
        }
      ]
    }
  ]
}

```
