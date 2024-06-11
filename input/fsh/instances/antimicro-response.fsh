Instance: antimicroResponse
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].fullUrl = "urn:uuid:e134a22d-7c34-4964-9eea-a1b68c368122"
* entry[=].resource = AB6
* entry[+].fullUrl = "urn:uuid:ee0e86f7-75f6-41aa-a390-6a58112faadd"
* entry[=].resource = Inline-Instance-for-undefined-1

Instance: AB6
InstanceOf: GuidanceResponse
Usage: #inline
* moduleUri = "/antimicroGuidanceRequest"
* status = #success
* reasonCode = $sct#921000172108 "Acute Keelpijn"
* outputParameters = Reference(Parameters/ee0e86f7-75f6-41aa-a390-6a58112faadd)
* id = "e134a22d-7c34-4964-9eea-a1b68c368122"

Instance: Inline-Instance-for-undefined-1
InstanceOf: Parameters
Usage: #inline
* id = "ee0e86f7-75f6-41aa-a390-6a58112faadd"
* parameter.name = "supportOptions"
* parameter.part[0].name = "option"
* parameter.part[=].part[0].name = "score"
* parameter.part[=].part[=].valueInteger = 1
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Azithromycine"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Azithromycine"
* parameter.part[=].part[+].name = "evidenceSummary"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Kind: 10 mg/kg per dag in 1 gift gedurende 3 dagen. Volwassene: 500 mg per dag in 1 gift gedurende 3 dagen."
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Enfant : 10 mg/kg par jour en 1 prise pendant 3 jours. Adulte : 500 mg par jour en 1 prise pendant 3 jours."
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "score"
* parameter.part[=].part[=].valueInteger = 3
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
* parameter.part[=].part[0].name = "score"
* parameter.part[=].part[=].valueInteger = 3
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Cefalosporines"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Céfalosporines"
* parameter.part[=].part[+].name = "evidenceSummary"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Niet aangewezen"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Non indiqué"
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "score"
* parameter.part[=].part[=].valueInteger = 3
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Tetracyclines"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Tétracyclines"
* parameter.part[=].part[+].name = "evidenceSummary"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "Niet aangewezen"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "Non indiqué"
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "score"
* parameter.part[=].part[=].valueInteger = 3
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