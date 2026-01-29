# Radiology - S1 Get Diagnoses - Response - 1.11. Diagnosis - Post-trauma ataxia - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiology - S1 Get Diagnoses - Response - 1.11. Diagnosis - Post-trauma ataxia**

## Example Condition: Radiology - S1 Get Diagnoses - Response - 1.11. Diagnosis - Post-trauma ataxia

Profile: [CPG Condition](http://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-condition.html)

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Problem List Item

**code**: Ataxia, post head trauma

**subject**: [ Male, DoB Unknown](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md)

**onset**: 2025-03-03 13:24:10+0100



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "b90ca57a-1ae5-4ff6-8dce-48488660ea65",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
    ]
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "provisional"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSQSIConditions",
        "code" : "3074222",
        "display" : "Ataxia, post head trauma"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/30551ce1-5a28-4356-b684-3e639094ad48"
  },
  "onsetDateTime" : "2025-03-03T13:24:10+01:00"
}

```
