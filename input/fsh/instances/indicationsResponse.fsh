Instance: indications-response
InstanceOf: Questionnaire
Usage: #example
* name = "IndicationsResponse"
* title = "List of Indications"
* status = #active
* description = "Questionnaire containing a list of indications for the patient"
* item.linkId = "1"
* item.text = "Indications"
* item.type = #choice
* item.required = true
* item.repeats = true
* item.answerOption[0].valueCoding = $sct#763597000 "Hereditary ataxia"
* item.answerOption[+].valueCoding = $sct#230233000 "Progressive cerebellar ataxia"