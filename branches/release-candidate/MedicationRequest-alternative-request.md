# Antimicrobial - Another option that is not in the recommendations - Prescription Search Support v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antimicrobial - Another option that is not in the recommendations**

## Example MedicationRequest: Antimicrobial - Another option that is not in the recommendations

Profile: [PSS Response Medication Request](StructureDefinition-PSSResponseMedicationRequest.md)

**status**: Draft

**intent**: Proposal

**medication**: Dequalinium

**subject**: [ Male, DoB Unknown](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md)



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "alternative-request",
  "meta" : {
    "profile" : ["https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseMedicationRequest"]
  },
  "status" : "draft",
  "intent" : "proposal",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://www.whocc.no/atc",
      "code" : "G01AC05",
      "display" : "Dequalinium"
    }]
  },
  "subject" : {
    "reference" : "Patient/30551ce1-5a28-4356-b684-3e639094ad48"
  }
}

```
