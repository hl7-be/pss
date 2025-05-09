Instance: radiology-getdiagnoses-response
Title: "Radiology - S1 Get Diagnoses - Response - 1. Bundle"
Description: "Radiology - S1 Get Diagnoses - Response - 1. Bundle"
InstanceOf: PSSResponseBundle
Usage: #example
* type = #collection
* identifier.value = "5870540"
* timestamp = "2025-02-20T00:00:00Z"
* entry[0].resource = 30551ce1-5a28-4356-b684-3e639094ad08
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad08"
* entry[+].resource = 1cdd5aab-1d4d-4965-bbe1-c851698d07f0
* entry[=].fullUrl = "urn:uuid:1cdd5aab-1d4d-4965-bbe1-c851698d07f0"
* entry[+].resource = 287e8fe2-3e83-44bd-92e7-962bc90b6d67
* entry[=].fullUrl = "urn:uuid:287e8fe2-3e83-44bd-92e7-962bc90b6d67"
* entry[+].resource = db2698ba-cd0b-4c08-b57c-868ab5b95af6
* entry[=].fullUrl = "urn:uuid:db2698ba-cd0b-4c08-b57c-868ab5b95af6"
* entry[+].resource = 5f3aafb8-643c-4ed5-ad54-199939e7b2d1
* entry[=].fullUrl = "urn:uuid:5f3aafb8-643c-4ed5-ad54-199939e7b2d1"
* entry[+].resource = 30551ce1-5a28-4356-b684-3e639094ad11
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad11"
* entry[+].resource = 30551ce1-5a28-4356-b684-4e639094ad11
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-4e639094ad11"
* entry[+].resource = cfdfee5b-1db1-43fe-af72-4ea54b4e1a16
* entry[=].fullUrl = "urn:uuid:cfdfee5b-1db1-43fe-af72-4ea54b4e1a16"
* entry[+].resource = 72d3ced6-5133-4042-931e-04284c9f4283
* entry[=].fullUrl = "urn:uuid:72d3ced6-5133-4042-931e-04284c9f4283"
* entry[+].resource = 54aad964-ad8a-4985-8ff1-3b09d707ee1e
* entry[=].fullUrl = "urn:uuid:54aad964-ad8a-4985-8ff1-3b09d707ee1e"
* entry[+].resource = b90ca57a-1ae5-4ff6-8dce-48488660ea65
* entry[=].fullUrl = "urn:uuid:b90ca57a-1ae5-4ff6-8dce-48488660ea65"


Instance: 30551ce1-5a28-4356-b684-3e639094ad08
Title: "Radiology - S1 Get Diagnoses - Response - 1.1. RequestGroup with options"
Description: "Radiology - S1 Get Diagnoses - Response - 1.1. RequestGroup with options"
InstanceOf: RequestGroup
Usage: #example
// * id = "getdiagnoses-response"
* status = #active
* intent = #proposal
* subject = Reference(30551ce1-5a28-4356-b684-3e639094ad48)
* action[0]
  * selectionBehavior = #one-or-more
  * action[0]
    * textEquivalent = "Potential diagnosis of Ataxia, stroke suspected"
    * resource = Reference(1cdd5aab-1d4d-4965-bbe1-c851698d07f0)
  * action[+]
    * textEquivalent = "Potential diagnosis of Ataxia, infection suspected"
    * resource = Reference(db2698ba-cd0b-4c08-b57c-868ab5b95af6)
    * action[+]
    * textEquivalent = "Potential diagnosis of Head trauma, ataxia"
    * resource = Reference(30551ce1-5a28-4356-b684-3e639094ad11)
  * action[+]
    * textEquivalent = "Potential diagnosis of Ataxia, slowly progressive or long duration"
    * resource = Reference(cfdfee5b-1db1-43fe-af72-4ea54b4e1a16)
  * action[+]
    * textEquivalent = "Potential diagnosis of Ataxia, post head trauma"
    * resource = Reference(54aad964-ad8a-4985-8ff1-3b09d707ee1e)


