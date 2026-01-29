# PSS Response Bundle - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Response Bundle**

## Resource Profile: PSS Response Bundle 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseBundle | *Version*:1.0.0 |
| Active as of 2026-01-14 | *Computable Name*:PSSResponseBundle |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.11 | |

 
The PSS Response Bundle is used to return data from the PSS system. 

**Usages:**

* Examples for this Profile: [Bundle/any-service-no-consent-response-response](Bundle-any-service-no-consent-response-response.md), [Bundle/getdatatocollect-a-response](Bundle-getdatatocollect-a-response.md), [Bundle/getrecommendations-a-response](Bundle-getrecommendations-a-response.md), [Bundle/getrecommendations-r-response](Bundle-getrecommendations-r-response.md)...Show 2 more,[Bundle/no-response-response](Bundle-no-response-response.md)and[Bundle/radiology-getdiagnoses-response](Bundle-radiology-getdiagnoses-response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSResponseBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSResponseBundle.csv), [Excel](StructureDefinition-PSSResponseBundle.xlsx), [Schematron](StructureDefinition-PSSResponseBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSResponseBundle",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseBundle",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.11"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSResponseBundle",
  "title" : "PSS Response Bundle",
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
  "description" : "The PSS Response Bundle is used to return data from the PSS system.",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.identifier",
        "path" : "Bundle.identifier",
        "min" : 1
      },
      {
        "id" : "Bundle.timestamp",
        "path" : "Bundle.timestamp",
        "min" : 1
      }
    ]
  }
}

```
