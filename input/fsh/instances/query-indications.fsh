Instance: query-indications
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "age"
* parameter[=].valueAge = 37 'a' "years"
* parameter[+].name = "gender"
* parameter[=].valueCode = #female
* parameter[+].name = "indicationCode"
* parameter[=].valueCodeableConcept = $sct#763597000
* parameter[+].name = "indicationText"
* parameter[=].valueString = "Ataxia"
* parameter[+].name = "proposedExamination"
* parameter[=].valueCodeableConcept = $sct#114055