Instance: 1cdd5aab-1d4d-4965-bbe1-c851698d07f0
Title: "Radiology - S1 Get Diagnoses - Response - 1.2. Task to propose diagnosis - Stroke"
Description: "Radiology - S1 Get Diagnoses - Response - 1.2. Task to propose diagnosis - Stroke"
InstanceOf: Task
Usage: #example
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(Patient/30551ce1-5a28-4356-b684-3e639094ad48)
* input.type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* input.valueReference = Reference(287e8fe2-3e83-44bd-92e7-962bc90b6d67)

Instance: 287e8fe2-3e83-44bd-92e7-962bc90b6d67
Title: "Radiology - S1 Get Diagnoses - Response - 1.3. Diagnosis - Stroke"
Description: "Radiology - S1 Get Diagnoses - Response - 1.3. Diagnosis - Stroke"
InstanceOf: Condition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* code = PSSQSIConditions#3074220 "Ataxia, stroke suspected"
* subject = Reference(Patient/30551ce1-5a28-4356-b684-3e639094ad48)
* onsetDateTime = "2025-03-03T13:24:10+01:00"


Instance: db2698ba-cd0b-4c08-b57c-868ab5b95af6
Title: "Radiology - S1 Get Diagnoses - Response - 1.4. Task to propose diagnosis - Infection"
Description: "Radiology - S1 Get Diagnoses - Response - 1.4. Task to propose diagnosis - Infection"
InstanceOf: Task
Usage: #example
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(Patient/30551ce1-5a28-4356-b684-3e639094ad48)
* input.type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* input.valueReference = Reference(5f3aafb8-643c-4ed5-ad54-199939e7b2d1)

Instance: 5f3aafb8-643c-4ed5-ad54-199939e7b2d1
Title: "Radiology - S1 Get Diagnoses - Response - 1.5. Diagnosis - Infection"
Description: "Radiology - S1 Get Diagnoses - Response - 1.5. Diagnosis - Infection"
InstanceOf: Condition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* code = PSSQSIConditions#3074221 "Ataxia, infection suspected"
* subject = Reference(Patient/30551ce1-5a28-4356-b684-3e639094ad48)
* onsetDateTime = "2025-03-03T13:24:10+01:00"


Instance: 30551ce1-5a28-4356-b684-3e639094ad11
Title: "Radiology - S1 Get Diagnoses - Response - 1.6. Task to propose diagnosis - Head trauma"
Description: "Radiology - S1 Get Diagnoses - Response - 1.6. Task to propose diagnosis - Head trauma"
InstanceOf: Task
Usage: #example
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(Patient/30551ce1-5a28-4356-b684-3e639094ad48)
* input.type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* input.valueReference = Reference(30551ce1-5a28-4356-b684-4e639094ad11)

Instance: 30551ce1-5a28-4356-b684-4e639094ad11
Title: "Radiology - S1 Get Diagnoses - Response - 1.7. Diagnosis - Head trauma"
Description: "Radiology - S1 Get Diagnoses - Response - 1.7. Diagnosis - Head trauma"
InstanceOf: Condition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* code = PSSQSIConditions#5000246 "Head trauma, ataxia"
* subject = Reference(Patient/30551ce1-5a28-4356-b684-3e639094ad48)
* onsetDateTime = "2025-03-03T13:24:10+01:00"


Instance: cfdfee5b-1db1-43fe-af72-4ea54b4e1a16
Title: "Radiology - S1 Get Diagnoses - Response - 1.8. Task to propose diagnosis - Chronic or slow progression-ataxia"
Description: "Radiology - S1 Get Diagnoses - Response - 1.8 Task to propose diagnosis - Chronic or slow progression-ataxia"
InstanceOf: Task
Usage: #example
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(Patient/30551ce1-5a28-4356-b684-3e639094ad48)
* input.type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* input.valueReference = Reference(72d3ced6-5133-4042-931e-04284c9f4283)

