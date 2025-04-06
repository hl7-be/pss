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
  * linkId = "sp_excMand_knownPathogen_vag"
  * answer[0]
    * valueCoding = #pv_candida_vag

* item[+]
  * linkId = "pv_pregnant"
  * answer[0]
    * valueBoolean = false

* item[+]
  * linkId = "sp_exc_causalPathogen_ure"
  * answer[0]
    * valueCoding = #pv_causalPatChlamydia_ure

* item[+]
  * linkId = "sp_riskPatient_ast"
  * text = "Risicopatiënt"
  * answer[0]
    * valueBoolean = false

    * item[0]
      * linkId = "pv_compromisedImmuneSystem"
      * text = "Gecompromitteerd immuunsysteem"
      * answer[0]
        * valueBoolean = true