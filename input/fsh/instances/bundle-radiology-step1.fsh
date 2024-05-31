Instance: radiology-step1
InstanceOf: Bundle
* type = #collection
* entry[+].fullUrl = "urn:uuid:688d174c-d04c-430f-9d29-bc8a601e0a5c"
* entry[=].resource = temp-patient
* entry[+].fullUrl = "urn:uuid:d85ccd8d-dcc6-4c43-80e0-0d2b427620d9"
* entry[=].resource = condition
* entry[+].fullUrl = "urn:uuid:5be1aac7-2934-4bfd-96e6-0c90332a25ce"
* entry[=].resource = serviceRequest


Instance: condition
InstanceOf: Condition
* id = "d85ccd8d-dcc6-4c43-80e0-0d2b427620d9"
* code = $sct#763597000 
* code.text = "Ataxia"
* subject = Reference(temp-patient)

Instance: serviceRequest
InstanceOf: ServiceRequest
* id = "5be1aac7-2934-4bfd-96e6-0c90332a25ce"
* code = $sct#77477000
* intent = #proposal
* subject = Reference(temp-patient)
* status = #active
