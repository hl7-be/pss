# AnswerOption Additional Code - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AnswerOption Additional Code**

## Extension: AnswerOption Additional Code 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/AnswerOptionAdditionalCode | *Version*:1.0.0 |
| Active as of 2026-01-14 | *Computable Name*:AnswerOptionAdditionalCode |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.1 | |

An additional code for an option in a choice question

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PSS Data Acquisition Form](StructureDefinition-PSSDataAcquisitionForm.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/AnswerOptionAdditionalCode)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-AnswerOptionAdditionalCode.csv), [Excel](StructureDefinition-AnswerOptionAdditionalCode.xlsx), [Schematron](StructureDefinition-AnswerOptionAdditionalCode.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AnswerOptionAdditionalCode",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/AnswerOptionAdditionalCode",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.1"
    }
  ],
  "version" : "1.0.0",
  "name" : "AnswerOptionAdditionalCode",
  "title" : "AnswerOption Additional Code",
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
  "description" : "An additional code for an option in a choice question",
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
      "expression" : "Questionnaire.item.answerOption"
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
        "short" : "AnswerOption Additional Code",
        "definition" : "An additional code for an option in a choice question"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/AnswerOptionAdditionalCode"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ]
      }
    ]
  }
}

```
