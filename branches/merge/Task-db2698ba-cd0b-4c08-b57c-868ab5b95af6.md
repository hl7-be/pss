# Radiology - S1 Get Diagnoses - Response - 1.4. Task to propose diagnosis - Infection - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiology - S1 Get Diagnoses - Response - 1.4. Task to propose diagnosis - Infection**

## Example Task: Radiology - S1 Get Diagnoses - Response - 1.4. Task to propose diagnosis - Infection

**status**: Requested

**intent**: proposal

**code**: Propose a diagnosis

**for**: [Male, DoB Unknown](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Propose a diagnosis | [Condition Ataxia, infection suspected](Condition-5f3aafb8-643c-4ed5-ad54-199939e7b2d1.md) |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "db2698ba-cd0b-4c08-b57c-868ab5b95af6",
  "status" : "requested",
  "intent" : "proposal",
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs",
        "code" : "propose-diagnosis",
        "display" : "Propose a diagnosis"
      }
    ]
  },
  "for" : {
    "reference" : "Patient/30551ce1-5a28-4356-b684-3e639094ad48"
  },
  "input" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs",
            "code" : "propose-diagnosis",
            "display" : "Propose a diagnosis"
          }
        ]
      },
      "valueReference" : {
        "reference" : "Condition/5f3aafb8-643c-4ed5-ad54-199939e7b2d1"
      }
    }
  ]
}

```
