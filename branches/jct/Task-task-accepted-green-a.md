# Antimicrobial - Select green recommendation - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antimicrobial - Select green recommendation**

## Example Task: Antimicrobial - Select green recommendation

Profile: [PSS Feedback Task](StructureDefinition-FeedbackTask.md)

**status**: Accepted

**intent**: option

**focus**: [MedicationRequest: status = active; intent = proposal; medication[x] = metronidazole](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ac23.md)

**lastModified**: 2025-05-28 10:10:00+0200



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-accepted-green-a",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
    ]
  },
  "status" : "accepted",
  "intent" : "option",
  "focus" : {
    "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-1e639094ac23",
    "identifier" : {
      "value" : "J01XD01"
    }
  },
  "lastModified" : "2025-05-28T10:10:00+02:00"
}

```
