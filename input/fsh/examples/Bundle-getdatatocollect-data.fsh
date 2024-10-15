Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $sct = http://snomed.info/sct

Instance: getdatatocollect-data
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = Y
* entry[+].resource = lower-abdominal-pain
* entry[+].resource = frequent-urination-with-burning-sensation

Instance: Y
InstanceOf: Patient
Usage: #inline
* active = true
* gender = #female
* birthDate = "1989-03-12"
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
* code = $sct#XXXXXX "Lower abdominal pain"
  * text = "Lower abdominal pain"
* subject = Reference(Y)
* onsetDateTime = "2024-10-13"

Instance: frequent-urination-with-burning-sensation
InstanceOf: Condition
Usage: #inline
* clinicalStatus = $condition-clinical#active "Active"
  * text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
  * text = "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
  * text = "Encounter Diagnosis"
* code = $sct#XXXXXX "Frequent urination with burning sensation"
  * text = "Frequent urination with burning sensation"
* subject = Reference(Y)
* onsetDateTime = "2024-10-13"