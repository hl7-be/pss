Alias: $cpg-activity-type-cs = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs

Instance: getdatatocollect-return
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = getdatatocollect-return-y
* entry[+].resource = collect-pregnancy-status
* entry[+].resource = collect-past-antibiotic-use
* entry[+].resource = collect-current-meds
* entry[+].resource = collect-nitrites
* entry[+].resource = collect-leukocytes

Instance: getdatatocollect-return-y
InstanceOf: RequestGroup
Usage: #inline
* status = #active
* intent = #proposal
* subject = Reference(Patient/Y)
* action[0]
  * textEquivalent = "Collect pregnancy status"
  * resource = Reference(collect-pregnancy-status)
* action[+]
  * textEquivalent = "Collect past antibiotic use"
  * resource = Reference(collect-past-antibiotic-use)
* action[+]
  * textEquivalent = "Collect current meds"
  * resource = Reference(collect-current-meds)
* action[+]
  * textEquivalent = "Collect nitrites"
  * resource = Reference(collect-nitrites)
* action[+]
  * textEquivalent = "Collect leukocytes"
  * resource = Reference(collect-leukocytes)

Instance: collect-pregnancy-status
InstanceOf: Task
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* contained
  * resourceType = "Questionnaire"
  * id = "collect-pregnancy-status"
  * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnaire"
* status = #active
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(Patient/Y)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference = Reference(collect-pregnancy-status)

Instance: collect-past-antibiotic-use
InstanceOf: Task
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* contained
  * resourceType = "Questionnaire"
  * id = "collect-past-antibiotic-use"
  * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnaire"
* status = #active
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(Patient/Y)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference = Reference(collect-past-antibiotic-use)

Instance: collect-current-meds
InstanceOf: Task
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* contained
  * resourceType = "Questionnaire"
  * id = "collect-current-meds"
  * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnaire"
* status = #active
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(Patient/Y)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference = Reference(collect-current-meds)

Instance: collect-nitrites
InstanceOf: Task
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* contained
  * resourceType = "Questionnaire"
  * id = "collect-nitrites"
  * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnaire"
* status = #active
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(Patient/Y)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference = Reference(collect-nitrites)

Instance: collect-leukocytes
InstanceOf: Task
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* contained
  * resourceType = "Questionnaire"
  * id = "collect-leukocytes"
  * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnaire"
* status = #active
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(Patient/Y)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference = Reference(collect-leukocytes)