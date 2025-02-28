Instance: radiology-getdiagnoses-return
Title: "Radiology - S1 Get Diagnoses - Response - 1. Bundle"
Description: "Radiology - S1 Get Diagnoses - Response - 1. Bundle"
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = Inline-Instance-for-radiology-getdiagnoses-return
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad08"
* entry[+].resource = propose-stroke
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad09"
* entry[+].resource = propose-infection
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad10"
* entry[+].resource = propose-head-trauma
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad11"
* entry[+].resource = propose-slow-progression-ataxia
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad12"
* entry[+].resource = propose-post-trauma-ataxia
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-3e639094ad13"

Instance: Inline-Instance-for-radiology-getdiagnoses-return
Title: "Radiology - S1 Get Diagnoses - Response - 1.1. RequestGroup with options"
Description: "Radiology - S1 Get Diagnoses - Response - 1.1. RequestGroup with options"
InstanceOf: RequestGroup
Usage: #example
// * id = "getdiagnoses-return"
* status = #active
* intent = #proposal
* subject = Reference(patient-r)
* action[0]
  * textEquivalent = "Potential diagnosis of Stroke"
  * resource = Reference(propose-stroke)
* action[+]
  * textEquivalent = "Potential diagnosis of infection"
  * resource = Reference(propose-infection)
* action[+]
  * textEquivalent = "Potential diagnosis of Head trauma"
  * resource = Reference(propose-head-trauma)
* action[+]
  * textEquivalent = "Potential diagnosis of Slow progression or chronic ataxia"
  * resource = Reference(propose-slow-progression-ataxia)
* action[+]
  * textEquivalent = "Potential diagnosis of Post head trauma ataxia"
  * resource = Reference(propose-post-trauma-ataxia)



Instance: propose-stroke
Title: "Radiology - S1 Get Diagnoses - Response - 1.2. Task to propose diagnosis - Stroke"
Description: "Radiology - S1 Get Diagnoses - Response - 1.2. Task to propose diagnosis - Stroke"
InstanceOf: Task
Usage: #example
* insert proposeDiagnosisTask(patient-r,stroke)

Instance: proposed-diagnosis-stroke
Title: "Radiology - S1 Get Diagnoses - Response - 1.3. Diagnosis - Stroke"
Description: "Radiology - S1 Get Diagnoses - Response - 1.3. Diagnosis - Stroke"
InstanceOf: Condition
Usage: #example
* insert proposeDiagnosisCondition(patient-r,stroke,Stroke,3074220)




Instance: propose-infection
Title: "Radiology - S1 Get Diagnoses - Response - 1.4. Task to propose diagnosis - Infection"
Description: "Radiology - S1 Get Diagnoses - Response - 1.4. Task to propose diagnosis - Infection"
InstanceOf: Task
Usage: #example
* insert proposeDiagnosisTask(patient-r,infection)

Instance: proposed-diagnosis-infection
Title: "Radiology - S1 Get Diagnoses - Response - 1.5. Diagnosis - Infection"
Description: "Radiology - S1 Get Diagnoses - Response - 1.5. Diagnosis - Infection"
InstanceOf: Condition
Usage: #example
* insert proposeDiagnosisCondition(patient-r,infection,Infection,3074221)



Instance: propose-head-trauma
Title: "Radiology - S1 Get Diagnoses - Response - 1.6. Task to propose diagnosis - Head trauma"
Description: "Radiology - S1 Get Diagnoses - Response - 1.6. Task to propose diagnosis - Head trauma"
InstanceOf: Task
Usage: #example
* insert proposeDiagnosisTask(patient-r,head-trauma)

Instance: proposed-diagnosis-head-trauma
Title: "Radiology - S1 Get Diagnoses - Response - 1.7. Diagnosis - Head trauma"
Description: "Radiology - S1 Get Diagnoses - Response - 1.7. Diagnosis - Head trauma"
InstanceOf: Condition
Usage: #example
* insert proposeDiagnosisCondition(patient-r,head-trauma,Head Trauma,5000246)




Instance: propose-slow-progression-ataxia
Title: "Radiology - S1 Get Diagnoses - Response - 1.8. Task to propose diagnosis - Chronic or slow progression-ataxia"
Description: "Radiology - S1 Get Diagnoses - Response - 1.8 Task to propose diagnosis - Chronic or slow progression-ataxia"
InstanceOf: Task
Usage: #example
* insert proposeDiagnosisTask(patient-r,slow-progression-ataxia)

Instance: proposed-diagnosis-slow-progression-ataxia
Title: "Radiology - S1 Get Diagnoses - Response - 1.9. Diagnosis - Chronic or slow progression-ataxia"
Description: "Radiology - S1 Get Diagnoses - Response - 1.9. Diagnosis - Chronic or slow progression-ataxia"
InstanceOf: Condition
Usage: #example
* insert proposeDiagnosisCondition(patient-r,slow-progression-ataxia, Slow-progression-ataxia,3074219)



Instance: propose-post-trauma-ataxia
Title: "Radiology - S1 Get Diagnoses - Response - 1.9. Task to propose diagnosis - Post-trauma ataxia"
Description: "Radiology - S1 Get Diagnoses - Response - 1.9. Task to propose diagnosis - Post-trauma ataxia"
InstanceOf: Task
Usage: #example
* insert proposeDiagnosisTask(patient-r,post-trauma-ataxia)

Instance: proposed-diagnosis-post-trauma-ataxia
Title: "Radiology - S1 Get Diagnoses - Response - 1.10. Diagnosis - Post-trauma ataxia"
Description: "Radiology - S1 Get Diagnoses - Response - 1.10. Diagnosis - Post-trauma ataxia"
InstanceOf: Condition
Usage: #example
* insert proposeDiagnosisCondition(patient-r,post-trauma-ataxia,Post-trauma ataxia,3074222)


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

