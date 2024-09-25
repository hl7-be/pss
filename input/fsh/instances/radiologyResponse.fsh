Alias: $qsi-indications = http://pss/qsi-indications

Instance: radiology-response
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].fullUrl = "urn:uuid:75b71ed1-0a71-407b-8d73-693ce9d59b26"
* entry[=].resource = 75b71ed1-0a71-407b-8d73-693ce9d59b26
* entry[+].fullUrl = "urn:uuid:3db7fb44-1472-4cb5-b971-42cf792f2762"
* entry[=].resource = 3db7fb44-1472-4cb5-b971-42cf792f2762

Instance: 75b71ed1-0a71-407b-8d73-693ce9d59b26
InstanceOf: GuidanceResponse
Usage: #inline
* moduleUri = "/radioGuidanceRequest"
* status = #success
* reasonCode = $qsi-indications#5000246 "Hoofdtrauma, ataxie"
* outputParameters = Reference(3db7fb44-1472-4cb5-b971-42cf792f2762)

Instance: 3db7fb44-1472-4cb5-b971-42cf792f2762
InstanceOf: Parameters
Usage: #inline
* parameter.name = "supportOptions"
* parameter.part[0].name = "option"
* parameter.part[=].part[0].name = "score"
* parameter.part[=].part[=].valueInteger = 10
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part.name = "NL"
* parameter.part[=].part[=].part.valueString = "CT, hoofd, zonder intraveneus contrast"
* parameter.part[=].part[+].name = "supportOptionMetadata"
* parameter.part[=].part[=].part[0].name = "RelativeCost"
* parameter.part[=].part[=].part[=].valueString = "€€"
* parameter.part[=].part[=].part[+].name = "RadiationLevel"
* parameter.part[=].part[=].part[=].valueInteger = 3
* parameter.part[=].part[=].part[+].name = "IsIntended"
* parameter.part[=].part[=].part[=].valueBoolean = true
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "score"
* parameter.part[=].part[=].valueInteger = 10
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part.name = "NL"
* parameter.part[=].part[=].part.valueString = "CT, angiografie, hoofd, met intraveneus contrast"
* parameter.part[=].part[+].name = "supportOptionMetadata"
* parameter.part[=].part[=].part[0].name = "RelativeCost"
* parameter.part[=].part[=].part[=].valueString = "€€€"
* parameter.part[=].part[=].part[+].name = "RadiationLevel"
* parameter.part[=].part[=].part[=].valueInteger = 3
* parameter.part[=].part[=].part[+].name = "IsIntended"
* parameter.part[=].part[=].part[=].valueBoolean = false
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "score"
* parameter.part[=].part[=].valueInteger = 10
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part.name = "NL"
* parameter.part[=].part[=].part.valueString = "CT, cisternografie, hoofd, met intraveneus contrast"
* parameter.part[=].part[+].name = "supportOptionMetadata"
* parameter.part[=].part[=].part[0].name = "RelativeCost"
* parameter.part[=].part[=].part[=].valueString = "€€"
* parameter.part[=].part[=].part[+].name = "RadiationLevel"
* parameter.part[=].part[=].part[=].valueInteger = 3
* parameter.part[=].part[=].part[+].name = "IsIntended"
* parameter.part[=].part[=].part[=].valueBoolean = false
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "score"
* parameter.part[=].part[=].valueInteger = 10
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part.name = "NL"
* parameter.part[=].part[=].part.valueString = "CT, hoofd, met intraveneus contrast"
* parameter.part[=].part[+].name = "supportOptionMetadata"
* parameter.part[=].part[=].part[0].name = "RelativeCost"
* parameter.part[=].part[=].part[=].valueString = "€€"
* parameter.part[=].part[=].part[+].name = "RadiationLevel"
* parameter.part[=].part[=].part[=].valueInteger = 3
* parameter.part[=].part[=].part[+].name = "IsIntended"
* parameter.part[=].part[=].part[=].valueBoolean = false