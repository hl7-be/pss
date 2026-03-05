# Radiology - S1 Get Diagnoses - Response - 1.5. Diagnosis - Infection - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiology - S1 Get Diagnoses - Response - 1.5. Diagnosis - Infection**

## Example Condition: Radiology - S1 Get Diagnoses - Response - 1.5. Diagnosis - Infection

Profile: [CPG Condition](http://hl7.org/fhir/uv/cpg/STU2/StructureDefinition-cpg-condition.html)

**clinicalStatus**: Active

**verificationStatus**: Provisional

**category**: Problem List Item

**code**: Ataxia, infection suspected

**subject**: [Male, DoB Unknown](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md)

**onset**: 2025-03-03 13:24:10+0100



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "5f3aafb8-643c-4ed5-ad54-199939e7b2d1",
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
        "code" : "3074221",
        "display" : "Ataxia, infection suspected"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/30551ce1-5a28-4356-b684-3e639094ad48"
  },
  "onsetDateTime" : "2025-03-03T13:24:10+01:00"
}

```
