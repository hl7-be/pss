Instance: requireddataforantimicro-response3 
InstanceOf: Questionnaire
Usage: #example
* name = "requiredDataResponse"
* title = "List of required data"
* status = #active
* description = "Questionnaire containing a list of required data for the patient"
* item.item[0].item[0].linkId = "sp_excMand_knownPathogen_vag"
* item.item[=].item[=].type = #boolean
* item.item[=].item[=].text = "knownPathogen"
* item.item[=].item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].text.extension[=].extension[=].valueString = "Oorzakelijke kiem"
* item.item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].text.extension[=].extension[=].valueString = "Germe causal"
* item.item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].readOnly = true
* item.item[=].item[=].initial.valueBoolean = true
* item.item[=].item[+].item[0].item[0].linkId = "pv_bacterial_vag"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].item[=].text = "bacterial"
* item.item[=].item[=].item[=].item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "Bacteriële  vaginose"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "Vaginose bactérienne"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].answerOption.valueCoding = $sct#419760006
* item.item[=].item[=].item[=].item[=].answerOption.valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item[=].item[+].linkId = "pv_bacterial_override"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[=].linkId = "pv_bacterial_proposals"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[+].item[0].linkId = "pv_trichomonas_vag"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].item[=].text = "trichomonas"
* item.item[=].item[=].item[=].item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "Trichomonas vaginalis"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "Trichomonas vaginalis"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $sct#276877003
* item.item[=].item[=].item[=].item[=].answerOption[=].valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#35089004
* item.item[=].item[=].item[=].item[=].answerOption[=].valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item[=].item[+].linkId = "pv_trichomonas_override"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[=].linkId = "pv_trichomonas_proposals"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].item[+].item[0].linkId = "pv_candida_vag"
* item.item[=].item[=].item[=].item[=].type = #choice
* item.item[=].item[=].item[=].item[=].repeats = true
* item.item[=].item[=].item[=].item[=].text = "candida"
* item.item[=].item[=].item[=].item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "Candida vaginitis"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].item[=].item[=].text.extension[=].extension[=].valueString = "Vaginite à candida"
* item.item[=].item[=].item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].item[=].item[=].answerOption[0].valueCoding = $sct#72934000
* item.item[=].item[=].item[=].item[=].answerOption[=].valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item[=].item[=].answerOption[+].valueCoding = $sct#72605008
* item.item[=].item[=].item[=].item[=].answerOption[=].valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item[=].item[+].linkId = "pv_candida_override"
* item.item[=].item[=].item[=].item[=].type = #boolean
* item.item[=].item[=].item[=].linkId = "pv_candida_proposals"
* item.item[=].item[=].item[=].type = #group
* item.item[=].item[=].linkId = "sp_knownPathogen_patientVariables"
* item.item[=].item[=].type = #group
* item.item[=].item[=].enableWhen.question = "sp_excMand_knownPathogen_vag"
* item.item[=].item[=].enableWhen.operator = #=
* item.item[=].item[=].enableWhen.answerBoolean = true
* item.item[=].item[=].required = true
* item.item[=].linkId = "sp_knownPathogenGroup"
* item.item[=].type = #group
* item.item[+].item[0].linkId = "sp_pregnant"
* item.item[=].item[=].type = #boolean
* item.item[=].item[=].text = "pregnant"
* item.item[=].item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].text.extension[=].extension[=].valueString = "Zwangerschap"
* item.item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].text.extension[=].extension[=].valueString = "Grossesse"
* item.item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[+].item.item[0].linkId = "pv_pregnant"
* item.item[=].item[=].item.item[=].type = #choice
* item.item[=].item[=].item.item[=].repeats = true
* item.item[=].item[=].item.item[=].answerOption[0].valueCoding = $icpc2#W78
* item.item[=].item[=].item.item[=].answerOption[+].valueCoding = $icd10#Z88.0
* item.item[=].item[=].item.item[=].answerOption[+].valueCoding = $sct#127364007
* item.item[=].item[=].item.item[=].answerOption[=].valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item.item[+].linkId = "pv_pregnant_override"
* item.item[=].item[=].item.item[=].type = #boolean
* item.item[=].item[=].item.linkId = "pv_pregnant_proposals"
* item.item[=].item[=].item.type = #group
* item.item[=].item[=].linkId = "sp_pregnant_patientVariables"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = true
* item.item[=].linkId = "sp_pregnantGroup"
* item.item[=].type = #group
* item.item[+].item[0].linkId = "sp_recidivism_vag"
* item.item[=].item[=].type = #boolean
* item.item[=].item[=].text = "recidivism"
* item.item[=].item[=].text.extension[0].extension[0].url = "lang"
* item.item[=].item[=].text.extension[=].extension[=].valueCode = #nl-BE
* item.item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].text.extension[=].extension[=].valueString = "Recidiverend"
* item.item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[=].text.extension[+].extension[0].url = "lang"
* item.item[=].item[=].text.extension[=].extension[=].valueCode = #fr-BE
* item.item[=].item[=].text.extension[=].extension[+].url = "content"
* item.item[=].item[=].text.extension[=].extension[=].valueString = "Récidivant"
* item.item[=].item[=].text.extension[=].url = "http://hl7.org/fhir/StructureDefinition/translation"
* item.item[=].item[+].item.item[0].linkId = "pv_recidivism_vag"
* item.item[=].item[=].item.item[=].type = #choice
* item.item[=].item[=].item.item[=].repeats = true
* item.item[=].item[=].item.item[=].answerOption.valueCoding = $sct#708126004
* item.item[=].item[=].item.item[=].answerOption.valueCoding.version = "http://snomed.info/sct/11000172109"
* item.item[=].item[=].item.item[+].linkId = "pv_recidivism_override"
* item.item[=].item[=].item.item[=].type = #boolean
* item.item[=].item[=].item.linkId = "pv_recidivism_proposals"
* item.item[=].item[=].item.type = #group
* item.item[=].item[=].linkId = "sp_recidivism_patientVariables"
* item.item[=].item[=].type = #group
* item.item[=].item[=].repeats = true
* item.item[=].linkId = "sp_recidivismGroup"
* item.item[=].type = #group
* item.linkId = "questionnaire"
* item.type = #group