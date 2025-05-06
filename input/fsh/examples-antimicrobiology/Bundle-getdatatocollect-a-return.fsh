ValueSet: PregnancyCodes
Title: "Pregnancy Codes"
Description: "Pregnancy Codes - used for EHRs to consider pregnancy status"
// Usage: #example
* ^experimental = true
* insert SctCopyright
* ^status = #active
* $icd10#Z33.1
* $sct#87527008
* $sct#127364007
* $sct#72892002


ValueSet: CompromisedImmuneSystemCodes
Title: "CompromisedImmuneSystem Codes"
Description: "CompromisedImmuneSystem Codes"
* ^experimental = true
* insert SctCopyright
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
* ^experimental = true
* insert SctCopyright
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
* ^experimental = true
* insert SctCopyright
* ^status = #active
* $sct#72934000
* $sct#72605008
* $sct#1085006
* $sct#240706001
 
 
ValueSet: BacterialCodes
Title: "Bacterial Codes"
Description: "Bacterial Codes"
// Usage: #example
* ^experimental = true
* insert SctCopyright
* ^status = #active
* $sct#419760006
 
 
ValueSet: TrichomonasCodes
Title: "Trichomonas Codes"
Description: "Trichomonas Codes"
// Usage: #example
* ^experimental = true
* insert SctCopyright
* ^status = #active
* $sct#276877003
* $sct#35089004


ValueSet: ChlamydiaCodes
Title: "Chlamydia Codes"
Description: "Chlamydia Codes"
// Usage: #example
* ^experimental = true
* insert SctCopyright
* ^status = #active
* $icd10#A56.0
* $icd10#A56.2
* $sct#236683007
* $sct#186729003


ValueSet: GonokokCodes
Title: "Gonokok Codes"
Description: "Gonokok Codes"
// Usage: #example
* ^experimental = true
* insert SctCopyright
* ^status = #active
* $icd10#A54.0
* $icd10#A54.9
* $sct#236682002


ValueSet: MycoplasmaCodes
Title: "Mycoplasma Codes"
Description: "Mycoplasma Codes"
// Usage: #example
* ^experimental = true
* insert SctCopyright
* ^status = #active
* $sct#240594008


ValueSet: OtherCodes
Title: "Other Codes"
Description: "Other Codes"
// Usage: #example
* ^experimental = true
* insert SctCopyright
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
* entry[+].resource = 30551ce1-5a28-4356-b684-11ef43a67755
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-11ef43a67755"
* entry[+].resource = 30551ce1-5a28-4356-b684-2e639094ad4c
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad4c"
// * entry[+].resource = collect-patient_variables
// * entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad4b"
* entry[+].resource = 30551ce1-5a28-4356-b684-2e639094ad48
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad48"


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
* subject = Reference(30551ce1-5a28-4356-b684-2e639094ad48)
* action[0]
  * selectionBehavior = #at-most-one 
  * action[0]
    * textEquivalent = "Collect information"
    * resource = Reference(30551ce1-5a28-4356-b684-11ef43a67755)


Instance: 30551ce1-5a28-4356-b684-11ef43a67755
Title: "Antimicrobiology - S2 Get data to collect - Response - 1.2. Task for collecting information"
Description: "Antimicrobiology - S2 Get data to collect - Response - 1.2. Task for collecting information"
InstanceOf: CPGQuestionnaireTask
Usage: #example
//* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* status = #requested
* intent = #proposal
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(30551ce1-5a28-4356-b684-2e639094ad48)
* input
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueReference.reference = Canonical(30551ce1-5a28-4356-b684-2e639094ad4c)


Instance: 30551ce1-5a28-4356-b684-2e639094ad4c
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
  * type = #choice
  * repeats = false
  * required = true

  * answerOption[0]
    * valueCoding = #pv_candida_vag "Candida vaginitis"
      * display.extension[http://hl7.org/fhir/StructureDefinition/translation]
        * extension[lang].valueCode = #fr-BE
        * extension[content].valueString = "Vaginite à candida"
    * extension[CodeValueSet].valueCanonical = Canonical(CandidaCodes)

  * answerOption[+]
    * valueCoding = #pv_trichomonas_vag "Trichomonas vaginalis"
      * display.extension[http://hl7.org/fhir/StructureDefinition/translation]
        * extension[lang].valueCode = #fr-BE
        * extension[content].valueString = "Trichomonas vaginalis"
    * extension[CodeValueSet].valueCanonical = Canonical(TrichomonasCodes)

  * answerOption[+]
    * valueCoding = #pv_bacterial_vag "Bacteriële vaginose"
      * display.extension[http://hl7.org/fhir/StructureDefinition/translation]
        * extension[lang].valueCode = #fr-BE
        * extension[content].valueString = "Vaginose bactérienne"
    * extension[CodeValueSet].valueCanonical = Canonical(BacterialCodes)


// PV can be a question (boolean or other) or a answerOption 
// We always wish for a SNOMED code to be associated with each PV - but that may not happen
// TBC: We may want to have a display and/or translation in the questionnaire that is different from the SNOMED displays

// For most questions, we have the optional .code element that can contain a SNOMED code
// For AnswerOption, we can have an extension that contains the SNOMED code

// Other options considered were:
// Option 2: No SNOMED: Each option has an internal code, no additional SNOMED code needed
//      use answerOption = #1 "pv_candida_vag", answerOption.coding.code is the linkId
// Option 3: SNOMED code first: Each option has an internal SNOMED code
//      use answerOption = $sct#72934000 "Candida-infectie van vagina", NEW EXTENSION that contains the linkId
//      note that the display may be following SNOMED and we may want another display


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

*  item[+]
  * linkId = "sp_exc_causalPathogen_ure"
  * text = "Oorzakelijke kiem Urethritis"
  * text.extension[http://hl7.org/fhir/StructureDefinition/translation]
    * extension[lang].valueCode = #fr-BE
    * extension[content].valueString = "Germe causal Urétrite"
  * type = #choice
  * repeats = false

  * answerOption[0]
    * valueCoding = #pv_causalPatChlamydia_ure "Chlamydia"
      * display.extension[http://hl7.org/fhir/StructureDefinition/translation]
        * extension[lang].valueCode = #fr-BE
        * extension[content].valueString = "Chlamydia"
    * extension[CodeValueSet].valueCanonical = Canonical(ChlamydiaCodes)

  * answerOption[+]
    * valueCoding = #pv_causalPatGonokok_ure "Gonokok"
      * display.extension[http://hl7.org/fhir/StructureDefinition/translation]
        * extension[lang].valueCode = #fr-BE
        * extension[content].valueString = "Gonocoque"
    * extension[CodeValueSet].valueCanonical = Canonical(GonokokCodes)

  * answerOption[+]
    * valueCoding = #pv_causalPatMycoplasma_ure "Mycoplasma genitalium"
      * display.extension[http://hl7.org/fhir/StructureDefinition/translation]
        * extension[lang].valueCode = #fr-BE
        * extension[content].valueString = "Mycoplasma genitalium"
    * extension[CodeValueSet].valueCanonical = Canonical(MycoplasmaCodes)

  * answerOption[+]
    * valueCoding = #pv_causalPatOther_ure "Andere"
      * display.extension[http://hl7.org/fhir/StructureDefinition/translation]
        * extension[lang].valueCode = #fr-BE
        * extension[content].valueString = "Autres"
    * extension[CodeValueSet].valueCanonical = Canonical(OtherCodes)


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
