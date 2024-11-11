RuleSet: proposeDiagnosisTask(scenario,patient,diagnosisId,diagnosisName,qsiDiagnosisCode)
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference({patient})
* input
  * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis - {diagnosisName}"
  * valueReference = Reference(proposed-diagnosis-{diagnosisId})


RuleSet: proposeDiagnosisCondition(scenario,patient,diagnosisId,diagnosisName,qsiDiagnosisCode)
* id = "proposed-diagnosis-{diagnosisId}"
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-condition"
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* category = $condition-category#problem-list-item
* code.coding[0] = $qsi#{qsiDiagnosisCode} "Ataxia, {diagnosisName}"
* subject = Reference({patient})
* onsetDateTime = "2024-10-13"


