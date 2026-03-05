# Radiology - S1 Get Diagnoses - Response - 1.8. Task to propose diagnosis - Chronic or slow progression-ataxia - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiology - S1 Get Diagnoses - Response - 1.8. Task to propose diagnosis - Chronic or slow progression-ataxia**

## Example Task: Radiology - S1 Get Diagnoses - Response - 1.8. Task to propose diagnosis - Chronic or slow progression-ataxia

**status**: Requested

**intent**: proposal

**code**: Propose a diagnosis

**for**: [Male, DoB Unknown](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md)

### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | Propose a diagnosis | [Condition Ataxia, slowly progressive or long duration](Condition-72d3ced6-5133-4042-931e-04284c9f4283.md) |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "cfdfee5b-1db1-43fe-af72-4ea54b4e1a16",
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
        "reference" : "Condition/72d3ced6-5133-4042-931e-04284c9f4283"
      }
    }
  ]
}

```
