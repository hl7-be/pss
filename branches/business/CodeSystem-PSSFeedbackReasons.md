# PSS Feedback Code Reasons - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Feedback Code Reasons**

## CodeSystem: PSS Feedback Code Reasons 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSFeedbackReasons | *Version*:1.0.0 |
| Active as of 2025-11-04 | *Computable Name*:PSSFeedbackReasons |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.16.5 | |

 
Feedback code reasons for PSS 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PSSFeedbackReasonsVS](ValueSet-PSSFeedbackReasonsVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PSSFeedbackReasons",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSFeedbackReasons",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.16.5"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSFeedbackReasons",
  "title" : "PSS Feedback Code Reasons",
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
  "description" : "Feedback code reasons for PSS",
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
      "code" : "clinic-issue",
      "display" : "Concerning clinical presentation"
    },
    {
      "code" : "comorbidities",
      "display" : "Comorbidities"
    },
    {
      "code" : "fast-results",
      "display" : "Faster results"
    },
    {
      "code" : "Pos-Prev-Exp",
      "display" : "Positive prior experience"
    },
    {
      "code" : "insuff-effect",
      "display" : "Insufficient effect of recommended management in the past"
    },
    {
      "code" : "better-tol",
      "display" : "Better tolerated"
    },
    {
      "code" : "allergy",
      "display" : "Allergy"
    },
    {
      "code" : "other-reason",
      "display" : "Other reason — which"
    }
  ]
}

```
