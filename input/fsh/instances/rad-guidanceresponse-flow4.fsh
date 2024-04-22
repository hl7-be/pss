Instance: rad-guidanceresponse-flow4
InstanceOf: GuidanceResponse
Usage: #example
* status = #completed
//* request.reference = "GuidanceResponse/ad563fc2-67a3-4f0b-b05a-1c4c7852d098"
* outputParameters = Reference(parameters2)
* moduleCanonical = "http://www.example.com/Parameters/rad-parameters-flow2"


Instance: parameters2
InstanceOf: Parameters
* parameter[0].id = "114054"
* parameter[=].name = "CT, head, wo/w iv contrast"
* parameter[=].part[0].name = "score"
* parameter[=].part[=].valueInteger = 10
* parameter[=].part[+].name = "RadiationLevel"
* parameter[=].part[=].valueInteger = 3
* parameter[=].part[+].name = "RelativeCost"
* parameter[=].part[=].valueString = "€€"
* parameter[=].part[+].name = "IsRequested"
* parameter[=].part[=].valueBoolean = true
* parameter[+].id = "114374"
* parameter[=].name = "CT, angiography, head, w iv contrast"
* parameter[=].valueBoolean = false
* parameter[=].part[0].name = "score"
* parameter[=].part[=].valueInteger = 10
* parameter[=].part[+].name = "RadiationLevel"
* parameter[=].part[=].valueInteger = 3
* parameter[=].part[+].name = "RelativeCost"
* parameter[=].part[=].valueString = "€€€"
* parameter[=].part[+].name = "IsRequested"
* parameter[=].part[=].valueBoolean = false
* parameter[+].id = "3098603"
* parameter[=].name = "CT, cisternography, head, w iv contrast"
* parameter[=].valueBoolean = false
* parameter[=].part[0].name = "score"
* parameter[=].part[=].valueInteger = 10
* parameter[=].part[+].name = "RadiationLevel"
* parameter[=].part[=].valueInteger = 3
* parameter[=].part[+].name = "RelativeCost"
* parameter[=].part[=].valueString = "€€"
* parameter[=].part[+].name = "IsRequested"
* parameter[=].part[=].valueBoolean = false
* parameter[+].id = "114053"
* parameter[=].name = "CT, head, w iv contrast"
* parameter[=].valueBoolean = false
* parameter[=].part[0].name = "score"
* parameter[=].part[=].valueInteger = 10
* parameter[=].part[+].name = "RadiationLevel"
* parameter[=].part[=].valueInteger = 3
* parameter[=].part[+].name = "RelativeCost"
* parameter[=].part[=].valueString = "€€"
* parameter[=].part[+].name = "IsRequested"
* parameter[=].part[=].valueBoolean = false