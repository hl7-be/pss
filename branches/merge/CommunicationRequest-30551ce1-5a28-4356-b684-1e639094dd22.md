# Antimicrobiology - S3 Get Recommendations - Response - 1.1.1. option 1 - Generic Antibiotic Advice - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antimicrobiology - S3 Get Recommendations - Response - 1.1.1. option 1 - Generic Antibiotic Advice**

## Example CommunicationRequest: Antimicrobiology - S3 Get Recommendations - Response - 1.1.1. option 1 - Generic Antibiotic Advice

Profile: [PSS Response Communication Request](StructureDefinition-PSSResponseCommunicationRequest.md)

**status**: Active

**subject**: [Female, DoB Unknown](Patient-30551ce1-5a28-4356-b684-2e639094ad48.md)

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | `Markdown:`Antibioticum behandeling enkel bij storende klachten of bij verhoogd risico op vroeggeboorte. Metronidazol en clindamycine worden in de SKP afgeraden in het eerste trimester. De klinische gegevens omtrent gebruik tijdens het eerste trimester van de zwangerschap zijn nochtans geruststellend en de meeste bronnen geven aan dat het kan gebruikt worden. |



## Resource Content

```json
{
  "resourceType" : "CommunicationRequest",
  "id" : "30551ce1-5a28-4356-b684-1e639094dd22",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseCommunicationRequest"
    ]
  },
  "status" : "active",
  "subject" : {
    "reference" : "Patient/30551ce1-5a28-4356-b684-2e639094ad48"
  },
  "payload" : [
    {
      "_contentString" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/rendering-markdown",
            "valueMarkdown" : "Antibioticum behandeling enkel bij storende klachten of bij verhoogd risico op vroeggeboorte. Metronidazol en clindamycine worden in de SKP afgeraden in het eerste trimester. De klinische gegevens omtrent gebruik tijdens het eerste trimester van de zwangerschap zijn nochtans geruststellend en de meeste bronnen geven aan dat het kan gebruikt worden.",
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
                      "valueString" : "Traitement antibiotique uniquement en cas de symptômes dérangeants ou de risque accru de naissance prématurée. Le RCP déconseille l'utilisation du métronidazole et de la clindamycine pendant le premier trimestre de la grossesse. Les données cliniques concernant leur utilisation pendant le premier trimestre de grossesse sont pourtant rassurantes et la plupart des sources acceptent leur utilisation en période de grossesse."
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
