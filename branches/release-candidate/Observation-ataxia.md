# Radiology - S1 Get Diagnoses - Request - 1.1. Observed data - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiology - S1 Get Diagnoses - Request - 1.1. Observed data**

## Example Observation: Radiology - S1 Get Diagnoses - Request - 1.1. Observed data

**status**: Final

**code**: Ataxia

**subject**: [ Male, DoB Unknown](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md)

**effective**: 2025-06-02



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ataxia",
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "20262006",
        "display" : "Ataxia"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/30551ce1-5a28-4356-b684-3e639094ad48"
  },
  "effectiveDateTime" : "2025-06-02"
}

```
