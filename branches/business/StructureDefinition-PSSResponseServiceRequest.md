# PSS Response Service Request - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Response Service Request**

## Resource Profile: PSS Response Service Request 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest | *Version*:1.0.0 |
| Active as of 2025-11-04 | *Computable Name*:PSSResponseServiceRequest |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.15 | |

 
The PSS Response Service Request is used when the PSS system returns a ServiceRequest 

**Usages:**

* Examples for this Profile: [ServiceRequest/30551ce1-5a28-4356-b684-1e639044ad77](ServiceRequest-30551ce1-5a28-4356-b684-1e639044ad77.md), [ServiceRequest/30551ce1-5a28-4356-b684-1e639094ad22](ServiceRequest-30551ce1-5a28-4356-b684-1e639094ad22.md), [ServiceRequest/30551ce1-5a28-4356-b684-1e639094ad23](ServiceRequest-30551ce1-5a28-4356-b684-1e639094ad23.md), [ServiceRequest/ct-head-wo-iv-contrast](ServiceRequest-ct-head-wo-iv-contrast.md) and [ServiceRequest/pss-ct-head-wo-iv-contrast](ServiceRequest-pss-ct-head-wo-iv-contrast.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSResponseServiceRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSResponseServiceRequest.csv), [Excel](StructureDefinition-PSSResponseServiceRequest.xlsx), [Schematron](StructureDefinition-PSSResponseServiceRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSResponseServiceRequest",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.15"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSResponseServiceRequest",
  "title" : "PSS Response Service Request",
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
  "description" : "The PSS Response Service Request is used when the PSS system returns a ServiceRequest",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
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
      "identity" : "quick",
      "uri" : "http://siframework.org/cqf",
      "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest",
        "path" : "ServiceRequest"
      },
      {
        "id" : "ServiceRequest.intent",
        "path" : "ServiceRequest.intent",
        "patternCode" : "proposal"
      },
      {
        "id" : "ServiceRequest.code",
        "path" : "ServiceRequest.code",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "ServiceRequestCode"
            }
          ],
          "strength" : "example",
          "description" : "Codes for tests or services that can be carried out",
          "valueSet" : "http://hl7.org/fhir/ValueSet/procedure-code"
        }
      },
      {
        "id" : "ServiceRequest.subject",
        "path" : "ServiceRequest.subject",
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
