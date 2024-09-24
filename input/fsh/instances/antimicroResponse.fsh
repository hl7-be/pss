Instance: antimicroResponse
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].fullUrl = "urn:uuid:e134a22d-7c34-4964-9eea-a1b68c368122"
* entry[=].resource = e134a22d-7c34-4964-9eea-a1b68c368122
* entry[+].fullUrl = "urn:uuid:ee0e86f7-75f6-41aa-a390-6a58112faadd"
* entry[=].resource = ee0e86f7-75f6-41aa-a390-6a58112faadd
* entry[+].fullUrl = "urn:uuid:fd45eea5-eb11-4fd4-b3d4-a885b20ccb49"
* entry[=].resource = operationOutcome

Instance: e134a22d-7c34-4964-9eea-a1b68c368122
InstanceOf: GuidanceResponse
Usage: #inline
* moduleUri = "/antimicroGuidanceRequest"
* status = #success
* reasonCode.coding = $sct#921000172108 "Acute Keelpijn"
* reasonCode.coding.version = "http://snomed.info/sct/11000172109"
* outputParameters = Reference(ee0e86f7-75f6-41aa-a390-6a58112faadd)

Instance: ee0e86f7-75f6-41aa-a390-6a58112faadd
InstanceOf: Parameters
Usage: #inline
* parameter.name = "supportOptions"
* parameter.part[0].name = "option"
* parameter.part[=].part[0].name = "isIntended"
* parameter.part[=].part[=].valueBoolean = false
* parameter.part[=].part[+].name = "score"
* parameter.part[=].part[=].valueInteger = 3
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Feneticilline"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Phénéticilline"
* parameter.part[=].part[+].name = "evidenceSummary"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Volwassenen en kind > 10 jaar: 1500 mg per dag in 3 giften. Kind 2-10 j: 750 mg per dag in drie giften. Kind < 2 jaar: 375 mg per dag in drie giften."
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Adultes et enfants > 10 ans : 1500 mg par jour en 3 prises. Enfant 2-10 ans : 750 mg par jour en 3 prises. Enfant < 2 ans : 375 mg par jour en 3 prises."
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "isIntended"
* parameter.part[=].part[=].valueBoolean = false
* parameter.part[=].part[+].name = "score"
* parameter.part[=].part[=].valueInteger = 3
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Cefadroxil of Cefalexine"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Céfadroxil ou Céfalexine"
* parameter.part[=].part[+].name = "evidenceSummary"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Eerste keuze alternatief Cefadroxil: Kind: 30 mg/kg per dag in 2 giften gedurende 7 dagen. Volwassene: 2 g per dag in 2 giften gedurende 7 dagen. Cefalexine: Volwassene: 2 g per dag in 2 giften gedurende 7 dagen."
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Alternative de premier choix : Céfadroxil : Enfant : 30 mg/kg par jour en 2 prises pendant 7 jours. Adulte : 2 g par jour en 2 prises pendant 7 jours. Céfalexine : Adulte : 2 g par jour en 2 prises pendant 7 jours."
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "isIntended"
* parameter.part[=].part[=].valueBoolean = true
* parameter.part[=].part[+].name = "score"
* parameter.part[=].part[=].valueInteger = 3
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Amoxicilline"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Amoxicilline"
* parameter.part[=].part[+].name = "evidenceSummary"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Tweede keuze alternatief: Kind: 75-100 mg/kg per dag in 3 giften gedurende 5 dagen. Volwassene: 3 g per dag in 3 giften gedurende 5 dagen."
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Alternative de deuxième choix : Enfant : 75-100 mg/kg par jour en 3 prises pendant 5 jours. Adulte : 3 g par jour en 3 prises pendant 5 jours."
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "isIntended"
* parameter.part[=].part[=].valueBoolean = false
* parameter.part[=].part[+].name = "score"
* parameter.part[=].part[=].valueInteger = 1
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Amoxicilline-clavulaanzuur"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Amoxicilline-acide clavulanique"
* parameter.part[=].part[+].name = "evidenceSummary"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Niet aangewezen"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Non indiqué"
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "isIntended"
* parameter.part[=].part[=].valueBoolean = false
* parameter.part[=].part[+].name = "score"
* parameter.part[=].part[=].valueInteger = 1
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Chinolonen"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Quinolones"
* parameter.part[=].part[+].name = "evidenceSummary"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Niet aangewezen"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Non indiqué"
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "isIntended"
* parameter.part[=].part[=].valueBoolean = false
* parameter.part[=].part[+].name = "score"
* parameter.part[=].part[=].valueInteger = 1
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Macroliden"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Macrolides"
* parameter.part[=].part[+].name = "evidenceSummary"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Niet aangewezen"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Non indiqué"
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "isIntended"
* parameter.part[=].part[=].valueBoolean = false
* parameter.part[=].part[+].name = "score"
* parameter.part[=].part[=].valueInteger = 1
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Tetracyclinen"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Tétracyclines"
* parameter.part[=].part[+].name = "evidenceSummary"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Niet aangewezen"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Non indiqué"


Instance: operationOutcome
InstanceOf: OperationOutcome
* issue[+].severity = #information
* issue[=].code = http://hl7.org/fhir/issue-type#informational
* issue[=].diagnostics = "Acute keelpijn - NL"
* issue[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-authority"
* issue[=].extension[=].valueUri = "https://www.bcfi.be/nl/chapters/12?frag=8000036"
* issue[+].severity = #information
* issue[=].code = http://hl7.org/fhir/issue-type#informational
* issue[=].diagnostics = "Acute keelpijn - FR"
* issue[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-authority"
* issue[=].extension[=].valueUri = "https://www.cbip.be/fr/chapters/12?frag=8000036"

