ValueSet: PregnancyCodes
Title: "Pregnancy Codes"
Description: "Pregnancy Codes - used for EHRs to consider pregnancy status"
// Usage: #example
* ^status = #active
* $icd10#Z33.1
* $sct#87527008
* $sct#127364007
* $sct#72892002


ValueSet: CompromisedImmuneSystemCodes
Title: "CompromisedImmuneSystem Codes"
Description: "CompromisedImmuneSystem Codes"
* ^status = #active
* $icpc2#B90
* $icpc2#B72
* $icd10#D70
* $icd10#D71
* $sct#234532001
* $sct#62479008
* $sct#445945000


ValueSet: OncologyPatientCodes
Title: "OncologyPatient Codes"
Description: "OncologyPatient Codes"
* ^status = #active
* $icpc2#R84
* $icpc2#R85
* $icd10#C00
* $icd10#C01
* $sct#363505006
* $sct#363429002
* $sct#363353009


ValueSet: CandidaCodes
Title: "Candida Codes"
Description: "Candida Codes"
// Usage: #example
* ^status = #active
* $sct#72934000
* $sct#72605008
* $sct#1085006
* $sct#240706001


ValueSet: BacterialCodes
Title: "Bacterial Codes"
Description: "Bacterial Codes"
// Usage: #example
* ^status = #active
* $sct#419760006


ValueSet: TrichomonasCodes
Title: "Trichomonas Codes"
Description: "Trichomonas Codes"
// Usage: #example
* ^status = #active
* $sct#276877003
* $sct#35089004


ValueSet: ChlamydiaCodes
Title: "Chlamydia Codes"
Description: "Chlamydia Codes"
// Usage: #example
* ^status = #active
* $icd10#A56.0
* $icd10#A56.2
* $sct#236683007
* $sct#186729003


ValueSet: GonokokCodes
Title: "Gonokok Codes"
Description: "Gonokok Codes"
// Usage: #example
* ^status = #active
* $icd10#A54.0
* $icd10#A54.9
* $sct#236682002


ValueSet: MycoplasmaCodes
Title: "Mycoplasma Codes"
Description: "Mycoplasma Codes"
// Usage: #example
* ^status = #active
* $sct#240594008


ValueSet: OtherCodes
Title: "Other Codes"
Description: "Other Codes"
// Usage: #example
* ^status = #active
* $sct#197903003
* $sct#30116001
* $sct#236684001
* $sct#197850006


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
  * linkId = "sp_excMand_knownPathogen_vag"
  * text = "Oorzakelijke kiem vulvo-vaginitis"
  * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
    * extension[lang].valueCode = #fr-BE
    * extension[content].valueString = "Germe causal vulvo vaginite"
  * type = #group
  * repeats = false
  * required = true

  * item[0]
    * linkId = "pv_candida_vag"
    * text = "Candida vaginitis"
    * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Vaginite à candida"
    * type = #boolean
    * extension[CodeValueSet].valueCanonical = Canonical(CandidaCodes)

  * item[0]
    * linkId = "pv_bacterial_vag"
    * text = "Bacteriële vaginose"
    * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Vaginose bactérienne"
    * type = #boolean
    * extension[CodeValueSet].valueCanonical = Canonical(BacterialCodes)

  * item[0]
    * linkId = "pv_trichomonas_vag"
    * text = "Trichomonas vaginalis"
    * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Trichomonas vaginalis"
    * type = #boolean
    * extension[CodeValueSet].valueCanonical = Canonical(TrichomonasCodes)


* item[+]
  * linkId = "pv_pregnant"
  * text = "Zwangerschap"
  * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
    * extension[lang].valueCode = #fr-BE
    * extension[content].valueString = "Grossesse"
  * type = #boolean
  * extension[CodeValueSet].valueCanonical = Canonical(PregnancyCodes)
  

//* item[+]
//  * linkId = "recurrent"
//  * text = "Recurrent?"
//  * code = $sct#708126004
//  * type = #boolean


// case 1: Known pathogen is optional
*  item[+]
  * linkId = "sp_exc_causalPathogen_ure"
  * text = "Oorzakelijke kiem Urethritis"
  * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
    * extension[lang].valueCode = #fr-BE
    * extension[content].valueString = "Germe causal Urétrite"
  * type = #boolean

  * enableWhen
     * question = "sp_exc_causalPathogen_ure"
     * operator = #=
     * answerBoolean = true

  *  item[+]
    * linkId = "pv_causalPatChlamydia_ure"
    * text = "Chlamydia"
    * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Chlamydia"
    * type = #boolean
    * extension[CodeValueSet].valueCanonical = Canonical(ChlamydiaCodes)

  *  item[+]
    * linkId = "pv_causalPatGonokok_ure"
    * text = "Gonokok"
    * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Gonocoque"
    * type = #boolean
    * extension[CodeValueSet].valueCanonical = Canonical(GonokokCodes)

  *  item[+]
    * linkId = "pv_causalPatMycoplasma_ure"
    * text = "Mycoplasma genitalium"
    * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Mycoplasma genitalium"
    * type = #boolean
    * extension[CodeValueSet].valueCanonical = Canonical(MycoplasmaCodes)

  *  item[+]
    * linkId = "pv_causalPatOther_ure"
    * text = "Andere"
    * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Autres"
    * type = #boolean
    * extension[CodeValueSet].valueCanonical = Canonical(OtherCodes)


*  item[+]
  * linkId = "pathogenBL"
  * text = "Pathogen - please select one from the options"
  * type = #group

  * enableWhen
    * question = "known_pathogen"
    * operator = #=
    * answerBoolean = true

* item[+]
  * linkId = "sp_riskPatient_ast"
  * text = "Risicopatiënt"
  * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
     * extension[lang].valueCode = #fr-BE
     * extension[content].valueString = "Patient à risque"
  * type = #boolean

  * item[0]
    * linkId = "pv_compromisedImmuneSystem"
    * text = "Gecompromitteerd immuunsysteem"
    * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Immunosuppression / système immunitaire déprimé"
    * type = #boolean
    * extension[CodeValueSet].valueCanonical = Canonical(CompromisedImmuneSystemCodes)

  * item[+]
    * linkId = "pv_oncologyPatient"
    * text = "Oncologische patiënt"
    * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
      * extension[lang].valueCode = #fr-BE
      * extension[content].valueString = "Patient oncologique"
    * type = #boolean
    * extension[CodeValueSet].valueCanonical = Canonical(OncologyPatientCodes)

// Cleanup qa
// add unknown codesystem for QSI codes
// add nesting to action
// add documentation in action, not in note

// NOT add extension 


//Why are these codesystems here? They are specific for Radiology
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