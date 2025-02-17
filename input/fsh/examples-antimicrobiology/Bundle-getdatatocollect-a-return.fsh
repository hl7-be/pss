ValueSet: PregnancyCodes
Title: "Pregnancy Codes"
Description: "Pregnancy Codes"
// Usage: #example
* ^status = #active
* http://hl7.org/fhir/sid/icd-10#Z33.1
* $sct#87527008
* $sct#127364007
* $sct#72892002


Extension: codeValueSet
Description: "Code ValueSet"
* value[x] only canonical


Instance: getdatatocollect-a-return
InstanceOf: Bundle
Title: "Antimicrobiology - S2 Get data to collect - Response - 1. Bundle"
Description: "Antimicrobiology - S2 Get data to collect - Response - 1. Bundle"
Usage: #example

* type = #collection
* entry[0].resource = getdatatocollect-a-return-group
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad4d"
* entry[+].resource = collect-information-a
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-11ef43a67755"
* entry[+].resource = q-collect-information-a
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad4c"
// * entry[+].resource = collect-patient_variables
// * entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad4b"
* entry[+].resource = patient-v
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094adff"


Instance: getdatatocollect-a-return-group
InstanceOf: RequestGroup
Title: "Antimicrobiology - S2 Get data to collect - Response - 1.1. RequestGroup"
Description: "Antimicrobiology - S2 Get data to collect - Response - 1.1. RequestGroup"
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
  * textEquivalent = "Collect information"
  * resource = Reference(collect-information-a)


Instance: collect-information-a
Title: "Antimicrobiology - S2 Get data to collect - Response - 1.2. Task for collecting information"
Description: "Antimicrobiology - S2 Get data to collect - Response - 1.2. Task for collecting information"
InstanceOf: Task
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(patient-x)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference.reference = Canonical(q-collect-information-a)


Instance: condition-valueset
InstanceOf: ValueSet
Usage: #example
Title: "Antimicrobiology - Vaginitis-related conditions"
Description: "Antimicrobiology - S2 Get data to collect - Response - 1.4. ValueSet"

* name = "Conditions"
* title = "Antimicrobiology - Vaginitis-related conditions"
* description = "Antimicrobiology - S2 Get data to collect - Response - 1.4. ValueSet"
* experimental = false
* status = #active
* expansion
  * contains[0]
    * system = "http://snomed.info/sct"
    * code = #419760006
    * display = "Bacterial vaginosis"
  * contains[+]
    * system = "http://snomed.info/sct"
    * code = #276877003
    * display = "Trichomonal vaginitis"
  * contains[+]
    * system = "http://snomed.info/sct"
    * code = #72934000
    * display = "Candidiasis of vagina"
  * timestamp = "2015-06-22T13:56:07Z"


Instance: q-collect-information-a
Title: "Antimicrobiology - S2 Get data to collect - Response - 1.3. Questionnaire"
Description: "Antimicrobiology - S2 Get data to collect - Response - 1.3. Questionnaire"
InstanceOf: Questionnaire
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectinformationactivity"
* contained[0] = condition-valueset
* contained[+] = PregnancyCodes
* status = #active
* item[0]
  * linkId = "conditions"
  * text = "Which conditions are you considering?"
  * type = #choice
  * repeats = true
  * answerValueSet = "#condition-valueset"
// * item[0]
//   * linkId = "conditions"
//   * text = "Which conditions are you considering?"
//   * type = #group
//   * repeats = false
//   * item[0]
//     * linkId = "condition1"
//     * text = "Bacterial vaginosis"
//     * type = #boolean
//     * code = http://snomed.info/sct#419760006
//   * item[+]
//     * linkId = "condition2"
//     * text = "Trichomonal vaginitis"
//     * type = #boolean
//     * code.coding[+] = http://snomed.info/sct#276877003
//   * item[+]
//     * linkId = "condition3"
//     * text = "Candidiasis of vagina"
//     * type = #boolean
//     * code.coding[+] = http://snomed.info/sct#72934000


* item[+]
  * linkId = "pregnancy"
  * text = "Is the patient pregnant?"
  * code = $icd10#Z88.0
  * type = #boolean
  * extension[codeValueSet].valueCanonical = Canonical(PregnancyCodes)
* item[+]
  * linkId = "recurrent"
  * text = "Recurrent?"
  * code = $sct#708126004
  * type = #boolean


