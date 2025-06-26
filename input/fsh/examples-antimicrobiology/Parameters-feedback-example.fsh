Instance: feedback-example
InstanceOf: Parameters
Usage: #example
* parameter[0]
  * name = "exact"
  * valueBoolean = true
* parameter[+]
  * name = "property"
  * part[0]
    * name = "code"
    * valueCode = #focus
  * part[+]
    * name = "value"
    * valueCode = #top
* parameter[+]
  * name = "PSS-ID"
  * valueIdentifier.value = "5146ed13-c240-46e4-bf40-dab28fabc437"

* parameter[+]
  * name = "outcomeTimeStamp"
  * valueDateTime = "2025-05-28T10:10:00+02:00"
  
* parameter[+]
  * name = "outcome"
  * valueCode = #overridden
 
* parameter[+]
  * name = "suggestionOutcome"
  * part[+]
    * name = "suggestionId"
    * valueIdentifier.value = "baf274d9-21b9-49a5-bdd1-e593663dd43c"
  * part[+]
    * name = "outcome"
    * valueCode = #overridden
  * part[+]
    * name = "overrideReason"
    * valueCodeableConcept = https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSDeviationReason#otherReason
    * valueCodeableConcept.text = "Patient prefers local application"

* parameter[+]
  * name = "suggestionOutcome"
  * part[+]
    * name = "suggestionId"
    * valueIdentifier.value = "baf274d9-21b9-49a5-bdd1-e593663dd43c"
  * part[+]
    * name = "outcome"
    * valueCode = #overridden
  * part[+]
    * name = "overrideReason"
    * valueCodeableConcept = https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSDeviationReason#otherReason
    * valueCodeableConcept.text = "Patient prefers local application"

* parameter[+]
  * name = "suggestionOutcome"
  * part[+]
    * name = "suggestionId"
    * valueIdentifier.value = "other"
  * part[+]
    * name = "outcome"
    * valueCode = #overridden
  * part[+]
    * name = "overrideReason"
    * valueCodeableConcept = https://www.ehealth.fgov.be/standards/fhir/pss/CodeSystem/PSSDeviationReason#otherReason
    * valueCodeableConcept.text = "Patient prefers their own medicine"
  * part[+]
    * name = "otherOptionSelected"
    * valueString = "Patient prefers local application"

 
  
  
 