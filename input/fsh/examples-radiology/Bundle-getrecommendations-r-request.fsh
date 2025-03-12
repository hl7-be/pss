Instance: getrecommendations-data3
InstanceOf: PSSRequestBundle
Title: "Radiology - S3 Get Recommendations - Request- 1. request Bundle"
Description: "Radiology - S3 Get Recommendations - Request - 1. request Bundle"
Usage: #example
* type = #collection
* entry[0].resource = patient-r
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad48"
* entry[+].resource = proposed-diagnosis-5000246
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-4e639094ad11"
* entry[+].resource = ct-head-wo-iv-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad02"


Instance: proposed-diagnosis-5000246
InstanceOf: Condition
Title: "Radiology - S3 Get Recommendations - Request- 1.1. Initial diagnosis of head trauma"
Description: "Radiology - S3 Get Recommendations - Request- 1.1. Initial diagnosis of head trauma"
Usage: #example
* meta.versionId = "v2"
// How to say "This was selected by the professional"
* id = "proposed-diagnosis-5000246"
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* code.coding[0] = $PSSQSIConditions#5000246 "Head trauma, ataxia"
* subject = Reference(patient-r)
* onsetDateTime = "2024-10-13"


Instance: ct-head-wo-iv-contrast-v2
InstanceOf: ServiceRequest
Title: "Radiology - S3 Get Recommendations - Request- 1.2. Initially considered procedure: CT head wo IV contrast"
Description: "Radiology - S3 Get Recommendations - Request- 1.2. Initially considered procedure: CT head wo IV contrast"
Usage: #example
* meta.versionId = "v2"
// How to say "This was proposed by the professional"
* id = "ct-head-wo-iv-contrast"
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest"
* status = #active
* intent = #proposal
* code.coding[0] = $PSSQSIProcedures#114055 "CT, head, wo iv contrast"
* subject = Reference(patient-r)