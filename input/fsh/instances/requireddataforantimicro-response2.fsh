Alias: $icpc2 = http://www.who.int/classifications/icpc2
Alias: $icd10 = http://www.who.int/classifications/icd10
//Alias: $sct = http://snomed.info/sct

Instance: requireddataforantimicro-response2
InstanceOf: Questionnaire
Usage: #example
* title = "Required Data for Antimicro"
* title.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* title.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Vereiste data voor antimicrobiologie" 
* title.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* title.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Données nécessaires pour antimicrobiologie" 
* status = #active
* subjectType = #Patient
* item.linkId = "questionnaire"
* item.type = #group
* item.item[0].linkId = "sp_alertSignals"
* item.item[=].type = #boolean
* item.item[=].text = "Alert Signals"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Alarmsignalen" 
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Signaux d'alerte" 
* item.item[+].linkId = "sp_isSeverelyIll"
* item.item[=].type = #boolean
* item.item[=].text = "The patient is severly ill"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "De patiënt is ernstig ziek" 
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Le patient est sérieusement malade" 
* item.item[+].linkId = "sp_riskPatientGroup"
* item.item[=].type = #group
* item.item[=].text = "Risk patient"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Risico patiënt" 
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Patient à risque" 
* item.item[=].item[0].linkId = "sp_riskPatient"
* item.item[=].item[=].type = #boolean
* item.item[=].item[=].text = "Risk patient"
* item.item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Risico patient" 
* item.item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Patient à risque" 
* item.item[=].item[+].linkId = "sp_riskPatient_patientVariables"
* item.item[=].item[=].type = #group
* item.item[=].item[=].item[0].linkId = "pv_compromisedImmuneSystem_proposals"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[=].text = "Proposals for compromised immune system"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Voorstellen bij een verzwakt immuunsysteem" 
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Propositions pour un système d'immunité comprommitté" 
* item.item[=].item[=].item[=].item[0].linkId = "pv_compromisedImmuneSystem"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icpc2#B90
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $icd10#D70
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#234532001
* item.item[=].item[=].item[=].item[+].linkId = "pv_compromisedImmuneSystem_override"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[+].linkId = "pv_oncologyPatient_proposals"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[=].text = "Proposals for an oncology patient"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Voorstellen voor een oncologiepatient" 
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Propositions pour un patient d'oncologie" 
* item.item[=].item[=].item[=].item[0].linkId = "pv_oncologyPatient"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icpc2#R84
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $icd10#C00-C97
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#763597000
* item.item[=].item[=].item[=].item[+].linkId = "pv_oncologyPatient_override"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[=].item[=].text = "Override oncology patient"
* item.item[=].item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Oncologiepatient buiten beschouwing laten" 
* item.item[=].item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Ne pas prendre en compte patient oncologie" 
* item.item[=].item[=].item[+].linkId = "pv_historyAcuteJointRheumatism_proposals"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[=].text = "Proposals for a history of acute joint rheumatism"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Voorstellen voor een geschiedenis van acute gewrichtsreuma" 
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Propositions pour une histoire de rheumatisme des articulations" 
* item.item[=].item[=].item[=].item[0].linkId = "pv_historyAcuteJointRheumatism"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icd10#M02.8
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#404684003
* item.item[=].item[=].item[=].item[+].linkId = "pv_historyAcuteJointRheumatism_override"
* item.item[=].item[=].item[=].item[=].text = "Override a history of acute joint rheumatism"
* item.item[=].item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Geschiedenis van acute gewrichtsreuma buiten beschouwing laten" 
* item.item[=].item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Ne pas prendre en compte l'histoire de rheumatisme acute des articulations" 
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[+].linkId = "pv_recentProthesticSurgery_proposals"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[=].text = "Proposals for recent prosthetic surgery"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Voorstellen voor recente prostetische chirurgie" 
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Propositions pour une chirurgie prosthétique récente" 
* item.item[=].item[=].item[=].item[0].linkId = "pv_recentProthesticSurgery"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icpc2#A89
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $icd10#M96.6
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#67270000
* item.item[=].item[=].item[=].item[+].linkId = "pv_recentProthesticSurgery_override"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[=].item[=].text = "Override recent prosthetic surgery"
* item.item[=].item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Recente prosthetische chirurgie buiten beschouwing laten" 
* item.item[=].item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Ne pas prendre en compte la chirurgie prosthétique récente" 
* item.item[=].item[=].item[+].linkId = "pv_heartValveDisease_proposals"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[=].text = "Proposals for heart valve disease"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Voorstellen voor hartklepaandoening" 
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].item[=].item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Propositions pour un problème de valve cardiaque" 
* item.item[=].item[=].item[=].item[0].linkId = "pv_heartValveDisease"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $icpc2#K83
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $icd10#I34
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#44241007
* item.item[=].item[=].item[=].item[+].linkId = "pv_heartValveDisease_override"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[+].linkId = "sp_nonIgEMediatedPeniAllergy"
* item.item[=].type = #boolean
* item.item[=].text = "Non IgE mediated Penicilline allergy"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Niet IgE gemedieerde penicilline allergie" 
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Allergie à la pénicilline non-médiée par IgE" 
* item.item[+].linkId = "sp_igEMediatedPeniAllergy"
* item.item[=].type = #boolean
* item.item[=].text = "IgE mediated Penicilline allergy"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"nl-BE"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "IgE gemedieerde penicilline allergie" 
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][+].extension[lang].valueCode = #"fr-BE"
* item.item[=].text.extension[http://hl7.org/fhir/StructureDefinition/translation][=].extension[content].valueString = "Allergie à la pénicilline médiée par IgE" 
