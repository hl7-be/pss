Instance: getdatatocollect-a-data
InstanceOf: PSSRequestBundle
Title: "Antimicrobiology - S2 Get data to collect - Request - 1. - Bundle"
Description: "Antimicrobiology - S2 Get data to collect - Request - 1. Bundle"
Usage: #example
* type = #collection
* entry[0].resource = 30551ce1-5a28-4356-b684-2e639094ad48
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad48"
* entry[+].resource = 30551ce1-5a28-4356-b684-2e639094ad01
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad01"
* entry[+].resource = 30551ce1-5a28-4356-b684-2e639094ad02
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad02"
* entry[+].resource = 30551ce1-5a28-4356-b684-2e639094ad12
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad12"



Instance: 30551ce1-5a28-4356-b684-2e639094ad01
InstanceOf: Condition
Title: "Antimicrobiology - S2 Get data to collect - Request - 1.1. Diagnostic hypothesis - vulvovaginitis"
Description: "Antimicrobiology - S2 Get data to collect - Request - 1.1. Diagnostic hypothesis - vulvovaginitis"
Usage: #example
* id = "30551ce1-5a28-4356-b684-2e639094ad01"
* clinicalStatus = $condition-clinical#active "Active"
  * text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
  * text = "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
  * text = "Encounter Diagnosis"
* code = $sct#54586004 "Lower abdominal pain"
  * text = "Lower abdominal pain"
* subject = Reference(30551ce1-5a28-4356-b684-2e639094ad48)
* onsetDateTime = "2024-10-13"

Instance: 30551ce1-5a28-4356-b684-2e639094ad02
InstanceOf: AllergyIntolerance
Title: "Antimicrobiology - S2 Get data to collect - Request - 1.2. Known allergy - sulfonamide"
Description: "Antimicrobiology - S2 Get data to collect - Request - 1.2. Known allergy - sulfonamide"
Usage: #example
* code = $sct#91939003 "Allergy to sulfonamide"
* patient = Reference(30551ce1-5a28-4356-b684-2e639094ad48)
* clinicalStatus = $allergy-clinical#active


Instance: 30551ce1-5a28-4356-b684-2e639094ad12
InstanceOf: MedicationRequest
Title: "Antimicrobiology - S2 Get data to collect - Request - 1.3. Considered treatment - clindamycin"
Description: "Antimicrobiology - S2 Get data to collect - Request - 1.3. Considered treatment - clindamycin"
Usage: #example
//* code = $sct#28442001 "Allergy to sulfonamides"
* subject = Reference(30551ce1-5a28-4356-b684-2e639094ad48)
* status = #active
* intent = #proposal
* medicationCodeableConcept = $atc#G01AA10