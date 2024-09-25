Instance: indications-response
InstanceOf: Questionnaire
Usage: #example
* name = "IndicationsResponse"
* title = "List of structured Indications"
* status = #active
* description = "Questionnaire containing a list of structured indications for the patient"
* item[0].linkId = "1"
* item[=].text = "Indications"
* item[=].type = #choice
* item[=].required = true
* item[=].repeats = true
* item[=].answerOption[0].valueCoding = $qsi-indications#3074220 "Ataxie, vermoedelijke beroerte"
* item[=].answerOption[+].valueCoding = $qsi-indications#3074221 "Ataxie, vermoedelijke infectie"
* item[=].answerOption[+].valueCoding = $qsi-indications#5000246 "Hoofdtrauma, ataxie"
* item[=].answerOption[+].valueCoding = $qsi-indications#3074219 "Ataxie, langzaam progressief of van lange duur"
* item[=].answerOption[+].valueCoding = $qsi-indications#3074222 "Ataxie, post-hoofdtrauma"
* item[=].answerOption[+].valueCoding = $qsi-indications#3073678 "Dementie, prionziekte vermoed (Creutzfeldt-Jakob)"
* item[+].linkId = "2"
* item[=].text = "Examination"
* item[=].type = #choice
* item[=].required = true
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].extension.valueBoolean = true
* item[=].initial.valueCoding = $qsi-examinations#114054 "CT, hoofd, met iv-contrast"