Instance: 72d3ced6-5133-4042-931e-04284c9f4283
Title: "Radiology - S1 Get Diagnoses - Response - 1.9. Diagnosis - Chronic or slow progression-ataxia"
Description: "Radiology - S1 Get Diagnoses - Response - 1.9. Diagnosis - Chronic or slow progression-ataxia"
InstanceOf: Condition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* code = PSSQSIConditions#3074219 "Ataxia, slowly progressive or long duration"
* subject = Reference(Patient/30551ce1-5a28-4356-b684-3e639094ad48)
* onsetDateTime = "2025-03-03T13:24:10+01:00"


Instance: 54aad964-ad8a-4985-8ff1-3b09d707ee1e
Title: "Radiology - S1 Get Diagnoses - Response - 1.10. Task to propose diagnosis - Post-trauma ataxia"
Description: "Radiology - S1 Get Diagnoses - Response - 1.10. Task to propose diagnosis - Post-trauma ataxia"
InstanceOf: Task
Usage: #example
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(Patient/30551ce1-5a28-4356-b684-3e639094ad48)
* input.type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* input.valueReference = Reference(b90ca57a-1ae5-4ff6-8dce-48488660ea65)

Instance: b90ca57a-1ae5-4ff6-8dce-48488660ea65
Title: "Radiology - S1 Get Diagnoses - Response - 1.11. Diagnosis - Post-trauma ataxia"
Description: "Radiology - S1 Get Diagnoses - Response - 1.11. Diagnosis - Post-trauma ataxia"
InstanceOf: Condition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* code = PSSQSIConditions#3074222 "Ataxia, post head trauma"
* subject = Reference(Patient/30551ce1-5a28-4356-b684-3e639094ad48)
* onsetDateTime = "2025-03-03T13:24:10+01:00"


// Instance: propose-stroke
// Title: "Radiology - S3 - Get Diagnoses - Task to propose diagnosis - Stroke"
// Description: "Radiology - S3 - Get Diagnoses - Task to propose diagnosis - Stroke"
// InstanceOf: Task
// Usage: #example
// * status = #requested
// * intent = #proposal
// * code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
// * for = Reference(X)
// * input
//   * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis - stroke"
//   * valueReference = Reference(proposed-diagnosis-stroke)


// Instance: proposed-diagnosis-stroke
// Title: "Radiology - S3 - Get Diagnoses - Diagnosis - Stroke"
// Description: "Radiology - S3 - Get Diagnoses - Diagnosis - Stroke"
// InstanceOf: Condition
// Description: "Proposed diagnosis of Stroke"
// Usage: #example

// * id = "proposed-diagnosis-stroke"
// * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
// * clinicalStatus = $condition-clinical#active
// * verificationStatus = $condition-ver-status#provisional
// * category = $condition-category#problem-list-item
// * code.coding[0] = $qsi#3074220 "Stroke"
// * code.coding[0] = $sct#230690007 "Stroke"
// * subject = Reference(X)
// * onsetDateTime = "2024-10-13"


// Instance: propose-infection
// Title: "Radiology - S3 - Get Diagnoses - Task to propose diagnosis - Infection"
// Description: "Radiology - S3 - Get Diagnoses - Task to propose diagnosis - Infection"
// InstanceOf: Task
// Usage: #example
// * status = #requested
// * intent = #proposal
// * code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
// * for = Reference(X)
// * input
//   * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis - infection"
//   * valueReference = Reference(proposed-diagnosis-infection)


// Instance: proposed-diagnosis-infection
// Title: "Radiology - S3 - Get Diagnoses - Diagnosis - Infection"
// Description: "Radiology - S3 - Get Diagnoses - Diagnosis - Infection"
// InstanceOf: Condition
// Description: "Proposed diagnosis of infection"
// Usage: #example
// * id = "proposed-diagnosis-infection"
// * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
// * clinicalStatus = $condition-clinical#active
// * verificationStatus = $condition-ver-status#provisional
// * category = $condition-category#problem-list-item
// * code.coding[0] = $qsi#3074221 "Invection"
// * subject = Reference(X)
// * onsetDateTime = "2024-10-13"


