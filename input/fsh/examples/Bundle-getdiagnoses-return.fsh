Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $sct = http://snomed.info/sct
Alias: $cpg-activity-type-cs = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs

Instance: getdiagnoses-return
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = Inline-Instance-for-getdiagnoses-return-1
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad08"
* entry[+].resource = propose-pulmonary-embolism
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad09"
* entry[+].resource = propose-acute-coronary-syndrome
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad10"
* entry[+].resource = propose-pneumothorax
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad11"

Instance: Inline-Instance-for-getdiagnoses-return-1
InstanceOf: RequestGroup
Usage: #inline
* id = "getdiagnoses-return"
* status = #active
* intent = #proposal
* subject = Reference(X)
* action[0]
  * textEquivalent = "Potential diagnosis of Pulmonary Embolism"
  * resource = Reference(propose-pulmonary-embolism)
* action[+]
  * textEquivalent = "Potential diagnosis of Acute Coronary Syndrome"
  * resource.reference = "Task/propose-acute-coronary-syndrome"
* action[+]
  * textEquivalent = "Potential diagnosis of Pneumothorax"
  * resource = Reference(propose-pneumothorax)

Instance: propose-pulmonary-embolism
InstanceOf: Task
Usage: #example
* meta
//  * profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-proposediagnosistask"
//  * profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-task"
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(X)
* input
  * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
  * valueReference = Reference(proposed-diagnosis)

Instance: proposed-diagnosis
InstanceOf: Condition
Description: "Proposed diagnosis of Pulmonary Embolism"
Usage: #example

* id = "proposed-diagnosis"
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* code = $sct#59282003 "Pulmonary embolism"
  * text = "Pulmonary embolism"
* subject = Reference(X)
* onsetDateTime = "2024-10-13"


Instance: propose-acute-coronary-syndrome
InstanceOf: Task
Usage: #inline
* meta
//  * profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-proposediagnosistask"
//  * profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-task"
* contained
  * resourceType = "Condition"
  * id = "proposed-diagnosis"
  * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
  * clinicalStatus = $condition-clinical#active
  * verificationStatus = $condition-ver-status#provisional
  * category = $condition-category#problem-list-item
  * code = $sct#394659003 "Acute coronary syndrome"
    * text = "Acute coronary syndrome"
  * subject = Reference(X)
  * onsetDateTime = "2024-10-13"
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(X)
* input
  * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
  * valueReference = Reference(proposed-diagnosis)

Instance: propose-pneumothorax
InstanceOf: Task
Usage: #inline
* meta
//  * profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-proposediagnosistask"
//  * profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-task"
* contained
  * resourceType = "Condition"
  * id = "proposed-diagnosis"
  * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
  * clinicalStatus = $condition-clinical#active
  * verificationStatus = $condition-ver-status#provisional
  * category = $condition-category#problem-list-item
  * code = $sct#36118008 "Pneumothorax"
    * text = "Pneumothorax"
  * subject = Reference(X)
  * onsetDateTime = "2024-10-13"
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(X)
* input
  * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
  * valueReference.reference = "Condition/proposed-diagnosis"