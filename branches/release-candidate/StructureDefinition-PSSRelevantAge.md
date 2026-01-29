# PSS Relevant Patient Age - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Relevant Patient Age**

## Extension: PSS Relevant Patient Age 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRelevantAge | *Version*:1.0.0 |
| Active as of 2026-01-29 | *Computable Name*:PSSRelevantAge |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.7 | |

The approximate, relevant age of the patient at the time of the search.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PSS anonymised Patient](StructureDefinition-PSSPatient.md)
* Examples for this Extension: [Bundle/getdatatocollect-a-data](Bundle-getdatatocollect-a-data.md), [Bundle/getdatatocollect-a-response](Bundle-getdatatocollect-a-response.md), [Bundle/getrecommendations-a-data](Bundle-getrecommendations-a-data.md), [Bundle/getrecommendations-data3](Bundle-getrecommendations-data3.md)... Show 3 more, [Bundle/radiology-getdiagnoses](Bundle-radiology-getdiagnoses.md), [Patient/30551ce1-5a28-4356-b684-2e639094ad48](Patient-30551ce1-5a28-4356-b684-2e639094ad48.md) and [Patient/30551ce1-5a28-4356-b684-3e639094ad48](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSRelevantAge)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSRelevantAge.csv), [Excel](StructureDefinition-PSSRelevantAge.xlsx), [Schematron](StructureDefinition-PSSRelevantAge.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSRelevantAge",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRelevantAge",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.7"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSRelevantAge",
  "title" : "PSS Relevant Patient Age",
  "status" : "active",
  "date" : "2026-01-29T09:07:50+00:00",
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
  "description" : "The approximate, relevant age of the patient at the time of the search.",
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
      "expression" : "Patient"
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
        "short" : "PSS Relevant Patient Age",
        "definition" : "The approximate, relevant age of the patient at the time of the search."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRelevantAge"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Age"
          }
        ]
      }
    ]
  }
}

```
