Instance: careplan-radiology-step4
InstanceOf: CarePlan
* contained[+] = serviceRequest1
* contained[+] = serviceRequest2
* contained[+] = serviceRequest3
* contained[+] = serviceRequest4
* contained[+] = temp-patient
* status = #active
* intent = #order
* subject = Reference(temp-patient)
* activity[+].reference = Reference(serviceRequest1)
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "score"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueInteger = 10
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "RelativeCost"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueString = "€€"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "RadiationLevel"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueInteger = 3
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "IsRequested"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueBoolean = true



* activity[+].reference = Reference(serviceRequest2)
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "score"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueInteger = 10
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "RelativeCost"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueString = "€€€"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "RadiationLevel"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueInteger = 3
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "IsRequested"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueBoolean = false

* activity[+].reference = Reference(serviceRequest3)
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "score"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueInteger = 10
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "RelativeCost"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueString = "€€"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "RadiationLevel"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueInteger = 3
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "IsRequested"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueBoolean = false

* activity[+].reference = Reference(serviceRequest4)
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "score"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueInteger = 10
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "RelativeCost"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueString = "€€"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "RadiationLevel"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueInteger = 3
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "IsRequested"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueBoolean = false



Instance: serviceRequest1
InstanceOf: ServiceRequest
* subject = Reference(temp-patient)
* code.text = "CT, hoofd, zonder intraveneus contrast"
* status = #active
* intent = #option

Instance: serviceRequest2
InstanceOf: ServiceRequest
* subject = Reference(temp-patient)
* code.text = "CT, angiografie, hoofd, met intraveneus contrast"
* status = #active
* intent = #option

Instance: serviceRequest3
InstanceOf: ServiceRequest
* subject = Reference(temp-patient)
* code.text = "CT, cisternografie, hoofd, met intraveneus contrast"
* status = #active
* intent = #option

Instance: serviceRequest4
InstanceOf: ServiceRequest
* subject = Reference(temp-patient)
* code.text = "CT, hoofd, met intraveneus contrast"
* status = #active
* intent = #option



