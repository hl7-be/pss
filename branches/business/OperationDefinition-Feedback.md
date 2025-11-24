# PSS Feedback Operation Definition - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Feedback Operation Definition**

## OperationDefinition: PSS Feedback Operation Definition 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/OperationDefinition/Feedback | *Version*:1.0.0 |
| Active as of 2025-11-04 | *Computable Name*:Feedback |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.33.1 | |

 
Operation to provide feedback on PSS suggestions 

URL: [base]/PlanDefinition/$feedback

URL: [base]/PlanDefinition/[id]/$feedback

### Parameters

* **Use**: IN
  * **Name**: pss-id
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [string](http://hl7.org/fhir/R4/datatypes.html#string)
  * **Binding**: 
  * **Documentation**: the PSS ID
* **Use**: IN
  * **Name**: feedback-task
  * **Scope**: 
  * **Cardinality**: 1..*
  * **Type**: [Resource](http://hl7.org/fhir/R4/resource.html)
  * **Binding**: 
  * **Documentation**: A Task representing the decision on the PSS request. In case the decision is to override an original proposal, or go for a completely different proposal that is not among those provided by PSS, the client shall provide that order, anonymized, with intent=`proposal`, and with a new `id`.



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
      "name" : "feedback-task",
      "use" : "in",
      "min" : 1,
      "max" : "*",
      "documentation" : "A Task representing the decision on the PSS request. In case the decision is to override an original proposal, or go for a completely different proposal that is not among those provided by PSS, the client shall provide that order, anonymized, with intent=`proposal`, and with a new `id`.",
      "type" : "Resource"
    }
  ]
}

```
