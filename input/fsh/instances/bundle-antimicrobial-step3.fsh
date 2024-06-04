Instance: antimicrobial-step3
InstanceOf: Bundle
* type = #collection
* entry[+].fullUrl = "urn:uuid:f4fe605a-7080-4b11-8af6-094cfb919afd"
* entry[=].resource = antimicrobial-indication-selection
* entry[+].fullUrl = "urn:uuid:e01102d7-5281-4842-9343-b37fc18608fc"
* entry[=].resource = requireddataforantimicro-response

Instance: antimicrobial-indication-selection
InstanceOf: QuestionnaireResponse
Usage: #inline
* status = #completed
* item[0].linkId = "indication"
* item[=].text = "Indication"
* item[=].answer.valueCoding = $sct#921000172108
* item[+].linkId = "sp_alertSignals"
* item[=].answer.valueBoolean = false
* item[+].linkId = "sp_isSeverelyIll"
* item[=].answer.valueBoolean = true
* item[+].linkId = "sp_riskPatientGroup"
* item[=].item[0].linkId = "sp_riskPatient"
* item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "sp_riskPatient_patientVariables"
* item[=].item[=].item[0].linkId = "pv_compromisedImmuneSystem_proposals"
* item[=].item[=].item[=].item.linkId = "pv_compromisedImmuneSystem_override"
* item[=].item[=].item[=].item.answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "pv_oncologyPatient_proposals"
* item[=].item[=].item[=].item[0].linkId = "pv_oncologyPatient"
* item[=].item[=].item[=].item[=].answer.valueCoding = $sct#763597000
* item[=].item[=].item[=].item[+].linkId = "pv_oncologyPatient_override"
* item[=].item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[=].item[+].linkId = "pv_historyAcuteJointRheumatism_proposals"
* item[=].item[=].item[=].item.linkId = "pv_historyAcuteJointRheumatism_override"
* item[=].item[=].item[=].item.answer.valueBoolean = false
* item[=].item[=].item[+].linkId = "pv_recentProthesticSurgery_proposals"
* item[=].item[=].item[=].item.linkId = "pv_recentProthesticSurgery_override"
* item[=].item[=].item[=].item.answer.valueBoolean = false
* item[=].item[=].item[+].linkId = "pv_heartValveDisease_proposals"
* item[=].item[=].item[=].item.linkId = "pv_heartValveDisease_override"
* item[=].item[=].item[=].item.answer.valueBoolean = false
* item[+].linkId = "sp_nonIgEMediatedPeniAllergy"
* item[=].answer.valueBoolean = false
* item[+].linkId = "sp_igEMediatedPeniAllergy"
* item[=].answer.valueBoolean = false
* questionnaire = Canonical(requireddataforantimicro-response)
