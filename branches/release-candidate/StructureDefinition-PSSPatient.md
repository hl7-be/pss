# PSS anonymised Patient - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS anonymised Patient**

## Resource Profile: PSS anonymised Patient 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSPatient | *Version*:1.0.0 |
| Active as of 2026-01-29 | *Computable Name*:PSSPatient |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.5 | |

 
PSS anonymised Patient 

**Usages:**

* Refer to this Profile: [PSS MedicationRequest Task](StructureDefinition-PSSMedicationRequest.md), [PSS Questionnaire Task](StructureDefinition-PSSQuestionnaireTask.md), [PSS Response Communication Request](StructureDefinition-PSSResponseCommunicationRequest.md), [PSS Response Medication Request](StructureDefinition-PSSResponseMedicationRequest.md)... Show 2 more, [PSS Response Request Group](StructureDefinition-PSSResponseRequestGroup.md) and [PSS Response Service Request](StructureDefinition-PSSResponseServiceRequest.md)
* Examples for this Profile: [Patient/30551ce1-5a28-4356-b684-2e639094ad48](Patient-30551ce1-5a28-4356-b684-2e639094ad48.md) and [Patient/30551ce1-5a28-4356-b684-3e639094ad48](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSPatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSPatient.csv), [Excel](StructureDefinition-PSSPatient.xlsx), [Schematron](StructureDefinition-PSSPatient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSPatient",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSPatient",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.5"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSPatient",
  "title" : "PSS anonymised Patient",
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
  "description" : "PSS anonymised Patient",
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
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.extension",
        "path" : "Patient.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Patient.extension:relevantAge",
        "path" : "Patient.extension",
        "sliceName" : "relevantAge",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSRelevantAge"
            ]
          }
        ]
      },
      {
        "id" : "Patient.name.extension",
        "path" : "Patient.name.extension",
        "min" : 1
      },
      {
        "id" : "Patient.name.extension:absent",
        "path" : "Patient.name.extension",
        "sliceName" : "absent",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/data-absent-reason|5.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.name.extension:absent.value[x]",
        "path" : "Patient.name.extension.value[x]",
        "patternCode" : "masked"
      },
      {
        "id" : "Patient.name.text",
        "path" : "Patient.name.text",
        "max" : "0"
      },
      {
        "id" : "Patient.name.family",
        "path" : "Patient.name.family",
        "max" : "0"
      },
      {
        "id" : "Patient.name.given",
        "path" : "Patient.name.given",
        "max" : "0"
      }
    ]
  }
}

```
