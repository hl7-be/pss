Alias: $cpg-activity-type-cs = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs

Instance: getdatatocollect-return
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = getdatatocollect-return-y
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4d"
* entry[+].resource = collect-pregnancy-status
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4c"
* entry[+].resource = collect-past-antibiotic-use
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4b"
* entry[+].resource = collect-current-meds
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4a"
* entry[+].resource = collect-nitrites
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad49"
* entry[+].resource = collect-leukocytes
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad48"
* entry[+].resource = patient-y
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094adff"


Instance: getdatatocollect-return-y
InstanceOf: RequestGroup
Usage: #inline
// * contained[+] = collect-pregnancy-status
// * contained[+] = collect-past-antibiotic-use
// * contained[+] = collect-current-meds
// * contained[+] = collect-nitrites
// * contained[+] = collect-leukocytes
// * contained[+] = q-collect-pregnancy-status
// * contained[+] = q-collect-past-antibiotic-use
// * contained[+] = q-collect-current-meds
// * contained[+] = q-collect-nitrites
// * contained[+] = q-collect-leukocytes
* status = #active
* intent = #proposal
* subject = Reference(patient-y)
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
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(patient-y)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference.reference = Canonical(q-collect-pregnancy-status)

Instance: collect-past-antibiotic-use
InstanceOf: Task
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(patient-y)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference.reference = Canonical(q-collect-past-antibiotic-use)

Instance: collect-current-meds
InstanceOf: Task
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
//  * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnaire"
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(patient-y)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference.reference = Canonical(q-collect-current-meds)

Instance: collect-nitrites
InstanceOf: Task
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(patient-y)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference.reference = Canonical(q-collect-nitrites)

Instance: collect-leukocytes
InstanceOf: Task
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
//  * meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnaire"
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(patient-y)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference.reference = Canonical(q-collect-leukocytes)










Instance: q-collect-pregnancy-status
InstanceOf: Questionnaire
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectinformationactivity"
* status = #active
* item[0]
  * linkId = "1"
  * text = "Are you pregnant?"
  * type = #boolean
  * required = true
  * item[+]
    * linkId = "2"
    * text = "LMP?"
    * type = #date
    * required = true




Instance: q-collect-past-antibiotic-use
InstanceOf: Questionnaire
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectinformationactivity"
* status = #active
* item[0]
  * linkId = "1"
  * text = "Have you taken antibiotics in the past 3 months?"
  * type = #boolean
  * required = true



Instance: q-collect-current-meds
InstanceOf: Questionnaire
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectinformationactivity"
* status = #active
* item[0]
  * linkId = "1"
  * text = "What medications are you currently taking?"
  * type = #string
  * required = true



Instance: q-collect-nitrites
InstanceOf: Questionnaire
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectinformationactivity"
* status = #active
* item[0]
  * linkId = "1"
  * text = "Nitrites in urine?"
  * type = #boolean
  * required = true


Instance: q-collect-leukocytes
InstanceOf: Questionnaire
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectinformationactivity"
* status = #active
* item[0]
  * linkId = "1"
  * text = "Leukocytes in urine?"
  * type = #boolean
  * required = true
