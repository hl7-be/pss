# PSS Feedback Operation Definition - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Feedback Operation Definition**

## OperationDefinition: PSS Feedback Operation Definition 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/OperationDefinition/Feedback | *Version*:1.0.0 |
| Active as of 2026-01-29 | *Computable Name*:Feedback |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.33.1 | |

 
Operation to provide feedback on PSS suggestions 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "Feedback",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/OperationDefinition/Feedback",
  "version" : "1.0.0",
  "name" : "Feedback",
  "title" : "PSS Feedback",
  "status" : "active",
  "kind" : "operation",
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
  "description" : "Operation to provide feedback on PSS suggestions",
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
  "affectsState" : false,
  "code" : "feedback",
  "resource" : ["PlanDefinition"],
  "system" : false,
  "type" : true,
  "instance" : true,
  "parameter" : [
    {
      "name" : "pss-id",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "the PSS ID",
      "type" : "string"
    },
    {
      "name" : "feedback-resource",
      "use" : "in",
      "min" : 1,
      "max" : "*",
      "documentation" : "A Task, or a Bundle containing the Task as well as a new request, representing the decision on the PSS request. In case the decision is to override an original proposal, or go for a completely different proposal that is not among those provided by PSS, the client shall provide that order, anonymized, with intent=`proposal`, and with a new `id`.\nIf the user doesn't accept any of the options provided by PSS, a feedback is still required to finish the PSS process. \nThis can be either a set of Task, option by option ",
      "type" : "Resource",
      "targetProfile" : [
        "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSFeedbackBundle",
        "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
      ]
    }
  ]
}

```
