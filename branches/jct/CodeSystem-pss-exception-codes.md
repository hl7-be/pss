# PSS Exception Codes - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Exception Codes**

## CodeSystem: PSS Exception Codes 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/pss-exception-codes | *Version*:1.0.0 |
| Active as of 2026-01-14 | *Computable Name*:PSSExceptionCodes |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.16.6 | |

 
Exception codes for Patient Summary (PSS) processing. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PSSExceptionValueSet](ValueSet-pss-exception-valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pss-exception-codes",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/pss-exception-codes",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.16.6"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSExceptionCodes",
  "title" : "PSS Exception Codes",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Exception codes for Patient Summary (PSS) processing.",
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
      "code" : "guidance-unavailable",
      "display" : "Guidance unavailable"
    },
    {
      "code" : "no-consent-found",
      "display" : "User Consent not found"
    }
  ]
}

```
