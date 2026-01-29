# Antimicrobiology - PSS not activated- Response - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antimicrobiology - PSS not activated- Response**

## Example CommunicationRequest: Antimicrobiology - PSS not activated- Response

Profiles: [PSS Response Communication Request](StructureDefinition-PSSResponseCommunicationRequest.md), [CPG Communication Request](http://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-communicationrequest.html)

**status**: Active

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | `Markdown: `In het kader van de pilootfase is het PSS-systeem momenteel niet geactiveerd. Het zal later opnieuw geactiveerd worden. Ter info: we blijven de gegevens die naar PSS worden doorgestuurd, registreren. |



## Resource Content

```json
{
  "resourceType" : "CommunicationRequest",
  "id" : "1e6c8c0a-9f7f-4f65-bc16-3a7a5e7b29c2",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseCommunicationRequest",
      "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest"
    ]
  },
  "status" : "active",
  "payload" : [
    {
      "_contentString" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/rendering-markdown",
            "valueMarkdown" : "In het kader van de pilootfase is het PSS-systeem momenteel niet geactiveerd. Het zal later opnieuw geactiveerd worden. Ter info: we blijven de gegevens die naar PSS worden doorgestuurd, registreren.",
            "_valueMarkdown" : {
              "extension" : [
                {
                  "extension" : [
                    {
                      "url" : "lang",
                      "valueCode" : "fr-BE"
                    },
                    {
                      "url" : "content",
                      "valueString" : "Dans le cadre de la phase pilote, le système PSS n'est pas activé pour le moment. Celui-ci sera réactivé. Pour votre information sachez que nous continuons de capturer les données transmises à PSS."
                    }
                  ],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          }
        ]
      }
    }
  ]
}

```
