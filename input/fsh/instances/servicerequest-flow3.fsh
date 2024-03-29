Instance: servicerequest-flow3
InstanceOf: ServiceRequest
* code = $sct#420227002
* orderDetail = $sct#65363002
* supportingInfo[+] = Reference(condition1)
* supportingInfo[+] = Reference(observation1)
* status = #active
* intent = #order 
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/ssin"
* subject.identifier.value = "slfjel24sld"
* subject.identifier.value.extension.url = "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
* subject.identifier.value.extension.extension.url = "marker"
* subject.identifier.value.extension.extension.valueBoolean = true

Instance: condition1
InstanceOf: Condition
* code = $sct#313424005
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/ssin"
* subject.identifier.value = "slfjel24sld"
* subject.identifier.value.extension.url = "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
* subject.identifier.value.extension.extension.url = "marker"
* subject.identifier.value.extension.extension.valueBoolean = true
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active


Instance: observation1
InstanceOf: Observation
* code =  $sct#281789004
* valueBoolean = true
* status = #registered