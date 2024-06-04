Instance: careplan-antimicrobial-step4
InstanceOf: CarePlan
* contained[+] = antimicrobial-serviceRequest1
* contained[+] = antimicrobial-serviceRequest2
* contained[+] = antimicrobial-serviceRequest3
* contained[+] = antimicrobial-serviceRequest4
* contained[+] = antimicrobial-serviceRequest5
* contained[+] = temp-patient
* status = #active
* intent = #order
* subject = Reference(temp-patient)
* activity[+].reference = Reference(antimicrobial-serviceRequest1)
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "score"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueInteger = 1
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "evidenceSummary"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueString = "Kind: 10 mg/kg per dag in 1 gift gedurende 3 dagen. Volwassene: 500 mg per dag in 1 gift gedurende 3 dagen."



* activity[+].reference = Reference(antimicrobial-serviceRequest2)
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "score"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueInteger = 3
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "evidenceSummary"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueString = "Niet aangewezen"




* activity[+].reference = Reference(antimicrobial-serviceRequest3)
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "score"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueInteger = 3
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "evidenceSummary"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueString = "Niet aangewezen"



* activity[+].reference = Reference(antimicrobial-serviceRequest4)
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "score"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueInteger = 3
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "evidenceSummary"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueString = "Niet aangewezen"


* activity[+].reference = Reference(antimicrobial-serviceRequest5)
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "score"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueInteger = 3
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][+].extension[code].valueCodeableConcept.text = "evidenceSummary"
* activity[=].extension[https://www.ehealth.fgov.be/standards/fhir/pss/StructureDefinition/be-ext-pss-metadata][=].extension[value].valueString = "Niet aangewezen"



Instance: antimicrobial-serviceRequest1
InstanceOf: MedicationRequest
* subject = Reference(temp-patient)
* medicationCodeableConcept.text = "Azithromycine"
* status = #active
* intent = #option

Instance: antimicrobial-serviceRequest2
InstanceOf: MedicationRequest
* subject = Reference(temp-patient)
* medicationCodeableConcept.text = "Chinolonen"
* status = #active
* intent = #option

Instance: antimicrobial-serviceRequest3
InstanceOf: MedicationRequest
* subject = Reference(temp-patient)
* medicationCodeableConcept.text = "Cefalosporines"
* status = #active
* intent = #option


Instance: antimicrobial-serviceRequest4
InstanceOf: MedicationRequest
* subject = Reference(temp-patient)
* medicationCodeableConcept.text = "Tetracyclines"
* status = #active
* intent = #option

Instance: antimicrobial-serviceRequest5
InstanceOf: MedicationRequest
* subject = Reference(temp-patient)
* medicationCodeableConcept.text = "Macroliden"
* status = #active
* intent = #option



