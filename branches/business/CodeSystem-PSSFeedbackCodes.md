# PSS Feedback Codes - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Feedback Codes**

## CodeSystem: PSS Feedback Codes 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSFeedbackCodes | *Version*:1.0.0 |
| Active as of 2025-11-04 | *Computable Name*:PSSFeedbackCodes |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.16.4 | |

 
Feedback codes for PSS 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PSSFeedbackCodesVS](ValueSet-PSSFeedbackCodesVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PSSFeedbackCodes",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSFeedbackCodes",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.16.4"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSFeedbackCodes",
  "title" : "PSS Feedback Codes",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Feedback codes for PSS",
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
  "count" : 3,
  "concept" : [
    {
      "code" : "accepted",
      "display" : "Accepted"
    },
    {
      "code" : "rejected",
      "display" : "Rejected"
    },
    {
      "code" : "overridden",
      "display" : "Overridden"
    }
  ]
}

```
