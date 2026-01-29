# PSS Bundle Tags - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Bundle Tags**

## CodeSystem: PSS Bundle Tags 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSBundleTags | *Version*:1.0.0 |
| Active as of 2026-01-14 | *Computable Name*:PSSBundleTags |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.16.7 | |

 
PSS Bundle Tags - Feedback, Recommendation 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PSSBundleTags",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSBundleTags",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.16.7"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSBundleTags",
  "title" : "PSS Bundle Tags",
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
  "description" : "PSS Bundle Tags - Feedback, Recommendation",
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
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "recommendation",
      "display" : "Recommendation"
    },
    {
      "code" : "feedback",
      "display" : "Feedback"
    }
  ]
}

```
