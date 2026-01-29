# PSS Response Request Group - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Response Request Group**

## Resource Profile: PSS Response Request Group 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseRequestGroup | *Version*:1.0.0 |
| Active as of 2026-01-14 | *Computable Name*:PSSResponseRequestGroup |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.14 | |

 
All PSS responses contain a PSS RequestGroup conformant to this profile. 

**Usages:**

* Examples for this Profile: [RequestGroup/getrecommendations-a-response-group](RequestGroup-getrecommendations-a-response-group.md), [RequestGroup/getrecommendations-r-response-1](RequestGroup-getrecommendations-r-response-1.md) and [RequestGroup/no-response-group](RequestGroup-no-response-group.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSResponseRequestGroup)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSResponseRequestGroup.csv), [Excel](StructureDefinition-PSSResponseRequestGroup.xlsx), [Schematron](StructureDefinition-PSSResponseRequestGroup.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSResponseRequestGroup",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseRequestGroup",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.14"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSResponseRequestGroup",
  "title" : "PSS Response Request Group",
  "status" : "active",
  "date" : "2026-01-14T15:47:07+00:00",
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
  "description" : "All PSS responses contain a PSS RequestGroup conformant to this profile.",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RequestGroup",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RequestGroup",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "RequestGroup",
        "path" : "RequestGroup"
      },
      {
        "id" : "RequestGroup.subject",
        "path" : "RequestGroup.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSPatient"
            ]
          }
        ]
      },
      {
        "id" : "RequestGroup.action",
        "path" : "RequestGroup.action",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "RequestGroup.action.action",
        "path" : "RequestGroup.action.action",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "RequestGroup.action.action.extension",
        "path" : "RequestGroup.action.action.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "RequestGroup.action.action.extension:structured-rating",
        "path" : "RequestGroup.action.action.extension",
        "sliceName" : "structured-rating",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating"
            ]
          }
        ]
      }
    ]
  }
}

```
