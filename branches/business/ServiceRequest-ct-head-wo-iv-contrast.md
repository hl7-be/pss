# Radiology - S1 Get Diagnoses - Request - 1.3 Original suggestion - CT head wo IV contrast - Prescription Search Support v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiology - S1 Get Diagnoses - Request - 1.3 Original suggestion - CT head wo IV contrast**

## Example ServiceRequest: Radiology - S1 Get Diagnoses - Request - 1.3 Original suggestion - CT head wo IV contrast

version: v1

Profile: [PSS Response Service Request](StructureDefinition-PSSResponseServiceRequest.md)

**identifier**: urn:uuid:30551ce1-5a28-4356-b684-3e639123ad02

**status**: Active

**intent**: Proposal

**code**: CT, head, wo iv contrast

**subject**: [Male, DoB Unknown](Patient-30551ce1-5a28-4356-b684-3e639094ad48.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "ct-head-wo-iv-contrast",
  "meta" : {
    "versionId" : "v1",
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest"
    ]
  },
  "identifier" : [
    {
      "value" : "urn:uuid:30551ce1-5a28-4356-b684-3e639123ad02"
    }
  ],
  "status" : "active",
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
