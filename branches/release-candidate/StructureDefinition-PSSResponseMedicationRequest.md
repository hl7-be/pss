# PSS Response Medication Request - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Response Medication Request**

## Resource Profile: PSS Response Medication Request 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseMedicationRequest | *Version*:1.0.0 |
| Active as of 2026-01-29 | *Computable Name*:PSSResponseMedicationRequest |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.13 | |

 
The PSS Response Medication Request is used when the PSS system returns a MedicationRequest 

**Usages:**

* Examples for this Profile: [MedicationRequest/30551ce1-5a28-4356-b684-1e639094ac23](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ac23.md), [MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad24](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad24.md), [MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad25](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad25.md), [MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad26](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad26.md) and [MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad29](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad29.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSResponseMedicationRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSResponseMedicationRequest.csv), [Excel](StructureDefinition-PSSResponseMedicationRequest.xlsx), [Schematron](StructureDefinition-PSSResponseMedicationRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSResponseMedicationRequest",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseMedicationRequest",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.13"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSResponseMedicationRequest",
  "title" : "PSS Response Medication Request",
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
  "description" : "The PSS Response Medication Request is used when the PSS system returns a MedicationRequest",
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
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationRequest",
        "path" : "MedicationRequest"
      },
      {
        "id" : "MedicationRequest.intent",
        "path" : "MedicationRequest.intent",
        "patternCode" : "proposal"
      },
      {
        "id" : "MedicationRequest.subject",
        "path" : "MedicationRequest.subject",
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
