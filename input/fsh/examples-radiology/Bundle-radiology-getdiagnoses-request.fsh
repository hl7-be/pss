Instance: radiology-getdiagnoses
Title: "Radiology - S1 Get Diagnoses - Request - 1. Bundle"
Description: "Radiology - S1 Get Diagnoses - Request - 1. Bundle"
InstanceOf: PSSRequestBundle
Usage: #example
* type = #collection
* entry[0].resource = patient-r
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad03"
* entry[+].resource = ataxia
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad04"
* entry[+].resource = ct-head-iv-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e631234ad04"


Instance: ataxia
Title: "Radiology - S1 Get Diagnoses - Request - 1.1. Observed data"
Description: "Radiology - S1 Get Diagnoses - Request - 1.1. Observed data"
InstanceOf: Observation
Usage: #example
* status = #final
* code = $sct#20262006 "Ataxia"
* subject = Reference(patient-r)




Instance: ct-head-iv-contrast
InstanceOf: ServiceRequest
Title: "Radiology - S1 Get Diagnoses - Request - 1.3 Original suggestion - CT head with IV contrast"
Description: "Radiology - S1 Get Recommendations - Request - 1.3 Original suggestion - CT head with IV contrast"
Usage: #example
* meta.versionId = "v1"
* status = #active
* intent = #proposal
* code = PSSQSIProcedures#114055 "CT, head, wo iv contrast"
* subject = Reference(patient-r)
* identifier.value = "some-identifier"

