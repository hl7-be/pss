# PSS Response - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Response**

## Logical Model: PSS Response 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponse | *Version*:1.0.0 |
| Active as of 2026-01-29 | *Computable Name*:PSSResponse |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.10 | |

 
A response containing the results from the PSS. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSResponse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSResponse.csv), [Excel](StructureDefinition-PSSResponse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSResponse",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponse",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.10"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSResponse",
  "title" : "PSS Response",
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
  "description" : "A response containing the results from the PSS.",
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
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PSSResponse",
        "path" : "PSSResponse",
        "short" : "PSS Response",
        "definition" : "A response containing the results from the PSS."
      },
      {
        "id" : "PSSResponse.recordedDate",
        "path" : "PSSResponse.recordedDate",
        "short" : "Date on which the information was recorded",
        "definition" : "Date on which the information was recorded",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "PSSResponse.PSSID",
        "path" : "PSSResponse.PSSID",
        "short" : "Identifier of the exchange session",
        "definition" : "Identifier of the exchange session",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "PSSResponse.indication",
        "path" : "PSSResponse.indication",
        "short" : "Condition that triggered the PSS response",
        "definition" : "Condition that triggered the PSS response",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PSSResponse.status",
        "path" : "PSSResponse.status",
        "short" : "Status of the response",
        "definition" : "Status of the response",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PSSResponse.treatmentOptions",
        "path" : "PSSResponse.treatmentOptions",
        "short" : "List of search results provided by PSS",
        "definition" : "List of search results provided by PSS",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "PSSResponse.treatmentOptions.identifier",
        "path" : "PSSResponse.treatmentOptions.identifier",
        "short" : "Identifier of the result",
        "definition" : "Identifier of the result",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "PSSResponse.treatmentOptions.instruction",
        "path" : "PSSResponse.treatmentOptions.instruction",
        "short" : "Code of the examination",
        "definition" : "Code of the examination",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PSSResponse.treatmentOptions.scoreRating",
        "path" : "PSSResponse.treatmentOptions.scoreRating",
        "short" : "Code (e.g. color code) associated with the score (Red, Orange, Green)",
        "definition" : "Code (e.g. color code) associated with the score (Red, Orange, Green)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PSSResponse.treatmentOptions.radiationExposure",
        "path" : "PSSResponse.treatmentOptions.radiationExposure",
        "short" : "Radiation exposure associated with the response",
        "definition" : "Radiation exposure associated with the response",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "PSSResponse.evidenceSource",
        "path" : "PSSResponse.evidenceSource",
        "short" : "Link to a source (study, publication, etc.) for the PSS",
        "definition" : "Link to a source (study, publication, etc.) for the PSS",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/ResearchStudy"]
          }
        ]
      }
    ]
  }
}

```
