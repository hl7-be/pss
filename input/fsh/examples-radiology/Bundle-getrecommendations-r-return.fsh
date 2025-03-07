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
* entry[+].resource = ct-head-with-or-without-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad23"
* entry[+].resource = ct-head-iv-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad22"
* entry[+].resource = mr-head-without-contrast
* entry[=].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639044ad77"



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
    * textEquivalent = "CT Head with or without contrast"
    * resource = Reference(ct-head-with-or-without-contrast)
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #radiationexposure
      * extension[ratingValue].valueRatio
        * numerator.value = 2
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Whoa!...."

  * action[+]
    * textEquivalent = "CT Head with IV contrast"
    * resource = Reference(ct-head-iv-contrast)
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #radiationexposure
      * extension[ratingValue].valueRatio
        * numerator.value = 2
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Whoa!...."
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 1
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Not recommended"

  * action[+]
    * textEquivalent = "MR Head without contrast"
    * resource = Reference(mr-head-without-contrast)  
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #radiationexposure
      * extension[ratingValue].valueRatio
        * numerator.value = 2
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Whoa!...."
    * extension[structured-rating][+]
      * extension[ratingType].valueCode = #overall
      * extension[ratingValue].valueRatio
        * numerator.value = 1
        * denominator.value = 3
      * extension[ratingText].valueMarkdown = "Not recommended"





Instance: ct-head-with-or-without-contrast
InstanceOf: PSSResponseServiceRequest
Title: "Radiology - S3 Get Recommendations - Response - 1.3 Scored procedure option 2 - CT of head with or without contrast"
Description: "Radiology - S3 Get Recommendations - Response - 1.3 Scored procedure option 2 - CT of head with or without contrast"
Usage: #example
* meta.versionId = "v3"
* status = #active
* intent = #proposal
* code = $PSSQSIProcedures#114054 "CT, head, without or without contrast"
* subject = Reference(patient-r)


Instance: ct-head-iv-contrast
InstanceOf: PSSResponseServiceRequest
Title: "Radiology - S3 Get Recommendations - Response - 1.2 Scored procedure option 1 (original suggestion) - CT of head with IV contrast"
Description: "Radiology - S3 Get Recommendations - Response - 1.2 Scored procedure option 1 (original suggestion) - CT of head with IV contrast"
Usage: #example
* meta.versionId = "v3"
// * extension[structured-rating][+]
//   * extension[ratingType].valueCode = #radiationexposure
//   * extension[ratingValue].valueRatio
//     * numerator.value = 2
//     * denominator.value = 3
//   * extension[ratingText].valueMarkdown = "Whoa!...."
// * extension[structured-rating][+]
//   * extension[ratingType].valueCode = #overall
//   * extension[ratingValue].valueRatio
//     * numerator.value = 1
//     * denominator.value = 3
//   * extension[ratingText].valueMarkdown = "Not recommended"

* status = #active
* intent = #proposal
* code = PSSQSIProcedures#114055 "CT, head, without IV contrast"
* subject = Reference(patient-r)


Instance: mr-head-without-contrast
InstanceOf: PSSResponseServiceRequest
Title: "Radiology - S3 Get Recommendations - Response - 1.4 Scored procedure option 3 - MR of head without contrast"
Description: "Radiology - S3 Get Recommendations - Response - 1.4 Scored procedure option 3 - MR of head without contrast"
Usage: #example
// * extension[structured-rating][+]
//   * extension[ratingType].valueCode = #radiationexposure
//   * extension[ratingValue].valueRatio
//     * numerator.value = 2
//     * denominator.value = 3
//   * extension[ratingText].valueMarkdown = "Whoa!...."
// * extension[structured-rating][+]
//   * extension[ratingType].valueCode = #overall
//   * extension[ratingValue].valueRatio
//     * numerator.value = 1
//     * denominator.value = 3
//   * extension[ratingText].valueMarkdown = "Not recommended"
* status = #active
* intent = #proposal
* code = PSSQSIProcedures#114092 "MR, head, without IV contrast"
* subject = Reference(patient-r)
