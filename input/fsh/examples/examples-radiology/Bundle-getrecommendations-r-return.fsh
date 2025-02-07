
Instance: getrecommendations-r-return
InstanceOf: Bundle
Title: "Radiology - S3 Get Recommendations - Response - 1. Bundle"
Description: "Radiology - S3 Get Recommendations - Response - 1. Bundle"
Usage: #example
* type = #collection
* entry[0].resource = getrecommendations-r-return-1
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad21"
* entry[+].resource = ct-head-iv-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad22"
* entry[+].resource = ct-head-iv-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad23"


Instance: getrecommendations-r-return-1
InstanceOf: RequestGroup
Title: "Radiology - S3 Get Recommendations - Response - 1.1. RequestGroup"
Description: "Radiology - S3 Get Recommendations - Response - 1.1. RequestGroup"
Usage: #example
//* id = "getrecommendations-r-return-1"
* status = #active
* intent = #proposal
* subject = Reference(patient-x)
* action[0]
  * textEquivalent = "CT Head with or without contrast"
  * resource = Reference(ct-head-with-or-without-contrast)
* action[+]
  * textEquivalent = "CT Head with IV contrast"
  * resource = Reference(ct-head-iv-contrast)
* action[+]
  * textEquivalent = "MR Head without contrast"
  * resource = Reference(mr-head-without-contrast)  





Instance: ct-head-with-or-without-contrast
InstanceOf: ServiceRequest
Title: "Radiology - S3 Get Recommendations - Response - 1.3 Scored procedure option 2 - CT of head with or without contrast"
Description: "Radiology - S3 Get Recommendations - Response - 1.3 Scored procedure option 2 - CT of head with or without contrast"
Usage: #example
* meta.versionId = "v3"
* extension[cpg-rating-coded][+]
  * valueCodeableConcept = RecommendationRatingCS#green   
* extension[cpg-rating-coded][+]
  * valueCodeableConcept = RadiologyExposureRatingCS#yellow
* status = #active
* intent = #proposal
* code = #114054 "CT, head, without or without contrast"
* subject = Reference(patient-x)


Instance: ct-head-iv-contrast
InstanceOf: ServiceRequest
Title: "Radiology - S3 Get Recommendations - Response - 1.2 Scored procedure option 1 (original suggestion) - CT of head with IV contrast"
Description: "Radiology - S3 Get Recommendations - Response - 1.2 Scored procedure option 1 (original suggestion) - CT of head with IV contrast"
Usage: #example
* meta.versionId = "v3"
* extension[cpg-rating-coded][+]
  * valueCodeableConcept = RecommendationRatingCS#green   
* extension[cpg-rating-coded][+]
  * valueCodeableConcept = RadiologyExposureRatingCS#yellow

* status = #active
* intent = #proposal
* code = #114055 "CT, head, without IV contrast"
* subject = Reference(patient-x)


Instance: mr-head-without-contrast
InstanceOf: ServiceRequest
Title: "Radiology - S3 Get Recommendations - Response - 1.4 Scored procedure option 3 - MR of head without contrast"
Description: "Radiology - S3 Get Recommendations - Response - 1.4 Scored procedure option 3 - MR of head without contrast"
Usage: #example
* extension[cpg-rating-coded][+]
  * valueCodeableConcept = RecommendationRatingCS#green   
* extension[cpg-rating-coded][+]
  * valueCodeableConcept = RadiologyExposureRatingCS#yellow
* status = #active
* intent = #proposal
* code = #114092 "MR, head, without IV contrast"
* subject = Reference(patient-x)
