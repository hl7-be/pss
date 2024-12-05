Instance: careplan-antimicrobial-step2
InstanceOf: CarePlan
* contained[+] = antimicrobial-questionnaire-task
* contained[+] = temp-patient
//* contained[+] = requireddataforantimicro-response
* status = #active
* intent = #order
* subject = Reference(temp-patient)
* activity.reference = Reference(antimicrobial-questionnaire-task)


Instance: antimicrobial-questionnaire-task
InstanceOf: Task
Usage: #inline
* focus = Reference(requireddataforantimicro-response)
* status = #requested
* intent = #order

Instance: requireddataforantimicro-response
InstanceOf: Questionnaire
Usage: #inline
* title = "Required Data for Antimicro"
* status = #active
* subjectType = #Patient
* item[0].linkId = "indication"
* item[=].type = #choice
* item[=].answerOption.valueCoding = $sct#921000172108
* item[+].linkId = "sp_alertSignals"
* item[=].type = #boolean
* item[+].linkId = "sp_isSeverelyIll"
* item[=].type = #boolean
* item[+].linkId = "sp_riskPatientGroup"
* item[=].type = #group
* item[=].item[0].linkId = "sp_riskPatient"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "sp_riskPatient_patientVariables"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "pv_compromisedImmuneSystem_proposals"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "pv_compromisedImmuneSystem"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icpc2#B90
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $icd10#D70
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#234532001
* item[=].item[=].item[=].item[+].linkId = "pv_compromisedImmuneSystem_override"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "pv_oncologyPatient_proposals"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "pv_oncologyPatient"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icpc2#R84
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $icd10#C00-C97
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#763597000
* item[=].item[=].item[=].item[+].linkId = "pv_oncologyPatient_override"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "pv_historyAcuteJointRheumatism_proposals"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "pv_historyAcuteJointRheumatism"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icd10#M02.8
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#404684003
* item[=].item[=].item[=].item[+].linkId = "pv_historyAcuteJointRheumatism_override"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "pv_recentProthesticSurgery_proposals"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "pv_recentProthesticSurgery"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icpc2#A89
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $icd10#M96.6
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#67270000
* item[=].item[=].item[=].item[+].linkId = "pv_recentProthesticSurgery_override"
* item[=].item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "pv_heartValveDisease_proposals"
* item[=].item[=].item[=].type = #group
* item[=].item[=].item[=].item[0].linkId = "pv_heartValveDisease"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icpc2#K83
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $icd10#I34
* item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#44241007
* item[=].item[=].item[=].item[+].linkId = "pv_heartValveDisease_override"
* item[=].item[=].item[=].item[=].type = #boolean
* item[+].linkId = "sp_nonIgEMediatedPeniAllergy"
* item[=].type = #boolean
* item[+].linkId = "sp_igEMediatedPeniAllergy"
* item[=].type = #boolean


