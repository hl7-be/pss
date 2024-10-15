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
* entry[+].resource = propose-pulmonary-embolism
* entry[+].resource = propose-acute-coronary-syndrome
* entry[+].resource = propose-pneumothorax

Instance: Inline-Instance-for-getdiagnoses-return-1
InstanceOf: RequestGroup
Usage: #inline
* id = "getdiagnoses-return"
* status = #active
* intent = #proposal
* subject = Reference(Patient/X)
* action[0]
  * textEquivalent = "Potential diagnosis of Pulmonary Embolism"
  * resource = Reference(propose-pulmonary-embolism)
* action[+]
  * textEquivalent = "Potential diagnosis of Acute Coronary Syndrome"
  * resource = Reference(propose-acute-coronary-syndrome)
* action[+]
  * textEquivalent = "Potential diagnosis of Pneumothorax"
  * resource = Reference(propose-pneumothorax)

Instance: propose-pulmonary-embolism
InstanceOf: Task
Usage: #inline
* meta
  * profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-proposediagnosistask"
  * profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-task"
* contained
  * resourceType = "Condition"
  * id = "proposed-diagnosis"
  * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
  * clinicalStatus = $condition-clinical#active
  * verificationStatus = $condition-ver-status#provisional
  * category = $condition-category#problem-list-item
  * code = $sct#XXXXXX "Pulmonary embolism"
    * text = "Pulmonary embolism"
  * subject.reference = "Patient/X"
  * onsetDateTime = "2024-10-13"
* status = #active
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(Patient/X)
* input
  * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
  * valueReference = Reference(proposed-diagnosis)

Instance: propose-acute-coronary-syndrome
InstanceOf: Task
Usage: #inline
* meta
  * profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-proposediagnosistask"
  * profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-task"
* contained
  * resourceType = "Condition"
  * id = "proposed-diagnosis"
  * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
  * clinicalStatus = $condition-clinical#active
  * verificationStatus = $condition-ver-status#provisional
  * category = $condition-category#problem-list-item
  * code = $sct#XXXXXX "Acute coronary syndrome"
    * text = "Acute coronary syndrome"
  * subject.reference = "Patient/X"
  * onsetDateTime = "2024-10-13"
* status = #active
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(Patient/X)
* input
  * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
  * valueReference = Reference(proposed-diagnosis)

Instance: propose-pneumothorax
InstanceOf: Task
Usage: #inline
* meta
  * profile[0] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-proposediagnosistask"
  * profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-task"
* contained
  * resourceType = "Condition"
  * id = "proposed-diagnosis"
  * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
  * clinicalStatus = $condition-clinical#active
  * verificationStatus = $condition-ver-status#provisional
  * category = $condition-category#problem-list-item
  * code = $sct#XXXXXX "Pneumothorax"
    * text = "Pneumothorax"
  * subject.reference = "Patient/X"
  * onsetDateTime = "2024-10-13"
* status = #active
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(Patient/X)
* input
  * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
  * valueReference = Reference(proposed-diagnosis)