Instance: antimicrobial-step1
InstanceOf: Bundle
* type = #collection
* entry[+].fullUrl = "urn:uuid:688d174c-d04c-430f-9d29-bc8a601e0a5c"
* entry[=].resource = temp-patient
* entry[+].fullUrl = "urn:uuid:0d2e2549-378c-4f87-a265-3543d64c7fc5"
* entry[=].resource = antimicrobial-condition


Instance: antimicrobial-condition
InstanceOf: Condition
Usage: #inline
* id = "0d2e2549-378c-4f87-a265-3543d64c7fc5"
* code = $sct#921000172108 
* code.text = "Sore throat - acute"
* subject = Reference(temp-patient)