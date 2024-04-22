Alias: $service-category = http://terminology.hl7.org/CodeSystem/service-category


Instance: rad-servicerquest-flow1
InstanceOf: ServiceRequest
Usage: #example
* category = $service-category#Radiology
* status = #active
* intent = #plan
* code = $sct#763597000
* requester = Reference(Practitioner/123456)
* reasonReference = Reference(Condition/HereditaryAtaxia)
* supportingInfo[0] = Reference(Observation/age)
* supportingInfo[+] = Reference(Observation/gender)
* supportingInfo[+] = Reference(Condition/examination)
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/ssin"
* subject.identifier.value = "slfjel24sld"
* subject.identifier.value.extension.url = "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
* subject.identifier.value.extension.extension.url = "marker"
* subject.identifier.value.extension.extension.valueBoolean = true
