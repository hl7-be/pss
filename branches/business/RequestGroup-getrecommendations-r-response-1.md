# Radiology - S3 Get Recommendations - Response - 1.1. RequestGroup - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiology - S3 Get Recommendations - Response - 1.1. RequestGroup**

## Example RequestGroup: Radiology - S3 Get Recommendations - Response - 1.1. RequestGroup

Profile: [PSS Response Request Group](StructureDefinition-PSSResponseRequestGroup.md)

**status**: Active

**intent**: Proposal

**subject**: [Male, DoB Unknown](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md)

> **action**

### Documentations

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Label** | **Url** |
| * | Justification | Appropriateness Scoring Guidelines | [https://environment.esriguide.org/suportingContent/12345](https://environment.esriguide.org/suportingContent/12345) |

**selectionBehavior**: At Most One

### Actions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **TextEquivalent** | **Resource** |
| * | , | CT, head, wo iv contrast | [ServiceRequest CT, head, wo iv contrast](ServiceRequest-30551ce1-5a28-4356-b684-1e639094ad23.md) |
| * | , | MR, head, wo iv contrast | [ServiceRequest MR, head, wo iv contrast](ServiceRequest-30551ce1-5a28-4356-b684-1e639044ad77.md) |
| * | , | CT, head, wo/w iv contrast | [ServiceRequest CT, head, wo/w iv contrast](ServiceRequest-30551ce1-5a28-4356-b684-1e639094ad22.md) |




## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "getrecommendations-r-response-1",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseRequestGroup"
    ]
  },
  "status" : "active",
  "intent" : "proposal",
  "subject" : {
    "reference" : "Patient/30551ce1-5a28-4356-b684-3e639094ad48"
  },
  "action" : [
    {
      "documentation" : [
        {
          "type" : "justification",
          "label" : "Appropriateness Scoring Guidelines",
          "_label" : {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/language",
                "valueCode" : "en"
              }
            ]
          },
          "url" : "https://environment.esriguide.org/suportingContent/12345"
        }
      ],
      "selectionBehavior" : "at-most-one",
      "action" : [
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "ratingType",
                  "valueCode" : "radiationexposure"
                },
                {
                  "url" : "ratingValue",
                  "valueRatio" : {
                    "numerator" : {
                      "value" : 3
                    },
                    "denominator" : {
                      "value" : 5
                    }
                  }
                }
              ],
              "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating"
            },
            {
              "extension" : [
                {
                  "url" : "ratingType",
                  "valueCode" : "overall"
                },
                {
                  "url" : "ratingValue",
                  "valueRatio" : {
                    "numerator" : {
                      "value" : 9
                    },
                    "denominator" : {
                      "value" : 10
                    }
                  }
                }
              ],
              "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating"
            }
          ],
          "textEquivalent" : "CT, head, wo iv contrast",
          "resource" : {
            "reference" : "ServiceRequest/30551ce1-5a28-4356-b684-1e639094ad23"
          }
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "ratingType",
                  "valueCode" : "radiationexposure"
                },
                {
                  "url" : "ratingValue",
                  "valueRatio" : {
                    "numerator" : {
                      "value" : 0
                    },
                    "denominator" : {
                      "value" : 5
                    }
                  }
                }
              ],
              "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating"
            },
            {
              "extension" : [
                {
                  "url" : "ratingType",
                  "valueCode" : "overall"
                },
                {
                  "url" : "ratingValue",
                  "valueRatio" : {
                    "numerator" : {
                      "value" : 8
                    },
                    "denominator" : {
                      "value" : 10
                    }
                  }
                }
              ],
              "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating"
            }
          ],
          "textEquivalent" : "MR, head, wo iv contrast",
          "resource" : {
            "reference" : "ServiceRequest/30551ce1-5a28-4356-b684-1e639044ad77"
          }
        },
        {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "ratingType",
                  "valueCode" : "radiationexposure"
                },
                {
                  "url" : "ratingValue",
                  "valueRatio" : {
                    "numerator" : {
                      "value" : 3
                    },
                    "denominator" : {
                      "value" : 5
                    }
                  }
                }
              ],
              "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating"
            },
            {
              "extension" : [
                {
                  "url" : "ratingType",
                  "valueCode" : "overall"
                },
                {
                  "url" : "ratingValue",
                  "valueRatio" : {
                    "numerator" : {
                      "value" : 6
                    },
                    "denominator" : {
                      "value" : 10
                    }
                  }
                }
              ],
              "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating"
            }
          ],
          "textEquivalent" : "CT, head, wo/w iv contrast",
          "resource" : {
            "reference" : "ServiceRequest/30551ce1-5a28-4356-b684-1e639094ad22"
          }
        }
      ]
    }
  ]
}

```
