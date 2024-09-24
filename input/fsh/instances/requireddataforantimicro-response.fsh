Instance: requireddataforantimicro-response
InstanceOf: Questionnaire
Usage: #example
* name = "requiredDataResponse"
* title = "List of required data (Acute Keelpijn)"
* status = #active
* description = "Questionnaire containing a list of required data for the patient"
* item.item[0].linkId = "sp_alertSignals_ast"
* item.item[=].type = #boolean
* item.item[=].text = "alertSignals"
* item.item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].text.extension[=].extension[+].url = "content"
* item.item[=].text.extension[=].extension[=].valueString = "Alarmsignalen (ernstige stridor, respiratoire insufficiëntie of ernstige slikklachten)"
* item.item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].text.extension[=].extension[+].url = "content"
* item.item[=].text.extension[=].extension[=].valueString = "Signaux d’alarme (stridor sévère, insuffisance respiratoire ou difficultés de déglutition sévères)"
* item.item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[+].linkId = "sp_isSeverelyIll_ast"
* item.item[=].type = #boolean
* item.item[=].text = "isSeverelyIll"
* item.item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].text.extension[=].extension[+].url = "content"
* item.item[=].text.extension[=].extension[=].valueString = "Ernstig ziek"
* item.item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].text.extension[=].extension[+].url = "content"
* item.item[=].text.extension[=].extension[=].valueString = "Gravement malade"
* item.item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[+].item[0].linkId = "sp_riskPatient_ast"
* item.item[=].item[=].type = #boolean
* item.item[=].item[=].text = "riskPatient"
* item.item[=].item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].text.extension[=].extension[=].valueString = "Risicopatiënt"
* item.item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].text.extension[=].extension[=].valueString = "Patient à risque"
* item.item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[+].item[0].item[0].linkId = "pv_compromisedImmuneSystem"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].item[=].text = "compromisedImmuneSystem"
* item.item[=].item[=].item[=].item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "Gecompromitteerd immuunsysteem"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "Immunosuppression / système immunitaire déprimé"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icpc2#B90
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $icd10#D70
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#234532001
* item.item[=].item[=].item[=].item[=].answerOption[=].valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item[=].item[+].linkId = "pv_compromisedImmuneSystem_override"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[=].linkId = "pv_compromisedImmuneSystem_proposals"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[+].item[0].linkId = "pv_oncologyPatient"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].item[=].text = "oncologyPatient"
* item.item[=].item[=].item[=].item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "Oncologische patiënt"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "Patient oncologique"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icpc2#R84
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $icd10#C00-C97
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#763597000
* item.item[=].item[=].item[=].item[=].answerOption[=].valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item[=].item[+].linkId = "pv_oncologyPatient_override"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[=].linkId = "pv_oncologyPatient_proposals"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[+].item[0].linkId = "pv_historyAcuteJointRheumatism"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].item[=].text = "historyAcuteJointRheumatism"
* item.item[=].item[=].item[=].item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "Voorgeschiedenis van acuut gewrichtsreuma"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "ntécédents de rhumatisme articulaire aigu"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icd10#M02.8
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#404684003
* item.item[=].item[=].item[=].item[=].answerOption[=].valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item[=].item[+].linkId = "pv_historyAcuteJointRheumatism_override"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[=].linkId = "pv_historyAcuteJointRheumatism_proposals"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[+].item[0].linkId = "pv_recentProthesticSurgery"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].item[=].text = "recentProthesticSurgery"
* item.item[=].item[=].item[=].item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "Recente prothesechirurgie"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "Chirurgie prothétique récente"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icpc2#A89
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $icd10#M96.6
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#67270000
* item.item[=].item[=].item[=].item[=].answerOption[=].valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item[=].item[+].linkId = "pv_recentProthesticSurgery_override"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[=].linkId = "pv_recentProthesticSurgery_proposals"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].linkId = "sp_riskPatient_patientVariables"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = true
* item.item[=].linkId = "sp_riskPatientGroup"
* item.item[=].type = #group
* item.item[+].item[0].linkId = "sp_igEMediatedPeniAllergy"
* item.item[=].item[=].type = #boolean
* item.item[=].item[=].text = "igEMediatedPeniAllergy"
* item.item[=].item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].text.extension[=].extension[=].valueString = "IgE gemedieerde penicilline allergie"
* item.item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].text.extension[=].extension[=].valueString = "Allergie à la pénicilline IgE médiée"
* item.item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[+].item.item[0].linkId = "pv_igEMediatedPeniAllergy"
* item.item[=].item[=].item.item[=].type = #choice
* item.item[=].item[=].item.item[=].repeats = true
* item.item[=].item[=].item.item[=].text = "igEMediatedPeniAllergy"
* item.item[=].item[=].item.item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].item.item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].item.item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item.item[=].text.extension[=].extension[=].valueString = "IgE gemedieerde penicilline allergie"
* item.item[=].item[=].item.item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item.item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].item.item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].item.item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item.item[=].text.extension[=].extension[=].valueString = "Allergie à la pénicilline IgE médiée"
* item.item[=].item[=].item.item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item.item[=].answerOption[0].valueCoding = $sct#277785006
* item.item[=].item[=].item.item[=].answerOption[=].valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item.item[=].answerOption[+].valueCoding = $sct#241938005
* item.item[=].item[=].item.item[=].answerOption[=].valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item.item[+].linkId = "pv_igEMediatedPeniAllergy_override"
* item.item[=].item[=].item.item[=].type = #boolean
* item.item[=].item[=].item.linkId = "pv_igEMediatedPeniAllergy_proposals"
* item.item[=].item[=].item.type = #group
* item.item[=].item[=].linkId = "sp_igEMediatedPeniAllergy_patientVariables"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = true
* item.item[=].linkId = "sp_igEMediatedPeniAllergyGroup"
* item.item[=].type = #group
* item.item[+].item[0].linkId = "sp_nonIgEMediatedPeniAllergy"
* item.item[=].item[=].type = #boolean
* item.item[=].item[=].text = "nonIgEMediatedPeniAllergy"
* item.item[=].item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].text.extension[=].extension[=].valueString = "Penicilline allergie"
* item.item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].text.extension[=].extension[=].valueString = "Allergie à la pénicilline"
* item.item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[+].item.item[0].linkId = "pv_nonIgEMediatedPeniAllergy"
* item.item[=].item[=].item.item[=].type = #choice
* item.item[=].item[=].item.item[=].repeats = true
* item.item[=].item[=].item.item[=].text = "nonIgEMediatedPeniAllergy"
* item.item[=].item[=].item.item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].item.item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].item.item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item.item[=].text.extension[=].extension[=].valueString = "Niet IgE gemedieerde penicilline allergie"
* item.item[=].item[=].item.item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item.item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].item.item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].item.item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item.item[=].text.extension[=].extension[=].valueString = "Allergie à la pénicilline non IgE médiée"
* item.item[=].item[=].item.item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item.item[=].answerOption[0].valueCoding = $icd10#Z88.0
* item.item[=].item[=].item.item[=].answerOption[+].valueCoding = $sct#91936005
* item.item[=].item[=].item.item[=].answerOption[=].valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item.item[+].linkId = "pv_nonIgEMediatedPeniAllergy_override"
* item.item[=].item[=].item.item[=].type = #boolean
* item.item[=].item[=].item.linkId = "pv_nonIgEMediatedPeniAllergy_proposals"
* item.item[=].item[=].item.type = #group
* item.item[=].item[=].linkId = "sp_nonIgEMediatedPeniAllergy_patientVariables"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = true
* item.item[=].linkId = "sp_nonIgEMediatedPeniAllergyGroup"
* item.item[=].type = #group
* item.linkId = "questionnaire"
* item.type = #group