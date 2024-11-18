Instance: radiogetindicationspayload
InstanceOf: BeRadiologyGetIndicationsInput
Usage: #example
* parameter[0].name = "age"
* parameter[=].valueAge.value = 35
* parameter[=].valueAge.system = "http://unitsofmeasure.org"
* parameter[=].valueAge.code = #a
* parameter[+].name = "gender"
* parameter[=].valueCode = #female
* parameter[+].name = "indication_proposal"
* parameter[=].valueCodeableConcept = $sct#20262006 "Ataxie"
* parameter[+].name = "freetext_indication"
* parameter[=].valueString = "ataxie"
* parameter[+].name = "intention"
* parameter[=].valueCodeableConcept = $qsi-examinations#114054 "CT, hoofd, met iv-contrast"