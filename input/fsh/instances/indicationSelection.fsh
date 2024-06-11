Instance: indication-selection
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* item.linkId = "1"
* item.text = "Indications"
* item.answer.valueCoding = $sct#763597000 "Hereditary ataxia"
* questionnaire = Canonical(indications-response)