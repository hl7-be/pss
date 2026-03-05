Instance: qr-consent-example
Title: "Example of consent/statistics preference"
Description: "Example of how to provide consent and statistics preference in PSS."
InstanceOf: QuestionnaireResponse
Usage: #example
* questionnaire = Canonical(26491cef-c5c7-4c5f-b10b-839e938f6b3e)
* status = #completed
* authored = "2025-08-22T10:20:20Z"
* source.identifier.value = "some-hcp-role-id"
* item[0].linkId = "tc"
* item[=].item.linkId = "consent"
* item[=].item.answer.valueBoolean = true
* item[+].linkId = "anonymizationPreference"
* item[=].answer.valueCoding = #full-anon
