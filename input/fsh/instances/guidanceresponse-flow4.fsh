Instance: guidanceresponse-flow4
InstanceOf: GuidanceResponse
* status = #active
* moduleCanonical = "http://www.example.com/Plandefinition/plandefinition-flow2"
* outputParameters = Reference(parameters1)

Instance: parameters1
InstanceOf: Parameters
* parameter[+].resource = medicationRequest1
* parameter[=].name = "amoxiciline-kind"
* parameter[+].resource = medicationRequest2
* parameter[=].name = "amoxiciline-volwassene"
* parameter[+].valueString = "Amoxicilline-clavulaanzuur Niet aangewezen"
* parameter[=].name = "amoxiciline-clavulaanzuur"
* parameter[+].valueString = "Cefalosporines Niet aangewezen"
* parameter[=].name = "cefalosporines"
* parameter[+].valueString = "Chinolonen Niet aangewezen"
* parameter[=].name = "chinolonen"
* parameter[+].valueString = "Macroliden Niet aangewezen"
* parameter[=].name = "macroliden"
* parameter[+].valueString = "Tetracyclines Niet aangewezen"
* parameter[=].name = "tetracyclines"

Instance: medicationRequest1
InstanceOf: MedicationRequest
* status = #active
* intent = #order
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/ssin"
* subject.identifier.value = "slfjel24sld"
* subject.identifier.value.extension.url = "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
* subject.identifier.value.extension.extension.url = "marker"
* subject.identifier.value.extension.extension.valueBoolean = true
* medicationCodeableConcept.coding = $sct#372687004

Instance: medicationRequest2
InstanceOf: MedicationRequest
* status = #active
* intent = #order
* subject.identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/ssin"
* subject.identifier.value = "slfjel24sld"
* subject.identifier.value.extension.url = "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-pseudonymization"
* subject.identifier.value.extension.extension.url = "marker"
* subject.identifier.value.extension.extension.valueBoolean = true
* medicationCodeableConcept.coding = $sct#372687004
