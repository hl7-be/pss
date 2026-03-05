# PSS Feedback Operation Definition - Prescription Search Support v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Feedback Operation Definition**

## OperationDefinition: PSS Feedback Operation Definition 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/OperationDefinition/feedback | *Version*:1.1.0 |
| Active as of 2026-02-27 | *Computable Name*:Feedback |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.33.2 | |

 
Operation to provide feedback on PSS suggestions 

 The $feedback operation and the search for feedback is a new feature and may be the subject of further refinementm due to evolution of international guidance or implementer needs. Implementers are advised to consult this specification for any upcoming changes and clarification, and provide feedback. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "feedback",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/OperationDefinition/feedback",
  "version" : "1.1.0",
  "name" : "Feedback",
  "title" : "PSS Feedback",
  "status" : "active",
  "kind" : "operation",
  "experimental" : false,
  "date" : "2026-02-27T13:05:12+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [{
    "name" : "eHealth Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ehealth.fgov.be/standards/fhir/"
    },
    {
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net"
    }]
  },
  {
    "name" : "Message Structure eHealth",
    "telecom" : [{
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net",
      "use" : "work"
    }]
  }],
  "description" : "Operation to provide feedback on PSS suggestions",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "affectsState" : false,
  "code" : "feedback",
  "resource" : ["PlanDefinition"],
  "system" : false,
  "type" : true,
  "instance" : true,
  "parameter" : [{
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
    "documentation" : "A Task, or a Bundle containing the Task as well as a new request when one exists, representing the decision on the PSS request. In case the decision is to override an original proposal, or go for a completely different proposal that is not among those provided by PSS, the client shall provide that order, anonymized, with intent=`proposal`, and with a new `id`.\nIf the user doesn't accept any of the options provided by PSS, a feedback is still required to finish the PSS process. \n\nA Task is always required, in either of the possible scenarios:\n- if one of the options is accepted, only the corresponding Task needs to be submitted as feedback (the rejected ones are optional)\n- if the user doesn't select any option but presents an alternative (other), the Task and the Request will be present\n- if the user doesn't select any option does not present an alternative (other), there has to be at least one Task to explain the rejection of each recommendation.",
    "type" : "Resource",
    "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSFeedbackBundle",
    "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"]
  }]
}

```
