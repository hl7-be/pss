Instance: radiology-step3
InstanceOf: Bundle
* type = #collection
* entry[+].fullUrl = "urn:uuid:7fb6d36c-c6b4-4e0a-a720-02844b1a2fa1"
* entry[=].resource = indication-selection
* entry[+].fullUrl = "urn:uuid:8b131548-af63-4fe1-bc27-9aa7ee858bf8"
* entry[=].resource = indications-response

Instance: indication-selection
InstanceOf: QuestionnaireResponse
Usage: #example
* id =  "8b131548-af63-4fe1-bc27-9aa7ee858bf8"
* status = #completed
* item.linkId = "1"
* item.text = "Indications"
* item.answer.valueCoding = $sct#763597000 "Hereditary ataxia"
* questionnaire = Canonical(indications-response)
