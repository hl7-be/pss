# PSS Request Bundle - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Request Bundle**

## Resource Profile: PSS Request Bundle 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRequestBundle | *Version*:1.0.0 |
| Active as of 2026-01-14 | *Computable Name*:PSSRequestBundle |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.9 | |

 
The PSS Request Data Bundle is used to request data from the PSS system. 

**Usages:**

* Examples for this Profile: [Bundle/getdatatocollect-a-data](Bundle-getdatatocollect-a-data.md), [Bundle/getrecommendations-a-data](Bundle-getrecommendations-a-data.md), [Bundle/getrecommendations-data3](Bundle-getrecommendations-data3.md) and [Bundle/radiology-getdiagnoses](Bundle-radiology-getdiagnoses.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSRequestBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSRequestBundle.csv), [Excel](StructureDefinition-PSSRequestBundle.xlsx), [Schematron](StructureDefinition-PSSRequestBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSRequestBundle",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRequestBundle",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.9"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSRequestBundle",
  "title" : "PSS Request Bundle",
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
  "description" : "The PSS Request Data Bundle is used to request data from the PSS system.",
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
      }
    ]
  }
}

```
