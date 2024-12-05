Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $sct = http://snomed.info/sct

Instance: getdatatocollect-data
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = patient-y
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad48"
* entry[+].resource = lower-abdominal-pain
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad01"
* entry[+].resource = frequent-urination-with-burning-sensation
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad02"

Instance: patient-y
InstanceOf: Patient
Description: "Patient Y"
Usage: #example
* active = true
* gender = #female
* deceasedBoolean = false

Instance: lower-abdominal-pain
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active "Active"
  * text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
  * text = "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
  * text = "Encounter Diagnosis"
* code = $sct#54586004 "Lower abdominal pain"
  * text = "Lower abdominal pain"
* subject = Reference(patient-y)
* onsetDateTime = "2024-10-13"

Instance: frequent-urination-with-burning-sensation
InstanceOf: Condition
Usage: #example
* clinicalStatus = $condition-clinical#active "Active"
  * text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
  * text = "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
  * text = "Encounter Diagnosis"
* code = $sct#28442001 "Polyuria"
  * text = "Frequent urination with burning sensation"
* subject = Reference(patient-y)
* onsetDateTime = "2024-10-13"