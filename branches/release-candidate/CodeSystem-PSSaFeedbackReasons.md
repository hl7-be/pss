# PSSa Feedback Code Reasons - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSSa Feedback Code Reasons**

## CodeSystem: PSSa Feedback Code Reasons 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSaFeedbackReasons | *Version*:1.0.0 |
| Active as of 2026-01-29 | *Computable Name*:PSSaFeedbackReasons |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.16.8 | |

 
Feedback code reasons for PSS antimicrobial 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PSSFeedbackReasonsVS](ValueSet-PSSFeedbackReasonsVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PSSaFeedbackReasons",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSaFeedbackReasons",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.16.8"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSaFeedbackReasons",
  "title" : "PSSa Feedback Code Reasons",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Feedback code reasons for PSS antimicrobial",
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
  "count" : 8,
  "concept" : [
    {
      "code" : "ClinicIssue",
      "display" : "Concerning clinical presentation"
    },
    {
      "code" : "Comorbidities",
      "display" : "Comorbidities"
    },
    {
      "code" : "FastResults",
      "display" : "Faster results"
    },
    {
      "code" : "PosPrevExp",
      "display" : "Positive prior experience"
    },
    {
      "code" : "InsuffEffect",
      "display" : "Insufficient effect of recommended management in the past"
    },
    {
      "code" : "BetterTol",
      "display" : "Better tolerated"
    },
    {
      "code" : "Allergy",
      "display" : "Allergy"
    },
    {
      "code" : "OtherReason",
      "display" : "Other reason — which"
    }
  ]
}

```
