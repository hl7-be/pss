Logical: PSSRequest
Id: PSSRequest
Title: "PSS Request"
Description: "A request for PSS (Prescriber Support System) results."
* recordedDate 1..1 date "Date on which the information was recorded"
* pssidentifier 1..1 Identifier "Identifier of the exchange session"
* examination 0..1 Reference "The ID of the examination the prescriber wants to prescribe"
* indication 1..* CodeableConcept "Indication that triggers the PSS request, from structured list or free text"
* supportingInfo 1..1 BackboneElement "Information useful for PSS proposals"
  * patientAge 1..1 Age "Age of the patient"
  * patientGender 1..1 CodeableConcept "Gender of the patient"


Logical: PSSResponse
Id: PSSResponse
Title: "PSS Response"
Description: "A response containing the results from the PSS."
* recordedDate 1..1 date "Date on which the information was recorded"
* pssidentifier 1..1 Identifier "Identifier of the exchange session"
* indication 1..1 CodeableConcept "Condition that triggered the PSS response"
* status 1..1 CodeableConcept "Status of the response"
* treatmentOptions 1..* BackboneElement "List of search results provided by PSS"
  * identifier 1..1 Identifier "Identifier of the result"
  * instruction 1..1 CodeableConcept "Code of the examination"
//  * scoreValue 1..1 decimal "PSS score value"
  * scoreRating 1..1 CodeableConcept "Code (e.g. color code) associated with the score (Red, Orange, Green)"
  * radiationExposure 1..1 Quantity "Radiation exposure associated with the response"
//  * isRequested 1..1 boolean "Indicates if the examination is requested by PSS"
* evidenceSource 1..1 Reference(ResearchStudy) "Link to a source (study, publication, etc.) for the PSS"



Logical: PSSFeedbackModel
Id: PSSFeedbackModel
Title: "PSS Feedback"
Description: "Feedback containing the acceptance of the PSS results."

* PSS-ID 1..1 string  "The uuid from the response - the ID of the RequestGroup"
* outcomeTimeStamp 1..1 dateTime "The time when the feedback is given"
* outcome 1..1 code "accepted, discarded, overridden"
* suggestionOutcome 0..* BackboneElement "List of suggestions provided by PSS for which feedback is given"
  * suggestionId 0..1 string "The suggestion ID"
  * outcome 1..1 code "accepted or overridden"
  * overrideReason 0..1 CodeableConcept "The reason for overriding - code or text"


  

