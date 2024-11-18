

Instance: radiology-response
InstanceOf: BeRadiologyGuidanceBundle
Usage: #example
* type = #collection
* entry[0].fullUrl = "urn:uuid:75b71ed1-0a71-407b-8d73-693ce9d59b26"
* entry[=].resource = 75b71ed1-0a71-407b-8d73-693ce9d59b26
* entry[+].fullUrl = "urn:uuid:3db7fb44-1472-4cb5-b971-42cf792f2762"
* entry[=].resource = 3db7fb44-1472-4cb5-b971-42cf792f2762

Instance: 75b71ed1-0a71-407b-8d73-693ce9d59b26
InstanceOf: BeRadiologyGuidanceResponse
Usage: #inline
* moduleUri = "/radioGuidanceRequest"
* status = #success
* reasonCode = $qsi-indications#5000246 "Hoofdtrauma, ataxie"
* outputParameters = Reference(3db7fb44-1472-4cb5-b971-42cf792f2762)

Instance: 3db7fb44-1472-4cb5-b971-42cf792f2762
InstanceOf: BeRadiologySupportParameters
Usage: #inline
* parameter[supportOptions].name = "supportOptions"
* parameter[supportOptions].part[0].name = "option"
* parameter[supportOptions].part[=].part[0].name = "score"
* parameter[supportOptions].part[=].part[=].valueInteger = 10
* parameter[supportOptions].part[=].part[+].name = "instruction"
* parameter[supportOptions].part[=].part[=].part.name = "NL"
* parameter[supportOptions].part[=].part[=].part.valueString = "CT, hoofd, zonder intraveneus contrast"
* parameter[supportOptions].part[=].part[+].name = "supportOptionMetadata"
* parameter[supportOptions].part[=].part[=].part[0].name = "RelativeCost"
* parameter[supportOptions].part[=].part[=].part[=].valueString = "€€"
* parameter[supportOptions].part[=].part[=].part[+].name = "RadiationLevel"
* parameter[supportOptions].part[=].part[=].part[=].valueInteger = 3
* parameter[supportOptions].part[=].part[=].part[+].name = "IsIntended"
* parameter[supportOptions].part[=].part[=].part[=].valueBoolean = true
* parameter[supportOptions].part[+].name = "option"
* parameter[supportOptions].part[=].part[0].name = "score"
* parameter[supportOptions].part[=].part[=].valueInteger = 10
* parameter[supportOptions].part[=].part[+].name = "instruction"
* parameter[supportOptions].part[=].part[=].part.name = "NL"
* parameter[supportOptions].part[=].part[=].part.valueString = "CT, angiografie, hoofd, met intraveneus contrast"
* parameter[supportOptions].part[=].part[+].name = "supportOptionMetadata"
* parameter[supportOptions].part[=].part[=].part[0].name = "RelativeCost"
* parameter[supportOptions].part[=].part[=].part[=].valueString = "€€€"
* parameter[supportOptions].part[=].part[=].part[+].name = "RadiationLevel"
* parameter[supportOptions].part[=].part[=].part[=].valueInteger = 3
* parameter[supportOptions].part[=].part[=].part[+].name = "IsIntended"
* parameter[supportOptions].part[=].part[=].part[=].valueBoolean = false
* parameter[supportOptions].part[+].name = "option"
* parameter[supportOptions].part[=].part[0].name = "score"
* parameter[supportOptions].part[=].part[=].valueInteger = 10
* parameter[supportOptions].part[=].part[+].name = "instruction"
* parameter[supportOptions].part[=].part[=].part.name = "NL"
* parameter[supportOptions].part[=].part[=].part.valueString = "CT, cisternografie, hoofd, met intraveneus contrast"
* parameter[supportOptions].part[=].part[+].name = "supportOptionMetadata"
* parameter[supportOptions].part[=].part[=].part[0].name = "RelativeCost"
* parameter[supportOptions].part[=].part[=].part[=].valueString = "€€"
* parameter[supportOptions].part[=].part[=].part[+].name = "RadiationLevel"
* parameter[supportOptions].part[=].part[=].part[=].valueInteger = 3
* parameter[supportOptions].part[=].part[=].part[+].name = "IsIntended"
* parameter[supportOptions].part[=].part[=].part[=].valueBoolean = false
* parameter[supportOptions].part[+].name = "option"
* parameter[supportOptions].part[=].part[0].name = "score"
* parameter[supportOptions].part[=].part[=].valueInteger = 10
* parameter[supportOptions].part[=].part[+].name = "instruction"
* parameter[supportOptions].part[=].part[=].part.name = "NL"
* parameter[supportOptions].part[=].part[=].part.valueString = "CT, hoofd, met intraveneus contrast"
* parameter[supportOptions].part[=].part[+].name = "supportOptionMetadata"
* parameter[supportOptions].part[=].part[=].part[0].name = "RelativeCost"
* parameter[supportOptions].part[=].part[=].part[=].valueString = "€€"
* parameter[supportOptions].part[=].part[=].part[+].name = "RadiationLevel"
* parameter[supportOptions].part[=].part[=].part[=].valueInteger = 3
* parameter[supportOptions].part[=].part[=].part[+].name = "IsIntended"
* parameter[supportOptions].part[=].part[=].part[=].valueBoolean = false