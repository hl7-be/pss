# PSSr Feedback Code Reasons - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSSr Feedback Code Reasons**

## CodeSystem: PSSr Feedback Code Reasons 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSrFeedbackReasons | *Version*:1.0.0 |
| Active as of 2026-01-29 | *Computable Name*:PSSrFeedbackReasons |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.16.9 | |

 
Feedback code reasons for PSS radiology 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PSSFeedbackReasonsVS](ValueSet-PSSFeedbackReasonsVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PSSrFeedbackReasons",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSrFeedbackReasons",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.16.9"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSrFeedbackReasons",
  "title" : "PSSr Feedback Code Reasons",
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
  "description" : "Feedback code reasons for PSS radiology",
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
  "count" : 7,
  "concept" : [
    {
      "code" : "Pregnancy",
      "display" : "Contraindicated due to pregnancy"
    },
    {
      "code" : "ImplantIncompatibility",
      "display" : "Not suitable because of an implanted device"
    },
    {
      "code" : "ContrastAllergy",
      "display" : "Patient has allergy to contrast agents"
    },
    {
      "code" : "IncompleteRecommendation",
      "display" : "Recommendation lacked needed clinical details"
    },
    {
      "code" : "WaitingTimeTooLong",
      "display" : "Expected waiting time is too long"
    },
    {
      "code" : "Emergency",
      "display" : "Urgent situation requiring faster action"
    },
    {
      "code" : "OtherReason",
      "display" : "Other reason — which"
    }
  ]
}

```
