# CodeSystem: Types of rating provided by the PSS system - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CodeSystem: Types of rating provided by the PSS system**

## CodeSystem: CodeSystem: Types of rating provided by the PSS system 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSRatingTypes | *Version*:1.0.0 |
| Active as of 2026-01-14 | *Computable Name*:PSSRatingTypes |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.16.3 | |

 
CodeSystem: Types of rating provided by the PSS system 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PSSRatingTypesVS](ValueSet-PSSRatingTypesVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PSSRatingTypes",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSRatingTypes",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.16.3"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSRatingTypes",
  "title" : "CodeSystem: Types of rating provided by the PSS system",
  "status" : "active",
  "experimental" : false,
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
  "description" : "CodeSystem: Types of rating provided by the PSS system",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "overall",
      "display" : "Overall score"
    },
    {
      "code" : "radiationexposure",
      "display" : "Radiation exposure score"
    }
  ]
}

```
