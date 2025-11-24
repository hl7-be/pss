# PSS MedicationRequest Task - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS MedicationRequest Task**

## Resource Profile: PSS MedicationRequest Task 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSMedicationRequest | *Version*:1.0.0 |
| Active as of 2025-11-04 | *Computable Name*:PSSMedicationRequest |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.4 | |

 
PSS MedicationRequest - using anonymised patient 

**Usages:**

* Examples for this Profile: [MedicationRequest/30551ce1-5a28-4356-b684-2e639094ad12](MedicationRequest-30551ce1-5a28-4356-b684-2e639094ad12.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSMedicationRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSMedicationRequest.csv), [Excel](StructureDefinition-PSSMedicationRequest.xlsx), [Schematron](StructureDefinition-PSSMedicationRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSMedicationRequest",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSMedicationRequest",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.4"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSMedicationRequest",
  "title" : "PSS MedicationRequest Task",
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
  "description" : "PSS MedicationRequest - using anonymised patient",
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
