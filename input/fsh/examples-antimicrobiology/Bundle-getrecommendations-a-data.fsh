Instance: getrecommendations-a-data
Title: "Antimicrobiology - S3 Get Recommendations - Request- 1. Bundle"
Description: "Antimicrobiology - S3 Get Recommendations - Request- 1. Bundle"
InstanceOf: PSSRequestBundle
Usage: #example
* type = #collection
* entry[0].resource = patient-a
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad48"
* entry[+].resource = vulvovaginitis
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad01"
* entry[+].resource = allergy-to-sulfonamide
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ada2"
* entry[+].resource = proposal-clindamycin
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ad0b"
* entry[+].resource = qresponse-v
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-2e639094ac02"


Instance: qresponse-v
InstanceOf: QuestionnaireResponse
Title: "Antimicrobiology - S3 Get Recommendations - Request- 1.1. QuestionnaireResponse"
Description: "Antimicrobiology - S3 Get Recommendations - Request- 1.1. QuestionnaireResponse"

Usage: #example
* status = #completed
* authored = "2023-10-18T19:20:20.913Z"
* questionnaire = Canonical(q-collect-information-a)
* subject = Reference(patient-a)

* item[0]
  * linkId = "conditions"
  * text = "Which conditions are you considering?"
  * item[0]
    * linkId = "pv_candida_vag"
    * text = "Candidiasis of vagina"
    * answer.valueBoolean = true
* item[+]
  * linkId = "pregnancy"
  * text = "Is the patient pregnant?"
  * answer.valueBoolean = true

// project must decide what do do with absent answers, or make them mandatory somehow (may be difficult to make multiple options mandatory)
// this is still the old example can you maybe upload the new example that we created yesterday

// * item[+]
//   * linkId = "sp_riskPatient_ast"
//   * text = "Risicopatiënt"
//   * answer
//     * valueBoolean = true
//     * item[0]
//       * linkId = "pv_compromisedImmuneSystem"
//       * text = "Gecompromitteerd immuunsysteem"
//       * answer.valueBoolean = true
// >>>>>>> Stashed changes
