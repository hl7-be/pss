# PSS Rating Extension - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Rating Extension**

## Extension: PSS Rating Extension 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating | *Version*:1.0.0 |
| Active as of 2026-01-14 | *Computable Name*:PSSStructuredRating |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.16 | |

A clinician-friendly rating, or score, for the recommendation; patient-friendly if the recommendation is patient-facing.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PSS Response Request Group](StructureDefinition-PSSResponseRequestGroup.md)
* Examples for this Extension: [Bundle/getrecommendations-a-response](Bundle-getrecommendations-a-response.md), [Bundle/getrecommendations-r-response](Bundle-getrecommendations-r-response.md), [RequestGroup/getrecommendations-a-response-group](RequestGroup-getrecommendations-a-response-group.md) and [RequestGroup/getrecommendations-r-response-1](RequestGroup-getrecommendations-r-response-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSStructuredRating)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSStructuredRating.csv), [Excel](StructureDefinition-PSSStructuredRating.xlsx), [Schematron](StructureDefinition-PSSStructuredRating.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSStructuredRating",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.16"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSStructuredRating",
  "title" : "PSS Rating Extension",
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
  "description" : "A clinician-friendly rating, or score, for the recommendation; patient-friendly if the recommendation is patient-facing.",
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
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Resource"
    },
    {
      "type" : "element",
      "expression" : "RequestGroup.action"
    },
    {
      "type" : "element",
      "expression" : "RequestGroup.action.action"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "PSS Rating Extension",
        "definition" : "A clinician-friendly rating, or score, for the recommendation; patient-friendly if the recommendation is patient-facing."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:ratingType",
        "path" : "Extension.extension",
        "sliceName" : "ratingType",
        "short" : "Volume in the body where radiation was delivered",
        "definition" : "A BodyStructure resource representing the body structure treated, for example, Chest Wall Lymph Nodes.",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:ratingType.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:ratingType.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "ratingType"
      },
      {
        "id" : "Extension.extension:ratingType.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "example",
          "valueSet" : "https://www.ehealth.fgov.be/standards/fhir/pss/ValueSet/PSSRatingTypesVS"
        }
      },
      {
        "id" : "Extension.extension:ratingValue",
        "path" : "Extension.extension",
        "sliceName" : "ratingValue",
        "short" : "Total Radiation Dose Delivered",
        "definition" : "The total amount of radiation delivered to this volume within the scope of this dose delivery.",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:ratingValue.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:ratingValue.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "ratingValue"
      },
      {
        "id" : "Extension.extension:ratingValue.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          },
          {
            "code" : "Ratio"
          }
        ]
      },
      {
        "id" : "Extension.extension:ratingText",
        "path" : "Extension.extension",
        "sliceName" : "ratingText",
        "short" : "Number of Fractions Delivered",
        "definition" : "The number of fractions delivered to this volume.",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:ratingText.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:ratingText.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "ratingText"
      },
      {
        "id" : "Extension.extension:ratingText.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "markdown"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSStructuredRating"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
