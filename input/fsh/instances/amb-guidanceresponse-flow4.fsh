Instance: guidanceresponse-flow4
InstanceOf: GuidanceResponse
* status = #success
* moduleCanonical = "http://www.example.com/Plandefinition/plandefinition-flow2"
* outputParameters = Reference(parameters1)

Instance: parameters1
InstanceOf: Parameters
* parameter[+].resource = medicationRequest1
* parameter[=].name = "amoxiciline-kind"
* parameter[=].extension.url = "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-score"
* parameter[=].extension.valueDecimal = 0.89
* parameter[+].resource = medicationRequest2
* parameter[=].name = "amoxiciline-volwassene"
* parameter[=].extension.url = "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-score"
* parameter[=].extension.valueDecimal = 0.89
* parameter[+].valueString = "Amoxicilline-clavulaanzuur Niet aangewezen"
* parameter[=].name = "amoxiciline-clavulaanzuur"
* parameter[=].extension.url = "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-score"
* parameter[=].extension.valueDecimal = 0.35
* parameter[+].valueString = "Cefalosporines Niet aangewezen"
* parameter[=].name = "cefalosporines"
* parameter[=].extension.url = "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-score"
* parameter[=].extension.valueDecimal = 0.35
* parameter[+].valueString = "Chinolonen Niet aangewezen"
* parameter[=].name = "chinolonen"
* parameter[=].extension.url = "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-score"
* parameter[=].extension.valueDecimal = 0.35
* parameter[+].valueString = "Macroliden Niet aangewezen"
* parameter[=].name = "macroliden"
* parameter[=].extension.url = "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-score"
* parameter[=].extension.valueDecimal = 0.35
* parameter[+].valueString = "Tetracyclines Niet aangewezen"
* parameter[=].name = "tetracyclines"
* parameter[=].extension.url = "https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-score"
* parameter[=].extension.valueDecimal = 0.35


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
* dosageInstruction.doseAndRate.doseRange.high.code = #mg/kg
* dosageInstruction.doseAndRate.doseRange.high.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.doseRange.high.value = 100
* dosageInstruction.doseAndRate.doseRange.low.code = #mg/kg
* dosageInstruction.doseAndRate.doseRange.low.system = "http://unitsofmeasure.org"
* dosageInstruction.doseAndRate.doseRange.low.value = 75
* dosageInstruction.timing.repeat.boundsDuration.unit = #d
* dosageInstruction.timing.repeat.boundsDuration.value = 5
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.period = 1

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
* dosageInstruction.doseAndRate.doseQuantity.code = #g
* dosageInstruction.doseAndRate.doseQuantity.value = 1
* dosageInstruction.doseAndRate.doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction.timing.repeat.boundsDuration.unit = #d
* dosageInstruction.timing.repeat.boundsDuration.value = 5
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.timing.repeat.period = 1