// Instance: propose-head-trauma
// Title: "Radiology - S3 - Get Diagnoses - Task to propose diagnosis - Head Trauma"
// Description: "Radiology - S3 - Get Diagnoses - Task to propose diagnosis - Head Trauma"
// InstanceOf: Task
// Usage: #example
// * status = #requested
// * intent = #proposal
// * code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
// * for = Reference(X)
// * input
//   * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis - head trauma"
//   * valueReference = Reference(proposed-diagnosis-head-trauma)


// Instance: proposed-diagnosis-head-trauma
// Title: "Radiology - S3 - Get Diagnoses - Diagnosis - Hed trauma"
// Description: "Radiology - S3 - Get Diagnoses - Diagnosis - Head trauma"
// InstanceOf: Condition
// Description: "Proposed diagnosis of head trauma"
// Usage: #example
// * id = "proposed-diagnosis-head-trauma"
// * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
// * clinicalStatus = $condition-clinical#active
// * verificationStatus = $condition-ver-status#provisional
// * category = $condition-category#problem-list-item
// * code.coding[0] = $qsi#5000246 "Head trauma"
// * subject = Reference(X)
// * onsetDateTime = "2024-10-13"


// Instance: propose-slow-progression-ataxia
// Title: "Radiology - S3 - Get Diagnoses - Task to propose diagnosis - Chronic or slow progression-ataxia"
// Description: "Radiology - S3 - Get Diagnoses - Task to propose diagnosis - Chronic or slow progression-ataxia"
// InstanceOf: Task
// Usage: #example
// * status = #requested
// * intent = #proposal
// * code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
// * for = Reference(X)
// * input
//   * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis - slow progression or chronic ataxia"
//   * valueReference = Reference(proposed-diagnosis-slow-progression-ataxia)


// Instance: proposed-diagnosis-slow-progression-ataxia
// Title: "Radiology - S3 - Get Diagnoses - Diagnosis - Chronic or slow progression-ataxia"
// Description: "Radiology - S3 - Get Diagnoses - Diagnosis - Chronic or slow progression-ataxia"
// InstanceOf: Condition
// Description: "Proposed diagnosis of slow progression or chronic ataxia"
// Usage: #example
// * id = "proposed-diagnosis-slow-progression-ataxia"
// * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
// * clinicalStatus = $condition-clinical#active
// * verificationStatus = $condition-ver-status#provisional
// * category = $condition-category#problem-list-item
// * code.coding[0] = $qsi#3074219 "Ataxia, slow progression or chronic"
// * subject = Reference(X)
// * onsetDateTime = "2024-10-13"


// Instance: propose-post-trauma-ataxia
// Title: "Radiology - S3 - Get Diagnoses - RequestGroup with options"
// Description: "Radiology - S3 - Get Diagnoses - RequestGroup with options"
// InstanceOf: Task
// Usage: #example
// * status = #requested
// * intent = #proposal
// * code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
// * for = Reference(X)
// * input
//   * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis - post-trauma-ataxia"
//   * valueReference = Reference(proposed-diagnosis-post-trauma-ataxia)


// Instance: proposed-diagnosis-post-trauma-ataxia
// Title: "Radiology - S3 - Get Diagnoses - RequestGroup with options"
// Description: "Radiology - S3 - Get Diagnoses - RequestGroup with options"
// InstanceOf: Condition
// Description: "Proposed diagnosis of slow progression or post-trauma-ataxia"
// Usage: #example
// * id = "proposed-diagnosis-post-trauma-ataxia"
// * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
// * clinicalStatus = $condition-clinical#active
// * verificationStatus = $condition-ver-status#provisional
// * category = $condition-category#problem-list-item
// * code.coding[0] = $qsi#3074222 "Ataxia, post head-trauma"
// * subject = Reference(X)
// * onsetDateTime = "2024-10-13"