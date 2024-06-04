Extension: BeExtPssMetaData
Id: be-ext-pss-metadata
Title: "BeExtPssMetaData"
Description: "Extra information provided by the PSS regarding the proposal for Request"
* ^context.type = #element
* ^context.expression = "CarePlan.activity"
* . ^short = "Extra information"
* . ^definition = "Extra information provided by the PSS regarding the proposal for Request"
* extension contains code 1..1 MS and 
     value 1..1 MS 
* extension[code].value[x] only CodeableConcept 