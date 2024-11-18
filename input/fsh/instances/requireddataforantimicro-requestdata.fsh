Instance: requireddataforantimicro-requestdata
InstanceOf: BeAntiMicroGetIndicationsInput
Usage: #example
* parameter[0].name = "age"
* parameter[=].valueAge.value = 35
* parameter[=].valueAge.system = "http://unitsofmeasure.org"
* parameter[=].valueAge.code = #a
* parameter[+].name = "indication"
* parameter[=].valueCodeableConcept.coding = $sct#921000172108 "Acute keelpijn"
* parameter[+].name = "intolerances"
* parameter[=].valueCoding = $sct#91939003 "Allergy to Sulfonamides"
* parameter[+].name = "intolerances"
* parameter[=].valueCoding = $sct#282100009 "Adverse reaction to substance"
* parameter[+].name = "intention"
* parameter[=].valueCoding = $atc#J01CA04 "Amoxicillin"