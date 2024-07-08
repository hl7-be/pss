Instance: radiology-response
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].fullUrl = "urn:uuid:4d69e30b-5984-4714-9556-d51a4b2aa0c1"
* entry[=].resource = radioGuidanceResponse
* entry[+].fullUrl = "urn:uuid:923af332-2bb1-4302-bd35-29acd39c3e3d"
* entry[=].resource = radioResponseParameters

Instance: radioGuidanceResponse
InstanceOf: GuidanceResponse
Usage: #inline
* moduleUri = "/radioGuidanceRequest"
* status = #success
* reasonCode = $sct#763597000
* outputParameters = Reference(Parameters/923af332-2bb1-4302-bd35-29acd39c3e3d)
* id = "4d69e30b-5984-4714-9556-d51a4b2aa0c1" 

Instance: radioResponseParameters
InstanceOf: Parameters
Usage: #inline
* id = "923af332-2bb1-4302-bd35-29acd39c3e3d"
* parameter.name = "supportOptions"
* parameter.part[0].name = "option"
* parameter.part[=].part[0].name = "score"
* parameter.part[=].part[=].valueInteger = 10
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "CT, hoofd, zonder intraveneus contrast"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "CT, tête, sans injection de produit de contraste intraveineux"
* parameter.part[=].part[+].name = "supportOptionMetadata"
* parameter.part[=].part[=].part[0].name = "RelativeCost"
* parameter.part[=].part[=].part[=].valueString = "€€"
* parameter.part[=].part[=].part[+].name = "RadiationLevel"
* parameter.part[=].part[=].part[=].valueInteger = 3
* parameter.part[=].part[=].part[+].name = "IsRequested"
* parameter.part[=].part[=].part[=].valueBoolean = true
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "score"
* parameter.part[=].part[=].valueInteger = 10
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "CT, angiografie, hoofd, met intraveneus contrast"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "CT, angiographie, tête, avec injection de produit de contraste intraveineux"
* parameter.part[=].part[+].name = "supportOptionMetadata"
* parameter.part[=].part[=].part[0].name = "RelativeCost"
* parameter.part[=].part[=].part[=].valueString = "€€€"
* parameter.part[=].part[=].part[+].name = "RadiationLevel"
* parameter.part[=].part[=].part[=].valueInteger = 3
* parameter.part[=].part[=].part[+].name = "IsRequested"
* parameter.part[=].part[=].part[=].valueBoolean = false
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "score"
* parameter.part[=].part[=].valueInteger = 10
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "CT, cisternografie, hoofd, met intraveneus contrast"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "CT, cisternographie, tête, avec injection de produit de contraste intraveineux"
* parameter.part[=].part[+].name = "supportOptionMetadata"
* parameter.part[=].part[=].part[0].name = "RelativeCost"
* parameter.part[=].part[=].part[=].valueString = "€€"
* parameter.part[=].part[=].part[+].name = "RadiationLevel"
* parameter.part[=].part[=].part[=].valueInteger = 3
* parameter.part[=].part[=].part[+].name = "IsRequested"
* parameter.part[=].part[=].part[=].valueBoolean = false
* parameter.part[+].name = "option"
* parameter.part[=].part[0].name = "score"
* parameter.part[=].part[=].valueInteger = 10
* parameter.part[=].part[+].name = "instruction"
* parameter.part[=].part[=].part[0].name = "NL"
* parameter.part[=].part[=].part[=].valueString = "CT, hoofd, met intraveneus contrast"
* parameter.part[=].part[=].part[+].name = "FR"
* parameter.part[=].part[=].part[=].valueString = "CT, tête, avec injection de produit de contraste intraveineux"
* parameter.part[=].part[+].name = "supportOptionMetadata"
* parameter.part[=].part[=].part[0].name = "RelativeCost"
* parameter.part[=].part[=].part[=].valueString = "€€"
* parameter.part[=].part[=].part[+].name = "RadiationLevel"
* parameter.part[=].part[=].part[=].valueInteger = 3
* parameter.part[=].part[=].part[+].name = "IsRequested"
* parameter.part[=].part[=].part[=].valueBoolean = false