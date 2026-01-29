# PSS Response Communication Request - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Response Communication Request**

## Resource Profile: PSS Response Communication Request 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseCommunicationRequest | *Version*:1.0.0 |
| Active as of 2026-01-14 | *Computable Name*:PSSResponseCommunicationRequest |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.12 | |

 
All PSS responses contain a PSS Communication Request conformant to this profile. 

**Usages:**

* Examples for this Profile: [CommunicationRequest/1e6c8c0a-9f7f-4f65-bc16-3a7a5e7b29c2](CommunicationRequest-1e6c8c0a-9f7f-4f65-bc16-3a7a5e7b29c2.md) and [CommunicationRequest/30551ce1-5a28-4356-b684-1e639094dd22](CommunicationRequest-30551ce1-5a28-4356-b684-1e639094dd22.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSResponseCommunicationRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSResponseCommunicationRequest.csv), [Excel](StructureDefinition-PSSResponseCommunicationRequest.xlsx), [Schematron](StructureDefinition-PSSResponseCommunicationRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSResponseCommunicationRequest",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseCommunicationRequest",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.12"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSResponseCommunicationRequest",
  "title" : "PSS Response Communication Request",
  "status" : "active",
  "date" : "2026-01-14T16:01:39+00:00",
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
  "description" : "All PSS responses contain a PSS Communication Request conformant to this profile.",
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
  "type" : "CommunicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CommunicationRequest",
        "path" : "CommunicationRequest"
      },
      {
        "id" : "CommunicationRequest.subject",
        "path" : "CommunicationRequest.subject",
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
