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
* $sct#234 "Gonokocus"
* $sct#345 "Other"




ValueSet: PathogenicAgentHPV
Title: "Pathogenic Agents for HPV"
Description: "Pathogenic agents associated with HPV"
// Usage: #example
* ^status = #active
* $sct#HPV123 "HPV suspected infection"
  * ^extension[CodeValueSet].valueCanonical = Canonical(PathogenicAgentHPV)
* $sct#HPV234 "Confirmed HPV infection"
* $sct#HPV345 "Lab results HPV +"






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


// Instance: condition-valueset
// InstanceOf: ValueSet
// Usage: #example
// Title: "Antimicrobiology - Vaginitis-related conditions"
// Description: "Antimicrobiology - S2 Get data to collect - Response - 1.4. ValueSet"

// * name = "Conditions"
// * title = "Antimicrobiology - Vaginitis-related conditions"
// * description = "Antimicrobiology - S2 Get data to collect - Response - 1.4. ValueSet"
// * experimental = false
// * status = #active
// * expansion
//   * contains[0]
//     * system = "http://snomed.info/sct"
//     * code = #419760006
//     * display = "Bacterial vaginosis"
//   * contains[+]
//     * system = "http://snomed.info/sct"
//     * code = #276877003
//     * display = "Trichomonal vaginitis"
//   * contains[+]
//     * system = "http://snomed.info/sct"
//     * code = #72934000
//     * display = "Candidiasis of vagina"
//   * timestamp = "2015-06-22T13:56:07Z"


Instance: q-collect-information-a
Title: "Antimicrobiology - S2 Get data to collect - Response - 1.3. Questionnaire"
Description: "Antimicrobiology - S2 Get data to collect - Response - 1.3. Questionnaire"
InstanceOf: PSSDataAcquisitionForm
Usage: #example

* status = #active
* language = #nl-BE

//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectinformationactivity"

//* contained = condition-valueset
* item[0]
  * linkId = "conditions"
  * text = "Which conditions are you considering?"
  * type = #group
  * repeats = false
  * required = true

  * item[0]
    * linkId = "pv_candida_vag"
    * code = $sct#72934000
    * text = "Candidiasis of vagina"
    * type = #boolean

  * item[0]
    * linkId = "pv_bacterial_vag"
    * code = $sct#419760006
    * text = "Bacterial vaginosis"
    * type = #boolean

  * item[0]
    * linkId = "pv_trichomonas_vag"
    * code = $sct#276877003
    * text = "Trichomonal vaginitis"
    * type = #boolean















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


// *  item[+]
//   * linkId = "pathogen"
//   * text = "Pathogen - please indicate"
//   * type = #choice

//   * answerValueSet = Canonical(PathogenicAgents)

//   * enableWhen
//     * question = "known_pathogen"
//     * operator = #=
//     * answerBoolean = true



*  item[+]
  * linkId = "pathogenBL"
  * text = "Pathogen - please select one from the options"
  * type = #group

  * enableWhen
    * question = "known_pathogen"
    * operator = #=
    * answerBoolean = true

  *  item[+]
    * linkId = "pathogenBLHPV"
    * text = "Pathogen - HPV"
    * type = #boolean
    * code = $sct#123 "HPV"
    * extension[CodeValueSet].valueCanonical = Canonical(PathogenicAgentHPV)

  *  item[+]
    * linkId = "pathogenBLGONO"
    * text = "Pathogen - GONO"
    * type = #boolean
    * code = $sct#234 "GONO"
    * extension[CodeValueSet].valueCanonical = Canonical(PathogenicAgentHPV)

  *  item[+]
    * linkId = "pathogenBLOTHER"
    * text = "Pathogen - OTHER"
    * type = #boolean
    * code = $sct#345 "OTHER"
    * extension[CodeValueSet].valueCanonical = Canonical(PathogenicAgentHPV)




* item[+]
  * linkId = "sp_riskPatient_ast"
  * text = "Risicopatiënt"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/translation"
      * extension[0]
        * url = "lang"
        * valueCode = #fr-BE
      * extension[+]
        * url = "content"
        * valueString = "Patient à risque"
  * type = #boolean
  * item[0]
    * linkId = "pv_compromisedImmuneSystem"
    * text = "Gecompromitteerd immuunsysteem"
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/translation"
        * extension[0]
          * url = "lang"
          * valueCode = #fr-BE
        * extension[+]
          * url = "content"
          * valueString = "Immunosuppression / système immunitaire déprimé"
    * type = #boolean
    * extension
      * url = "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/codeValueSet"
      * valueCanonical = "#CompromisedImmuneSystemCodes"
  * item[+]
    * linkId = "pv_oncologyPatient"
    * text = "Oncologische patiënt"
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/translation"
        * extension[0]
          * url = "lang"
          * valueCode = #fr-BE
        * extension[+]
          * url = "content"
          * valueString = "Patient oncologique"
    * type = #boolean
    * extension
      * url = "https://www.ehealth.fgov.be/standards/fhir/medication/StructureDefinition/codeValueSet"
      * valueCanonical = "#OncologyPatientCodes"








// Cleanup qa
// add unknown codesystem for QSI codes
// add nesting to action
// add documentation in action, not in note

// NOT add extension 



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






























ValueSet: CompromisedImmuneSystemCodes
Id: CompromisedImmuneSystemCodes
Title: "CompromisedImmuneSystem Codes"
Description: "CompromisedImmuneSystem Codes"
* ^url = "https://www.ehealth.fgov.be/standards/fhir/medication/ValueSet/CompromisedImmuneSystemCodes"
* ^status = #active
* $icpc2#B90
* $icpc2#B72
* Icd10#D70
* Icd10#D71
* SNOMED_CT#234532001
* SNOMED_CT#62479008
* SNOMED_CT#445945000



ValueSet: OncologyPatientCodes
Id: OncologyPatientCodes
Title: "OncologyPatient Codes"
Description: "OncologyPatient Codes"
* ^url = "https://www.ehealth.fgov.be/standards/fhir/medication/ValueSet/OncologyPatientCodes"
* ^status = #active
* $icpc2#R84
* $icpc2#R85
* Icd10#C00
* Icd10#C01
* SNOMED_CT#363505006
* SNOMED_CT#363429002
* SNOMED_CT#363353009