Instance: indication-selection
InstanceOf: QuestionnaireResponse
Usage: #example
* identifier.value = "3192154"
* status = #completed
* item[0].linkId = "1"
* item[=].text = "Indication selected by EPD"
* item[=].answer.valueCoding = $qsi-indications#5000246 "Hoofdtrauma, ataxie"
* item[+].linkId = "2"
* item[=].text = "Intention"
* item[=].answer.valueCoding = $qsi-examinations#114054 "CT, hoofd, met iv-contrast"