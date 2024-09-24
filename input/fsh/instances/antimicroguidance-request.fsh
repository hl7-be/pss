Instance: antimicroguidance-request
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* item.linkId = "questionnaire"
* item.item[0].linkId = "indication"
* item.item[=].text = "Indication"
* item.item[=].answer.valueCoding = $sct#921000172108 "Acute keelpijn"
* item.item[+].linkId = "sp_alertSignals"
* item.item[=].answer.valueBoolean = false
* item.item[+].linkId = "sp_isSeverelyIll"
* item.item[=].answer.valueBoolean = true
* item.item[+].linkId = "sp_riskPatientGroup"
* item.item[=].item[0].linkId = "sp_riskPatient"
* item.item[=].item[=].answer.valueBoolean = false
* item.item[=].item[+].linkId = "sp_riskPatient_patientVariables"
* item.item[=].item[=].item[0].linkId = "pv_compromisedImmuneSystem_proposals"
* item.item[=].item[=].item[=].item.linkId = "pv_compromisedImmuneSystem_override"
* item.item[=].item[=].item[=].item.answer.valueBoolean = true
* item.item[=].item[=].item[+].linkId = "pv_oncologyPatient_proposals"
* item.item[=].item[=].item[=].item[0].linkId = "pv_oncologyPatient"
* item.item[=].item[=].item[=].item[=].answer.valueCoding = $sct#763597000
* item.item[=].item[=].item[=].item[+].linkId = "pv_oncologyPatient_override"
* item.item[=].item[=].item[=].item[=].answer.valueBoolean = false
* item.item[=].item[=].item[+].linkId = "pv_historyAcuteJointRheumatism_proposals"
* item.item[=].item[=].item[=].item.linkId = "pv_historyAcuteJointRheumatism_override"
* item.item[=].item[=].item[=].item.answer.valueBoolean = false
* item.item[=].item[=].item[+].linkId = "pv_recentProthesticSurgery_proposals"
* item.item[=].item[=].item[=].item.linkId = "pv_recentProthesticSurgery_override"
* item.item[=].item[=].item[=].item.answer.valueBoolean = false
* item.item[=].item[=].item[+].linkId = "pv_heartValveDisease_proposals"
* item.item[=].item[=].item[=].item.linkId = "pv_heartValveDisease_override"
* item.item[=].item[=].item[=].item.answer.valueBoolean = false
* item.item[+].linkId = "sp_nonIgEMediatedPeniAllergy"
* item.item[=].answer.valueBoolean = false
* item.item[+].linkId = "sp_igEMediatedPeniAllergy"
* item.item[=].answer.valueBoolean = false