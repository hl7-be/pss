Extension: ext-radiation-level-score
Id:        ext-radiation-level-score
Title:     "Radiation level score"
Description: "The radiation level score."
* ^context[+].type = #element
* ^context[=].expression = "ServiceRequest"
* value[x] only Ratio  // 0 or more


Instance: getrecommendations3-return
InstanceOf: Bundle
Title: "Radiology - S3 Get Recommendations - Response - 1. Bundle"
Description: "Radiology - S3 Get Recommendations - Response - 1. Bundle"
Usage: #example
* type = #collection
* entry[0].resource = getrecommendations3-return-1
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad21"
* entry[+].resource = ct-head-iv-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad22"
* entry[+].resource = ct-head-iv-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad23"


Instance: getrecommendations3-return-1
InstanceOf: RequestGroup
Title: "Radiology - S3 Get Recommendations - Response - 1.1. RequestGroup"
Description: "Radiology - S3 Get Recommendations - Response - 1.1. RequestGroup"
Usage: #example
//* id = "getrecommendations3-return-1"
* status = #active
* intent = #proposal
* subject = Reference(X)
* action[0]
  * textEquivalent = "CD Head with or without contrast"
  * resource = Reference(ct-head-with-or-without-contrast-v3)
* action[+]
  * textEquivalent = "CD Head with IV contrast"
  * resource = Reference(ct-head-iv-contrast)
* action[+]
  * textEquivalent = "CD Head with IV contrast"
  * resource = Reference(mr-head-without-contrast)


Instance: ct-head-iv-contrast-v3
InstanceOf: ServiceRequest
Title: "Radiology - S3 Get Recommendations - Response - 1.2 Scored procedure option 1 (original suggestion) - CT of head with IV contrast"
Description: "Radiology - S3 Get Recommendations - Response - 1.2 Scored procedure option 1 (original suggestion) - CT of head with IV contrast"
Usage: #example
* meta.versionId = "v3"
* extension[http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating]
  * valueRatio
    * numerator.value = 9
    * denominator.value = 10
* extension[ext-radiation-level-score]
  * valueRatio
    * numerator.value = 2
    * denominator.value = 10
* status = #active
* intent = #proposal
* code = #114055 "CT, head, without IV contrast"
* subject = Reference(X)


Instance: ct-head-with-or-without-contrast-v3
InstanceOf: ServiceRequest
Title: "Radiology - S3 Get Recommendations - Response - 1.3 Scored procedure option 2 - CT of head with or without contrast"
Description: "Radiology - S3 Get Recommendations - Response - 1.3 Scored procedure option 2 - CT of head with or without contrast"
Usage: #example
* meta.versionId = "v3"
* extension[http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating]
  * valueRatio
    * numerator.value = 9
    * denominator.value = 10
* extension[ext-radiation-level-score]
  * valueRatio
    * numerator.value = 1
    * denominator.value = 10
* status = #active
* intent = #proposal
* code = #114054 "CT, head, without or without contrast"
* subject = Reference(X)


Instance: mr-head-without-contrast
InstanceOf: ServiceRequest
Title: "Radiology - S3 Get Recommendations - Response - 1.4 Scored procedure option 3 - MR of head without contrast"
Description: "Radiology - S3 Get Recommendations - Response - 1.4 Scored procedure option 3 - MR of head without contrast"
Usage: #example
* extension[http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating]
  * valueRatio
    * numerator.value = 9
    * denominator.value = 10
* extension[ext-radiation-level-score]
  * valueRatio
    * numerator.value = 9
    * denominator.value = 10
* status = #active
* intent = #proposal
* code = #114092 "MR, head, without IV contrast"
* subject = Reference(X)

