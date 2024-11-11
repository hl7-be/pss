Instance: radiology-getdiagnoses
Title: "Radiology - S1 Get Diagnoses - Request - 1. Bundle"
Description: "Radiology - S1 Get Diagnoses - Request - 1. Bundle"
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = X
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad03"
* entry[+].resource = ataxia
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad04"
* entry[+].resource = ct-head-iv-contrast


Instance: ataxia
Title: "Radiology - S1 Get Diagnoses - Request - 1.1. Observed data"
Description: "Radiology - S1 Get Diagnoses - Request - 1.1. Observed data"
InstanceOf: Observation
Usage: #example
* status = #final
* code = $sct#20262006 "Ataxia"
* subject = Reference(X)


Instance: ct-head-iv-contrast
Title: "Radiology - S1 Get Diagnoses - Request - 1.2. Suggested Procedure"
Description: "Radiolog1 - S1 Get Diagnoses - Request - 1.2. Suggested procedure"
InstanceOf: ServiceRequest
Usage: #example
* status = #active
* intent = #proposal
* code.text = "CT Head with IV contrast"
* subject = Reference(X)

