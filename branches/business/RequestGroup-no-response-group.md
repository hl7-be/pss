# Generic response - PSS not activated- 10.1. RequestGroup - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Generic response - PSS not activated- 10.1. RequestGroup**

## Example RequestGroup: Generic response - PSS not activated- 10.1. RequestGroup

Profile: [PSS Response Request Group](StructureDefinition-PSSResponseRequestGroup.md)

**status**: Active

**intent**: Proposal

> **action**

### Actions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Title** | **Code** | **Resource** |
| * | PSS niet geactiveerd | Guidance unavailable | [CommunicationRequest: status = active](CommunicationRequest-1e6c8c0a-9f7f-4f65-bc16-3a7a5e7b29c2.md) |




## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "no-response-group",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseRequestGroup"
    ]
  },
  "status" : "active",
  "intent" : "proposal",
  "action" : [
    {
      "action" : [
        {
          "title" : "PSS niet geactiveerd",
          "_title" : {
            "extension" : [
              {
                "extension" : [
                  {
                    "url" : "lang",
                    "valueCode" : "fr-BE"
                  },
                  {
                    "url" : "content",
                    "valueString" : "PSS non activé"
                  }
                ],
                "url" : "http://hl7.org/fhir/StructureDefinition/translation"
              }
            ]
          },
          "code" : [
            {
              "coding" : [
                {
                  "system" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/pss-exception-codes",
                  "code" : "guidance-unavailable"
                }
              ]
            }
          ],
          "resource" : {
            "reference" : "CommunicationRequest/1e6c8c0a-9f7f-4f65-bc16-3a7a5e7b29c2"
          }
        }
      ]
    }
  ]
}

```
