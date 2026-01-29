# PSS Data Acquisition Form - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PSS Data Acquisition Form**

## Resource Profile: PSS Data Acquisition Form 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSDataAcquisitionForm | *Version*:1.0.0 |
| Active as of 2026-01-29 | *Computable Name*:PSSDataAcquisitionForm |
| *Other Identifiers:*OID:2.16.840.1.113883.2.51.22.2.42.3 | |

 
The PSS Data Acquisition Form is used to inform what data needs to be acquired and provided to the PSS system. 

**Usages:**

* Examples for this Profile: [Questionnaire/30551ce1-5a28-4356-b684-2e639094ad4c](Questionnaire-30551ce1-5a28-4356-b684-2e639094ad4c.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.pss|current/StructureDefinition/PSSDataAcquisitionForm)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PSSDataAcquisitionForm.csv), [Excel](StructureDefinition-PSSDataAcquisitionForm.xlsx), [Schematron](StructureDefinition-PSSDataAcquisitionForm.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PSSDataAcquisitionForm",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSDataAcquisitionForm",
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:2.16.840.1.113883.2.51.22.2.42.3"
    }
  ],
  "version" : "1.0.0",
  "name" : "PSSDataAcquisitionForm",
  "title" : "PSS Data Acquisition Form",
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
  "description" : "The PSS Data Acquisition Form is used to inform what data needs to be acquired and provided to the PSS system.",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "objimpl",
      "uri" : "http://hl7.org/fhir/object-implementation",
      "name" : "Object Implementation Information"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Questionnaire",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computablequestionnaire",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Questionnaire",
        "path" : "Questionnaire"
      },
      {
        "id" : "Questionnaire.item.extension:CodeValueSet",
        "path" : "Questionnaire.item.extension",
        "sliceName" : "CodeValueSet",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/CodeValueSet"
            ]
          }
        ]
      },
      {
        "id" : "Questionnaire.item.answerOption.extension:answerOptionAdditionalCode",
        "path" : "Questionnaire.item.answerOption.extension",
        "sliceName" : "answerOptionAdditionalCode",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/AnswerOptionAdditionalCode"
            ]
          }
        ]
      }
    ]
  }
}

```
