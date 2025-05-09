Instance: getrecommendations-data3
InstanceOf: PSSRequestBundle
Title: "Radiology - S3 Get Recommendations - Request- 1. request Bundle"
Description: "Radiology - S3 Get Recommendations - Request - 1. request Bundle"
Usage: #example
* type = #collection
* entry[0].resource = 30551ce1-5a28-4356-b684-3e639094ad48
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad48"
* entry[+].resource = pss-30551ce1-5a28-4356-b684-4e639094ad11
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-4e639094ad11"
* entry[+].resource = pss-ct-head-wo-iv-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad02"


Instance: pss-30551ce1-5a28-4356-b684-4e639094ad11
InstanceOf: Condition
Title: "Radiology - S3 Get Recommendations - Request- 1.1. Initial diagnosis of head trauma"
Description: "Radiology - S3 Get Recommendations - Request- 1.1. Initial diagnosis of head trauma"
Usage: #example
* meta.versionId = "v2"
// How to say "This was selected by the professional"
* id = "pss-30551ce1-5a28-4356-b684-4e639094ad11"
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* code.coding[0] = $PSSQSIConditions#5000246 "Head trauma, ataxia"
* subject = Reference(30551ce1-5a28-4356-b684-3e639094ad48)
* onsetDateTime = "2024-10-13"


Instance: pss-ct-head-wo-iv-contrast
InstanceOf: ServiceRequest
Title: "Radiology - S3 Get Recommendations - Request- 1.2 Scored procedure from initially considered: CT head wo IV contrast"
Description: "Radiology - S3 Get Recommendations - Request- 1.2. Initially considered procedure: CT head wo IV contrast"
Usage: #example
* meta.versionId = "v2"
// How to say "This was proposed by the professional"
* id = "pss-ct-head-wo-iv-contrast"
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/PSSResponseServiceRequest"
* status = #active
* intent = #proposal
* code.coding[0] = $PSSQSIProcedures#114055 "CT, head, wo iv contrast"
* subject = Reference(30551ce1-5a28-4356-b684-3e639094ad48)
* identifier.value = "urn:uuid:30551ce1-5a28-4356-b684-3e639123ad02"