
Instance: getdatatocollect-return2
InstanceOf: Bundle
Title: "Antibiology - S2 Get data to collect - Response - 1. Bundle"
Description: "Antibiology - S2 Get data to collect - Response - 1. Bundle"
Usage: #example
* type = #collection
* entry[0].resource = getdatatocollect-return2-v
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad4d"
* entry[+].resource = q-collect-information2
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad4c"
// * entry[+].resource = collect-patient_variables
// * entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad4b"
* entry[+].resource = patient-v
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094adff"


Instance: getdatatocollect-return2-v
InstanceOf: RequestGroup
Title: "Antibiology - S2 Get data to collect - Response - 1.1. RequestGroup"
Description: "Antibiology - S2 Get data to collect - Response - 1.1. RequestGroup"
Usage: #example
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
* subject = Reference(patient-v)
* action[0]
  * textEquivalent = "Collect pregnancy status"
  * resource = Reference(q-collect-information2)


Instance: collect-information2
Title: "Antibiology - S2 Get data to collect - Response - 1.2. Task for collecting information"
Description: "Antibiology - S2 Get data to collect - Response - 1.2. Task for collecting information"
InstanceOf: Task
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(patient-y)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference.reference = Canonical(q-collect-information2)




// Instance: contained-valueset
// InstanceOf: ValueSet
// Usage: #example
// * status = #active
// * expansion
//   * contains[0]
//     * code = http://snomed.info/sct#419760006
//     * display = "Bacterial vaginosis"
//   * contains[+]
//     * code = http://snomed.info/sct#276877003
//     * display = "Trichomonal vaginitis"
//   * contains[+]
//     * code = http://snomed.info/sct#72934000
//     * display = "Candidiasis of vagina"
//   * timestamp = "2015-06-22T13:56:07Z"


Instance: q-collect-information2
Title: "Antibiology - S2 Get data to collect - Response - 1.3. Questionnaire"
Description: "Antibiology - S2 Get data to collect - Response - 1.3. Questionnaire"
InstanceOf: Questionnaire
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectinformationactivity"
//* contained = contained-valueset
* status = #active
// * item[0]
//   * linkId = "conditions"
//   * text = "Which conditions are you considering?"
//   * type = #choice
//   * repeats = true
//   * answerValueSet = "#contained-valueset"
* item[0]
  * linkId = "conditions"
  * text = "Which conditions are you considering?"
  * type = #group
  * repeats = false
  * item[0]
    * linkId = "condition1"
    * text = "Bacterial vaginosis"
    * type = #boolean
    * code = http://snomed.info/sct#419760006
  * item[+]
    * linkId = "condition2"
    * text = "Trichomonal vaginitis"
    * type = #boolean
    * code = http://snomed.info/sct#276877003
  * item[+]
    * linkId = "condition3"
    * text = "Candidiasis of vagina"
    * type = #boolean
    * code = http://snomed.info/sct#72934000


* item[+]
  * linkId = "pregnancy"
  * text = "Is the patient pregnant?"
  * code = $icd10#Z88.0
  * type = #boolean
* item[+]
  * linkId = "recurrent"
  * text = "Recurrent?"
  * code = $sct#708126004
  * type = #boolean

