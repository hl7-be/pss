# Terms and Conditions Consent Form - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Terms and Conditions Consent Form**

## Questionnaire: Terms and Conditions Consent Form 

| | |
| :--- | :--- |
| *Official URL*:http://openhie.org/fhir/Questionnaire/hiv-case-report-questionnaire | *Version*:1.0.0 |
| Draft as of 2026-01-14 | *Computable Name*:TCConsentForm |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.35.3 | |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "26491cef-c5c7-4c5f-b10b-839e938f6b3e",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computablequestionnaire"
    ]
  },
  "language" : "en",
  "url" : "http://openhie.org/fhir/Questionnaire/hiv-case-report-questionnaire",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.35.3"
    }
  ],
  "version" : "1.0.0",
  "name" : "TCConsentForm",
  "status" : "draft",
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
  "item" : [
    {
      "linkId" : "tc",
      "text" : "Terms and Conditions",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [
        {
          "linkId" : "tcpolicy",
          "text" : "Door een account aan te maken gaat u akkoord met de [Gebruiksvoorwaarden en privacyverklaring](https://www.riziv.fgov.be/nl/thema-s/egezondheid/beslissingsondersteunend-platform-voor-voorschrijvers-meer-gepaste-zorg-en-minder-veiligheidsrisico-s/gebruiksvoorwaarden-en-privacyverklaring-voor-de-applicatie-pss).",
          "_text" : {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/rendering-markdown",
                "valueMarkdown" : "Door een account aan te maken gaat u akkoord met de [Gebruiksvoorwaarden en privacyverklaring](https://www.riziv.fgov.be/nl/thema-s/egezondheid/beslissingsondersteunend-platform-voor-voorschrijvers-meer-gepaste-zorg-en-minder-veiligheidsrisico-s/gebruiksvoorwaarden-en-privacyverklaring-voor-de-applicatie-pss)."
              },
              {
                "extension" : [
                  {
                    "url" : "lang",
                    "valueCode" : "fr-BE"
                  },
                  {
                    "url" : "content",
                    "valueString" : "En créant un compte, vous acceptez les [Conditions d'utilisation et politique de confidentialité](https://www.inami.fgov.be/fr/themes/esante/plateforme-d-aide-a-la-decision-pour-les-prescripteurs-des-soins-plus-adaptes-et-moins-de-risques-de-securite/conditions-d-utilisation-et-politique-de-confidentialite-pour-l-application-pss).",
                    "_valueString" : {
                      "extension" : [
                        {
                          "url" : "http://hl7.org/fhir/StructureDefinition/rendering-markdown",
                          "valueMarkdown" : "En créant un compte, vous acceptez les [Conditions d'utilisation et politique de confidentialité](https://www.inami.fgov.be/fr/themes/esante/plateforme-d-aide-a-la-decision-pour-les-prescripteurs-des-soins-plus-adaptes-et-moins-de-risques-de-securite/conditions-d-utilisation-et-politique-de-confidentialite-pour-l-application-pss"
                        }
                      ]
                    }
                  }
                ],
                "url" : "http://hl7.org/fhir/StructureDefinition/translation"
              }
            ]
          },
          "type" : "display"
        },
        {
          "linkId" : "tcversion",
          "text" : "version",
          "type" : "display"
        },
        {
          "linkId" : "consent",
          "text" : "Consent",
          "type" : "boolean",
          "required" : true,
          "repeats" : false
        }
      ]
    },
    {
      "linkId" : "anonymizationPreference",
      "text" : "Statistical anonymization preference",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "cluster-anon",
            "display" : "Ik geef toestemming om gegevens over mijn gebruik van deze app anoniem te verzamelen op het niveau van mijn onderwijsinstelling (cluster) voor statistische doeleinden.",
            "_display" : {
              "extension" : [
                {
                  "extension" : [
                    {
                      "url" : "lang",
                      "valueCode" : "fr-BE"
                    },
                    {
                      "url" : "content",
                      "valueString" : "Je donne mon consentement pour que les données concernant mon utilisation de cette application soient collectées anonymement au niveau de mon établissement d'enseignement (cluster) à des fins statistiques."
                    }
                  ],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          }
        },
        {
          "valueCoding" : {
            "code" : "full-anon",
            "display" : "Ik geef de voorkeur aan volledige anonimiteit wanneer voor statistische doeleinden gegevens worden verzameld over mijn gebruik van deze app.",
            "_display" : {
              "extension" : [
                {
                  "extension" : [
                    {
                      "url" : "lang",
                      "valueCode" : "fr-BE"
                    },
                    {
                      "url" : "content",
                      "valueString" : "Je préfère une anonymité totale lors de la collecte de données sur mon utilisation de cette application à des fins statistiques."
                    }
                  ],
                  "url" : "http://hl7.org/fhir/StructureDefinition/translation"
                }
              ]
            }
          }
        }
      ]
    }
  ]
}

```
