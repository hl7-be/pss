# Antimicrobial - Select red recommendation - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antimicrobial - Select red recommendation**

## Example Task: Antimicrobial - Select red recommendation

Profile: [PSS Feedback Task](StructureDefinition-FeedbackTask.md)

**status**: Accepted

**statusReason**: This was the only possible choice, because this patient is alergic to the usual alternative medication

**intent**: option

**focus**: [MedicationRequest: status = active; intent = proposal; medication[x] = ](MedicationRequest-30551ce1-5a28-4356-b684-1e639094ad29.md)

**lastModified**: 2025-05-28 10:15:00+0200



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-accepted-red-a",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/FeedbackTask"
    ]
  },
  "status" : "accepted",
  "statusReason" : {
    "coding" : [
      {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSaFeedbackReasons",
        "code" : "OtherReason"
      }
    ],
    "text" : "This was the only possible choice, because this patient is alergic to the usual alternative medication"
  },
  "intent" : "option",
  "focus" : {
    "reference" : "MedicationRequest/30551ce1-5a28-4356-b684-1e639094ad29"
  },
  "lastModified" : "2025-05-28T10:15:00+02:00"
}

```
