# PSS Request - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Request**

## Logical Model: PSS Request 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRequest | *Version*:1.0.0 |
| Active as of 2026-01-29 | *Computable Name*:PSSRequest |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.8 | |

 
A request for PSS (Prescriber Support System) results. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSRequest.csv), [Excel](StructureDefinition-PSSRequest.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSRequest",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRequest",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.8"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSRequest",
  "title" : "PSS Request",
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
  "description" : "A request for PSS (Prescriber Support System) results.",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PSSRequest",
        "path" : "PSSRequest",
        "short" : "PSS Request",
        "definition" : "A request for PSS (Prescriber Support System) results."
      },
      {
        "id" : "PSSRequest.recordedDate",
        "path" : "PSSRequest.recordedDate",
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
        "id" : "PSSRequest.PSSID",
        "path" : "PSSRequest.PSSID",
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
        "id" : "PSSRequest.examination",
        "path" : "PSSRequest.examination",
        "short" : "The ID of the examination the prescriber wants to prescribe",
        "definition" : "The ID of the examination the prescriber wants to prescribe",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "PSSRequest.indication",
        "path" : "PSSRequest.indication",
        "short" : "Indication that triggers the PSS request, from structured list or free text",
        "definition" : "Indication that triggers the PSS request, from structured list or free text",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PSSRequest.supportingInfo",
        "path" : "PSSRequest.supportingInfo",
        "short" : "Information useful for PSS proposals",
        "definition" : "Information useful for PSS proposals",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "PSSRequest.supportingInfo.patientAge",
        "path" : "PSSRequest.supportingInfo.patientAge",
        "short" : "Age of the patient",
        "definition" : "Age of the patient",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Age"
          }
        ]
      },
      {
        "id" : "PSSRequest.supportingInfo.patientGender",
        "path" : "PSSRequest.supportingInfo.patientGender",
        "short" : "Gender of the patient",
        "definition" : "Gender of the patient",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
