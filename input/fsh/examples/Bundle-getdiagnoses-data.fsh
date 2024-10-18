Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $sct = http://snomed.info/sct

Instance: getdiagnoses-data
Description: "Get Diagnoses Data"
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = X
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad03"
* entry[+].resource = bmi
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad04"
* entry[+].resource = shortness-of-breath
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad05"
* entry[+].resource = chest-pain
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad06"
* entry[+].resource = impaired-kidney-function
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad07"

Instance: X
InstanceOf: Patient
Description: "Patient X"

Usage: #example
* active = true
* gender = #male
* birthDate = "1972-05-24"
* deceasedBoolean = false

Instance: bmi
InstanceOf: Observation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
  * text = "Vital Signs"
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
  * text = "BMI"
* subject = Reference(X)
* effectiveDateTime = "2024-10-13"
* valueQuantity = 35 'kg/m2' "kg/m2"

Instance: chest-pain
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active "Active"
  * text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
  * text = "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
  * text = "Encounter Diagnosis"
* code = $sct#274664007 "Chest pain on breathing"
  * text = "Chest pain that worsens with deep breathing"
* subject = Reference(X)
* onsetDateTime = "2024-10-13"

Instance: impaired-kidney-function
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active "Active"
  * text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
  * text = "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
  * text = "Encounter Diagnosis"
* code = $sct#723188008 "Renal insufficiency (disorder)"
  * text = "Impaired kidney function"
* subject = Reference(X)
* onsetDateTime = "2024-10-13"