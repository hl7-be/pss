# Generic response - No permission to use system - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Generic response - No permission to use system**

## Example RequestGroup: Generic response - No permission to use system

**status**: Active

**intent**: Proposal

> **action****selectionBehavior**: At Most One

### Actions

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Title** | **TextEquivalent** | **Code** | **Resource** |
| * | Toegang geweigerd | U hebt (nog) geen toestemming gegeven voor het gebruik van het systeem. Gelieve eerst akkoord te gaan met de gebruiksvoorwaarden. | User Consent not found | [Task Collect information](Task-26491cef-c5c7-4c5f-b10b-839e938f6b3d.md) |




## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "26491cef-c5c7-4c5f-b10b-839e938f6b3c",
  "status" : "active",
  "intent" : "proposal",
  "action" : [
    {
      "selectionBehavior" : "at-most-one",
      "action" : [
        {
          "title" : "Toegang geweigerd",
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
                    "valueString" : "Accès refusé"
                  }
                ],
                "url" : "http://hl7.org/fhir/StructureDefinition/translation"
              }
            ]
          },
          "textEquivalent" : "U hebt (nog) geen toestemming gegeven voor het gebruik van het systeem. Gelieve eerst akkoord te gaan met de gebruiksvoorwaarden.",
          "_textEquivalent" : {
            "extension" : [
              {
                "extension" : [
                  {
                    "url" : "lang",
                    "valueCode" : "fr-BE"
                  },
                  {
                    "url" : "content",
                    "valueString" : "Vous n'avez pas (encore) donné votre consentement pour l'utilisation du système. Veuillez d'abord accepter les conditions d'utilisation."
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
                  "code" : "no-consent-found"
                }
              ]
            }
          ],
          "resource" : {
            "reference" : "Task/26491cef-c5c7-4c5f-b10b-839e938f6b3d"
          }
        }
      ]
    }
  ]
}

```
