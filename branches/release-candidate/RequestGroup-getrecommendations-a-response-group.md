# Antimicrobiology - S3 Get Recommendations - Response - 1.1. RequestGroup - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antimicrobiology - S3 Get Recommendations - Response - 1.1. RequestGroup**

## Example RequestGroup: Antimicrobiology - S3 Get Recommendations - Response - 1.1. RequestGroup

Profile: [PSS Response Request Group](StructureDefinition-PSSResponseRequestGroup.md)

**status**: Active

**intent**: Proposal

**subject**: [ Female, DoB Unknown](Patient-30551ce1-5a28-4356-b684-2e639094ad48.md)

> **action**

### Documentations

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Label** | **Url** |
| * | Documentation | Meer details op de BCFI site | [https://bcfi.be/nl/chapters/12?frag=8001869](https://bcfi.be/nl/chapters/12?frag=8001869) |
| * | Documentation | Plus de details sur le site CBIP | [https://cbip.be/fr/chapters/12?frag=8001869](https://cbip.be/fr/chapters/12?frag=8001869) |
| * | Documentation | Download het beslismodel van EBPNET | [https://ebpnet.be/nl/pss-vaginitis](https://ebpnet.be/nl/pss-vaginitis) |
| * | Documentation | Télécharger le modèle de décision d'EBPNET | [https://ebpnet.be/fr/pss-vaginite](https://ebpnet.be/fr/pss-vaginite) |

**selectionBehavior**: At Most One
> **action**
> **PSS Rating Extension**
* ratingType: overall
* ratingValue: 3/3
* ratingText: 

Over het algemeen aangewezen

**textEquivalent**: Algemeen advies**resource**: [CommunicationRequest: status = active](CommunicationRequest-30551ce1-5a28-4356-b684-1e639094dd22.md)

> **action**
> **PSS Rating Extension**
* ratingType: overall
* ratingValue: 3/3
* ratingText: 

Over het algemeen aangewezen

**textEquivalent**: Metronidazol Oraal**resource**: [MedicationRequest: status = active; intent = proposal; medication[x] = metronidazole](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ac23.md)

> **action**
> **PSS Rating Extension**
* ratingType: overall
* ratingValue: 3/3
* ratingText: 

Over het algemeen aangewezen

**textEquivalent**: Clindamycin local**selectionBehavior**: All

### Actions

| | | |
| :--- | :--- | :--- |
| - | **TextEquivalent** | **Resource** |
| * | Clindamycine ovule | [MedicationRequest: status = active; intent = proposal; medication[x] = clindamycin](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad24.md) |
| * | Clindamycine vaginale crème | [MedicationRequest: status = active; intent = proposal; medication[x] = clindamycin](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad25.md) |


> **action**
> **PSS Rating Extension**
* ratingType: overall
* ratingValue: 1/3
* ratingText: 

Niet aangewezen

**textEquivalent**: Fluconazol Oraal**resource**: [MedicationRequest: status = active; intent = proposal; medication[x] = ](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad26.md)

> **action**
> **PSS Rating Extension**
* ratingType: overall
* ratingValue: 1/3
* ratingText: 

Niet aangewezen

**textEquivalent**: Miconazol lokaal**resource**: [MedicationRequest: status = active; intent = proposal; medication[x] = ](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad29.md)



## Resource Content

```json
{
  "resourceType" : "RequestGroup",
  "id" : "getrecommendations-a-response-group",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseRequestGroup"
    ]
  },
  "status" : "active",
  "intent" : "proposal",
  "subject" : {
    "reference" : "Patient/30551ce1-5a28-4356-b684-2e639094ad48"
  },
  "action" : [
    {
      "documentation" : [
        {
          "type" : "documentation",
          "label" : "Meer details op de BCFI site",
          "_label" : {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/language",
                "valueCode" : "nl-BE"
              }
            ]
          },
          "url" : "https://bcfi.be/nl/chapters/12?frag=8001869"
        },
        {
          "type" : "documentation",
          "label" : "Plus de details sur le site CBIP",
          "_label" : {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/language",
                "valueCode" : "fr-BE"
              }
            ]
          },
          "url" : "https://cbip.be/fr/chapters/12?frag=8001869"
        },
        {
          "type" : "documentation",
          "label" : "Download het beslismodel van EBPNET",
          "_label" : {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/language",
                "valueCode" : "nl-BE"
              }
            ]
          },
          "url" : "https://ebpnet.be/nl/pss-vaginitis"
        },
        {
          "type" : "documentation",
          "label" : "Télécharger le modèle de décision d'EBPNET",
          "_label" : {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/language",
                "valueCode" : "fr-BE"
              }
            ]
          },
          "url" : "https://ebpnet.be/fr/pss-vaginite"
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
                  "valueCode" : "overall"
                },
                {
                  "url" : "ratingValue",
                  "valueRatio" : {
                    "numerator" : {
                      "value" : 3
                    },
                    "denominator" : {
                      "value" : 3
                    }
                  }
                },
                {
                  "url" : "ratingText",
                  "valueMarkdown" : "Over het algemeen aangewezen",
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
                            "valueString" : "Généralement approprié"
                          }
                        ],
                        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                      }
                    ]
                  }
                }
              ],
              "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating"
            }
          ],
          "textEquivalent" : "Algemeen advies",
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
                    "valueString" : "Conseil général"
                  }
                ],
                "url" : "http://hl7.org/fhir/StructureDefinition/translation"
              }
            ]
          },
          "resource" : {
            "reference" : "CommunicationRequest/30551ce1-5a28-4356-b684-1e639094dd22"
          }
        },
        {
          "extension" : [
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
                      "value" : 3
                    },
                    "denominator" : {
                      "value" : 3
                    }
                  }
                },
                {
                  "url" : "ratingText",
                  "valueMarkdown" : "Over het algemeen aangewezen",
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
                            "valueString" : "Généralement approprié"
                          }
                        ],
                        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                      }
                    ]
                  }
                }
              ],
              "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating"
            }
          ],
          "textEquivalent" : "Metronidazol Oraal",
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
                    "valueString" : "Métronidazole orale"
                  }
                ],
                "url" : "http://hl7.org/fhir/StructureDefinition/translation"
              }
            ]
          },
          "resource" : {
            "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-1e639094ac23"
          }
        },
        {
          "extension" : [
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
                      "value" : 3
                    },
                    "denominator" : {
                      "value" : 3
                    }
                  }
                },
                {
                  "url" : "ratingText",
                  "valueMarkdown" : "Over het algemeen aangewezen",
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
                            "valueString" : "Généralement approprié"
                          }
                        ],
                        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                      }
                    ]
                  }
                }
              ],
              "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating"
            }
          ],
          "textEquivalent" : "Clindamycin local",
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
                    "valueString" : "Clindamycine localement"
                  }
                ],
                "url" : "http://hl7.org/fhir/StructureDefinition/translation"
              }
            ]
          },
          "selectionBehavior" : "all",
          "action" : [
            {
              "textEquivalent" : "Clindamycine ovule",
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
                        "valueString" : "Clindamycine ovule"
                      }
                    ],
                    "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                  }
                ]
              },
              "resource" : {
                "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad24"
              }
            },
            {
              "textEquivalent" : "Clindamycine vaginale crème",
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
                        "valueString" : "Clindamycine crème vaginale"
                      }
                    ],
                    "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                  }
                ]
              },
              "resource" : {
                "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad25"
              }
            }
          ]
        },
        {
          "extension" : [
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
                      "value" : 1
                    },
                    "denominator" : {
                      "value" : 3
                    }
                  }
                },
                {
                  "url" : "ratingText",
                  "valueMarkdown" : "Niet aangewezen",
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
                            "valueString" : "Pas approprié"
                          }
                        ],
                        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                      }
                    ]
                  }
                }
              ],
              "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating"
            }
          ],
          "textEquivalent" : "Fluconazol Oraal",
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
                    "valueString" : "Fluconazole orale"
                  }
                ],
                "url" : "http://hl7.org/fhir/StructureDefinition/translation"
              }
            ]
          },
          "resource" : {
            "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad26"
          }
        },
        {
          "extension" : [
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
                      "value" : 1
                    },
                    "denominator" : {
                      "value" : 3
                    }
                  }
                },
                {
                  "url" : "ratingText",
                  "valueMarkdown" : "Niet aangewezen",
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
                            "valueString" : "Pas approprié"
                          }
                        ],
                        "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                      }
                    ]
                  }
                }
              ],
              "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating"
            }
          ],
          "textEquivalent" : "Miconazol lokaal",
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
                    "valueString" : "Miconazole localement"
                  }
                ],
                "url" : "http://hl7.org/fhir/StructureDefinition/translation"
              }
            ]
          },
          "resource" : {
            "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad29"
          }
        }
      ]
    }
  ]
}

```
