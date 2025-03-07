ValueSet: PregnancyCodes
Title: "Pregnancy Codes"
Description: "Pregnancy Codes - used for EHRs to consider pregnancy status"
// Usage: #example
* ^status = #active
* http://hl7.org/fhir/sid/icd-10#Z33.1
* $sct#87527008
* $sct#127364007
* $sct#72892002


ValueSet: PathogenicAgents
Title: "Pathogenic Agents list"
Description: "Pathogenic agent codes"
// Usage: #example
* ^status = #active
* $sct#123 "HPV"
  * ^extension[CodeValueSet].valueCanonical = Canonical(PathogenicAgentHPV)
* $sct#234
* $sct#345




ValueSet: PathogenicAgentHPV
Title: "Pathogenic Agents for HPV"
Description: "Pathogenic agents associated with HPV"
// Usage: #example
* ^status = #active
* $sct#123 "HPV"
  * ^extension[CodeValueSet].valueCanonical = Canonical(PathogenicAgentHPV)
* $sct#234
* $sct#345






Instance: getdatatocollect-a-response
InstanceOf: PSSResponseBundle
Title: "Antimicrobiology - S2 Get data to collect - Response - 1. Bundle"
Description: "Antimicrobiology - S2 Get data to collect - Response - 1. Bundle"
Usage: #example
* identifier.value = "response1"
* timestamp = "2025-02-20T00:00:00Z"
* type = #collection
* entry[0].resource = getdatatocollect-a-response-group
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad4d"
* entry[+].resource = collect-information-a
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-11ef43a67755"
* entry[+].resource = q-collect-information-a
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad4c"
// * entry[+].resource = collect-patient_variables
// * entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad4b"
* entry[+].resource = patient-a
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094adff"


Instance: getdatatocollect-a-response-group
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
* subject = Reference(patient-a)
* action[0]
  * selectionBehavior = #at-most-one 
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
* for = Reference(patient-a)
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
InstanceOf: PSSDataAcquisitionForm
Usage: #example

* language = #nl-BE
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectinformationactivity"
* contained = condition-valueset
* status = #active
* item[0]
  * linkId = "conditions"
  * text = "Which conditions are you considering?"
  * type = #choice
  * repeats = true
  * answerValueSet = "#condition-valueset"

* item[+]
  * linkId = "pregnancy"
  * text = "Is the patient pregnant?"
  * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
    * extension[lang].valueCode = #fr-BE
    * extension[content].valueString = "La patiente est enceinte?"
  * code = $icd10#Z88.0
  * type = #boolean
  * extension[CodeValueSet].valueCanonical = Canonical(PregnancyCodes)
* item[+]
  * linkId = "recurrent"
  * text = "Recurrent?"
  * code = $sct#708126004
  * type = #boolean


// case 1: Known pathogen is optional
*  item[+]
  * linkId = "known_pathogen"
  * text = "Known Pathogen?"
  * type = #boolean


*  item[+]
  * linkId = "pathogen"
  * text = "Pathogen - please indicate"
  * type = #choice

  * answerValueSet = Canonical(PathogenicAgents)
  
  
//  ?? How to link values to valuesets of codes?
//  * answerOption


  * enableWhen
    * question = "known_pathogen"
    * operator = #=
    * answerBoolean = true


// Cleanup qa
// add unknown codesystem for QSI codes
// add nesting to action
// add documentation in action, not in note

// NOT add extension 



*  item[+]
  * linkId = "pathogen2"
  * text = "Pathogen - please indicate"
  * type = #choice

CodeSystem: PSSQSIProcedures
Title: "PSS-QSI procedure codes"
Description: "Procedure codes from the QSI system"
* ^url = $PSSQSIProcedures 
* ^content = #not-present
* ^experimental = false
* ^caseSensitive = true


CodeSystem: PSSQSIConditions
Title: "PSS-QSI condition codes"
Description: "Condition codes from the QSI system"
* ^url = $PSSQSIConditions
* ^content = #not-present
* ^experimental = false
* ^caseSensitive = true

