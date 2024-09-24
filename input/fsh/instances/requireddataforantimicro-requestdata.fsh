Instance: requireddataforantimicro-requestdata
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "age"
* parameter[=].valueInteger = 35
* parameter[+].name = "indication"
* parameter[=].valueCodeableConcept.coding = $sct#921000172108 "Acute keelpijn"
* parameter[=].valueCodeableConcept.coding.version = "http://snomed.info/sct/11000172109"
* parameter[+].name = "intolerances"
* parameter[=].valueCoding = $sct#91939003 "Allergy to Sulfonamides"
* parameter[+].name = "intolerances"
* parameter[=].valueCoding = $sct#282100009 "Adverse reaction to substance"
* parameter[+].name = "medicationProposal"
* parameter[=].valueCoding = $atc#J01CA04 "Amoxicillin"
