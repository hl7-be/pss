Instance: getdatatocollect-a-data
InstanceOf: Bundle
Title: "Antimicrobiology - S2 Get data to collect - Request - 2. - Bundle"
Description: "Antimicrobiology - S2 Get data to collect - Request - 2. Bundle"
Usage: #example
* type = #collection
* entry[0].resource = patient-v
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad48"
* entry[+].resource = vulvovaginitis
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad01"
* entry[+].resource = allergy-to-sulfonamide
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad02"
* entry[+].resource = proposal-clindamycin
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad12"



Instance: patient-v
InstanceOf: Patient
Title: "Antimicrobiology - S2 Get data to collect - Request - 1. Patient V"
Description: "Antimicrobiology - S2 Get data to collect - Request - 1 - Patient V"
Usage: #example
* active = true
* gender = #female
* deceasedBoolean = false
* birthDate = "1988-10-10"

Instance: vulvovaginitis
InstanceOf: Condition
Title: "Antimicrobiology - S2 Get data to collect - Request - 2.1. Diagnostic hypothesis - vulvovaginitis"
Description: "Antimicrobiology - S2 Get data to collect - Request - 2.1. Diagnostic hypothesis - vulvovaginitis"
Usage: #example
* id = "vulvovaginitis"
* clinicalStatus = $condition-clinical#active "Active"
  * text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
  * text = "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
  * text = "Encounter Diagnosis"
* code = $sct#54586004 "Lower abdominal pain"
  * text = "Lower abdominal pain"
* subject = Reference(patient-x)
* onsetDateTime = "2024-10-13"

Instance: allergy-to-sulfonamide
InstanceOf: AllergyIntolerance
Title: "Antimicrobiology - S2 Get data to collect - Request - 2.2. Known allergy - sulfonamide"
Description: "Antimicrobiology - S2 Get data to collect - Request - 2.2. Known allergy - sulfonamide"
Usage: #example
* code = $sct#91939003 "Allergy to sulfonamide"
* patient = Reference(patient-x)
* clinicalStatus = $allergy-clinical#active


Instance: proposal-clindamycin
InstanceOf: MedicationRequest
Title: "Antimicrobiology - S2 Get data to collect - Request - 2.3. Considered treatment - clindamycin"
Description: "Antimicrobiology - S2 Get data to collect - Request - 2.3. Considered treatment - clindamycin"
Usage: #example
//* code = $sct#28442001 "Allergy to sulfonamides"
* subject = Reference(patient-x)
* status = #active
* intent = #proposal
* medicationCodeableConcept = $atc#G01AA10