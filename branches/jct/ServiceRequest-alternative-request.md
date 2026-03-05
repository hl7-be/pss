# alternative-request - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **alternative-request**

## Example ServiceRequest: alternative-request

Profile: [PSS Response Service Request](StructureDefinition-PSSResponseServiceRequest.md)

**status**: Draft

**intent**: Proposal

**code**: CT, head, wo iv contrast

**subject**: [Male, DoB Unknown](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "alternative-request",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest"
    ]
  },
  "status" : "draft",
  "intent" : "proposal",
  "code" : {
    "coding" : [
      {
        "system" : "https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSQSIProcedures",
        "code" : "114055",
        "display" : "CT, head, wo iv contrast"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/30551ce1-5a28-4356-b684-3e639094ad48"
  }
}

```
