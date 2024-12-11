Instance: getrecommendations-a-data
Title: "Antibiology - S3 Get Recommendations - Request- 1. Bundle"
Description: "Antibiology - S3 Get Recommendations - Request- 1. Bundle"
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].resource = patient-v
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
Title: "Antibiology - S3 Get Recommendations - Request- 1.1. QuestionnaireResponse"
Description: "Antibiology - S3 Get Recommendations - Request- 1.1. QuestionnaireResponse"

Usage: #example
* status = #completed
* authored = "2023-10-18T19:20:20.913Z"
* questionnaire = Canonical(q-collect-information-a)
* subject = Reference(patient-v)

// * item[+]
//   * linkId = "conditions"
//   * answer[+].valueCoding = http://snomed.info/sct#419760006
* item[0]
  * linkId = "conditions"
  * item[0]
    * linkId = "condition1"
    * answer.valueBoolean = true

* item[+]
  * linkId = "pregnancy"
  * answer.valueBoolean = true
// project must decide what do do with absent answers, or make them mandatory somehow (may be difficult to make multiple options mandatory)




