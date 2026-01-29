# requestgroup-action - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **requestgroup-action**

## SearchParameter: requestgroup-action 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/SearchParameter/requestgroup-action | *Version*:1.0.0 |
| Active as of 2026-01-14 | *Computable Name*:RequestGroupActionResource |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.40.1 | |

 
Resources referenced anywhere in RequestGroup.action[*.].resource (supports one level of nested actions). 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "requestgroup-action",
  "url" : "http://example.org/fhir/SearchParameter/requestgroup-action",
  "version" : "1.0.0",
  "name" : "RequestGroupActionResource",
  "status" : "active",
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
  "description" : "Resources referenced anywhere in RequestGroup.action[*.].resource (supports one level of nested actions).",
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
  "code" : "action",
  "base" : ["RequestGroup"],
  "type" : "reference",
  "expression" : "RequestGroup.action.resource | RequestGroup.action.action.resource | RequestGroup.action.action.action.resource",
  "target" : [
    "ServiceRequest",
    "MedicationRequest",
    "Procedure",
    "Observation",
    "DiagnosticReport",
    "CommunicationRequest",
    "MedicationDispense",
    "MedicationAdministration",
    "Task"
  ],
  "multipleOr" : true,
  "multipleAnd" : true
}

```
