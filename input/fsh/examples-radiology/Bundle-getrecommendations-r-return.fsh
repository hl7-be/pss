//Alias: $PSSQSIProcedures = 

Instance: getrecommendations-r-response
InstanceOf: PSSResponseBundle
Title: "Radiology - S3 Get Recommendations - Response - 1. Bundle"
Description: "Radiology - S3 Get Recommendations - Response - 1. Bundle"
Usage: #example
* identifier.value = "response1"
* timestamp = "2025-02-20T00:00:00Z"
* type = #collection
* entry[0].resource = getrecommendations-r-response-1
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad21"
* entry[+].resource = pss-ct-head-wo-iv-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad23"
* entry[+].resource = pss-mr-head-wo-iv-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639044ad77"
* entry[+].resource = pss-ct-head-wo-w-iv-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad22"



Instance: getrecommendations-r-response-1
InstanceOf: PSSResponseRequestGroup
Title: "Radiology - S3 Get Recommendations - Response - 1.1. RequestGroup"
Description: "Radiology - S3 Get Recommendations - Response - 1.1. RequestGroup"
Usage: #example
//* id = "getrecommendations-r-response-1"
* status = #active
* intent = #proposal
* subject = Reference(patient-r)
* action[0]
  * selectionBehavior = #at-most-one 
  * documentation[+]
    * type = #justification
    * label = "Appropriateness Scoring Guidelines"
      * extension[http://hl7.org/fhir/StructureDefinition/language].valueCode = #en
    * url = "https://environment.esriguide.org/suportingContent/12345)"

  * action[0]
    * textEquivalent = "CT, head, wo iv contrast"
    * resource = Reference(pss-ct-head-wo-iv-contrast)
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #radiationexposure
      * extension[ratingValue].valueRatio
        * numerator.value = 3
        * denominator.value = 5
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 9
        * denominator.value = 10


  * action[+]
    * textEquivalent = "MR, head, wo iv contrast"
    * resource = Reference(pss-mr-head-wo-iv-contrast)  
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #radiationexposure
      * extension[ratingValue].valueRatio
        * numerator.value = 0
        * denominator.value = 5
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 8
        * denominator.value = 10


  * action[+]
    * textEquivalent = "CT, head, wo/w iv contrast"
    * resource = Reference(pss-ct-head-wo-w-iv-contrast)
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #radiationexposure
      * extension[ratingValue].valueRatio
        * numerator.value = 3
        * denominator.value = 5
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 6
        * denominator.value = 10


// Instance: pss-ct-head-wo-iv-contrast
// InstanceOf: PSSResponseServiceRequest
// Title: "Radiology - S3 Get Recommendations - Response - 1.2 Scored procedure option 1 (original suggestion) - CT head wo IV contrast"
// Description: "Radiology - S3 Get Recommendations - Response - 1.2 Scored procedure option 1 (original suggestion) - CT head wo IV contrast"
// Usage: #example
// * meta.versionId = "v3"
// * status = #active
// * intent = #proposal
// * code = PSSQSIProcedures#114055 "CT, head, wo iv contrast"
// * subject = Reference(patient-r)
// * identifier.value = "uuid"


Instance: pss-mr-head-wo-iv-contrast
InstanceOf: PSSResponseServiceRequest
Title: "Radiology - S3 Get Recommendations - Response - 1.4 Scored procedure option 2 - MR head wo iv contrast"
Description: "Radiology - S3 Get Recommendations - Response - 1.4 Scored procedure option 2 - MR head wo iv contrast"
Usage: #example
* meta.versionId = "v3"
* status = #active
* intent = #proposal
* code = PSSQSIProcedures#114092 "MR, head, wo iv contrast"
* subject = Reference(patient-r)
* identifier.value = "114092"


Instance: pss-ct-head-wo-w-iv-contrast
InstanceOf: PSSResponseServiceRequest
Title: "Radiology - S3 Get Recommendations - Response - 1.3 Scored procedure option 3 - CT head wo/w iv contrast"
Description: "Radiology - S3 Get Recommendations - Response - 1.3 Scored procedure option 3 - CT head wo/w iv contrast"
Usage: #example
* meta.versionId = "v3"
* status = #active
* intent = #proposal
* code = $PSSQSIProcedures#114054 "CT, head, wo/w iv contrast"
* subject = Reference(patient-r)
* identifier.value = "114054"