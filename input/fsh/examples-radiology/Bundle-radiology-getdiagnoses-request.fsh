Instance: radiology-getdiagnoses
Title: "Radiology - S1 Get Diagnoses - Request - 1. Bundle"
Description: "Radiology - S1 Get Diagnoses - Request - 1. Bundle"
InstanceOf: PSSRequestBundle
Usage: #example
* type = #collection
* entry[0].resource = 30551ce1-5a28-4356-b684-3e639094ad48
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad48"
* entry[+].resource = ataxia
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad04"
* entry[+].resource = ct-head-wo-iv-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e631234ad04"


Instance: ataxia
Title: "Radiology - S1 Get Diagnoses - Request - 1.1. Observed data"
Description: "Radiology - S1 Get Diagnoses - Request - 1.1. Observed data"
InstanceOf: Observation
Usage: #example
* status = #final
* code = $sct#20262006 "Ataxia"
* subject = Reference(30551ce1-5a28-4356-b684-3e639094ad48)
* effectiveDateTime = 2025-06-02
//* performer = 

Instance: ct-head-wo-iv-contrast
InstanceOf: PSSResponseServiceRequest
Title: "Radiology - S1 Get Diagnoses - Request - 1.3 Original suggestion - CT head wo IV contrast"
Description: "Radiology - S1 Get Recommendations - Request - 1.3 Original suggestion - CT head wo IV contrast"
Usage: #example
* meta.versionId = "v1"
* status = #active
* intent = #proposal
* code = PSSQSIProcedures#114055 "CT, head, wo iv contrast"
* subject = Reference(30551ce1-5a28-4356-b684-3e639094ad48)
* identifier.value = "urn:uuid:30551ce1-5a28-4356-b684-3e639123ad02"

