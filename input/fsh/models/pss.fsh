Logical: PSSRequest
Id: PSSRequest
Title: "PSS Request"
Description: "A request for PSS (Prescriber Support System) suggestions."
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
Description: "A response from PSS providing recommendations."
* recordedDate 1..1 date "Date on which the information was recorded"
* pssidentifier 1..1 Identifier "Identifier of the exchange session"
* indication 1..1 CodeableConcept "Condition that triggered the PSS response"
* status 1..1 CodeableConcept "Status of the response"
* treatmentOptions 1..* BackboneElement "List of recommendations provided by PSS"
  * identifier 1..1 Identifier "Identifier of the recommendation"
  * instruction 1..1 CodeableConcept "Code of the examination"
  * scoreValue 1..1 decimal "PSS score value"
  * scoreRating 1..1 CodeableConcept "Color associated with the score (Red, Orange, Green)"
  * radiationExposure 1..1 Quantity "Radiation exposure associated with the response"
//  * isRequested 1..1 boolean "Indicates if the examination is requested by PSS"
* evidenceSource 1..1 Reference(ResearchStudy) "Link to a source (study, publication, etc.) for the PSS"
