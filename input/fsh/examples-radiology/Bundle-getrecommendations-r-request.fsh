Instance: getrecommendations-data3
InstanceOf: PSSRequestBundle
Title: "Radiology - S3 Get Recommendations - Request- 1. request Bundle"
Description: "Radiology - S3 Get Recommendations - Request - 1. request Bundle"
Usage: #example
* type = #collection
* entry[0].resource = patient-r
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad48"
* entry[+].resource = proposed-diagnosis-head-trauma
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad01"
* entry[+].resource = ct-head-iv-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad02"


Instance: proposed-diagnosis-head-trauma-v2
InstanceOf: Condition
Title: "Radiology - S3 Get Recommendations - Request- 1.1. Initial diagnosis of head trauma"
Description: "Radiology - S3 Get Recommendations - Request- 1.1. Initial diagnosis of head trauma"
Usage: #example

* meta.versionId = "v2"
// How to say "This was selected by the professional"

* id = "proposed-diagnosis-head-trauma-v2"
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* code.coding[0] = $PSSQSIConditions#5000246 "Head trauma"
* subject = Reference(patient-r)
* onsetDateTime = "2024-10-13"


Instance: ct-head-iv-contrast-v2
InstanceOf: ServiceRequest
Title: "Radiology - S3 Get Recommendations - Request- 1.2. Initially considered procedure: CT scan with IV contrast"
Description: "Radiology - S3 Get Recommendations - Request- 1.2. Initially considered procedure: CT scan with IV contrast"
Usage: #example
* meta.versionId = "v2"
// How to say "This was proposed by the professional"
* status = #active
* intent = #proposal
* code.text = "CT Head with IV contrast"
* subject = Reference(patient-r)

