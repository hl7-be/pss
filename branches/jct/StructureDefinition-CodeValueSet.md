# Code ValueSet - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Code ValueSet**

## Extension: Code ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet | *Version*:1.0.0 |
| Active as of 2026-01-14 | *Computable Name*:CodeValueSet |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.2 | |

A ValueSet used when a question / item can correspond not just to a single code but to a set of concepts

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PSS Data Acquisition Form](StructureDefinition-PSSDataAcquisitionForm.md)
* Examples for this Extension: [Bundle/getdatatocollect-a-response](Bundle-getdatatocollect-a-response.md) and [Questionnaire/30551ce1-5a28-4356-b684-2e639094ad4c](Questionnaire-30551ce1-5a28-4356-b684-2e639094ad4c.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/CodeValueSet)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CodeValueSet.csv), [Excel](StructureDefinition-CodeValueSet.xlsx), [Schematron](StructureDefinition-CodeValueSet.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CodeValueSet",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.2"
    }
  ],
  "version" : "1.0.0",
  "name" : "CodeValueSet",
  "title" : "Code ValueSet",
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
  "description" : "A ValueSet used when a question / item can correspond not just to a single code but to a set of concepts",
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
      "expression" : "Questionnaire.item"
    },
    {
      "type" : "element",
      "expression" : "ValueSet.compose.include.concept"
    },
    {
      "type" : "element",
      "expression" : "ValueSet.expansion.contains"
    },
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
        "short" : "Code ValueSet",
        "definition" : "A ValueSet used when a question / item can correspond not just to a single code but to a set of concepts"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "canonical"
          }
        ]
      }
    ]
  }
}

```
