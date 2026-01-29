# PSS Feedback - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Feedback**

## Logical Model: PSS Feedback 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSFeedbackModel | *Version*:1.0.0 |
| Active as of 2026-01-14 | *Computable Name*:PSSFeedbackModel |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.18 | |

 
Feedback containing the acceptance of the PSS results. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSFeedbackModel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSFeedbackModel.csv), [Excel](StructureDefinition-PSSFeedbackModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSFeedbackModel",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSFeedbackModel",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.18"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSFeedbackModel",
  "title" : "PSS Feedback",
  "status" : "active",
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
  "description" : "Feedback containing the acceptance of the PSS results.",
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
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSFeedbackModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "PSSFeedbackModel",
        "path" : "PSSFeedbackModel",
        "short" : "PSS Feedback",
        "definition" : "Feedback containing the acceptance of the PSS results."
      },
      {
        "id" : "PSSFeedbackModel.PSSID",
        "path" : "PSSFeedbackModel.PSSID",
        "short" : "The uuid from the response - the ID of the RequestGroup",
        "definition" : "The uuid from the response - the ID of the RequestGroup",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PSSFeedbackModel.outcomeTimeStamp",
        "path" : "PSSFeedbackModel.outcomeTimeStamp",
        "short" : "The time when the feedback is given",
        "definition" : "The time when the feedback is given",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "PSSFeedbackModel.outcome",
        "path" : "PSSFeedbackModel.outcome",
        "short" : "accepted, rejected, overridden",
        "definition" : "accepted, rejected, overridden",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "PSSFeedbackModel.suggestionOutcome",
        "path" : "PSSFeedbackModel.suggestionOutcome",
        "short" : "List of suggestions provided by PSS for which feedback is given",
        "definition" : "List of suggestions provided by PSS for which feedback is given",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "PSSFeedbackModel.suggestionOutcome.suggestionId",
        "path" : "PSSFeedbackModel.suggestionOutcome.suggestionId",
        "short" : "The suggestion ID - or 'other' if the prescriber preferred another option",
        "definition" : "The suggestion ID - or 'other' if the prescriber preferred another option",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "PSSFeedbackModel.suggestionOutcome.outcome",
        "path" : "PSSFeedbackModel.suggestionOutcome.outcome",
        "short" : "accepted or overridden",
        "definition" : "accepted or overridden",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "PSSFeedbackModel.suggestionOutcome.overrideReason",
        "path" : "PSSFeedbackModel.suggestionOutcome.overrideReason",
        "short" : "The reason for overriding - code or text",
        "definition" : "The reason for overriding - code or text",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "PSSFeedbackModel.suggestionOutcome.otherOptionSelected",
        "path" : "PSSFeedbackModel.suggestionOutcome.otherOptionSelected",
        "short" : "A brief description of another option selected by the prescriber. Only present if the suggestionId is 'other'.",
        "definition" : "A brief description of another option selected by the prescriber. Only present if the suggestionId is 'other'.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
