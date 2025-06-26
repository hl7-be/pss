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
* outcome 1..1 code "accepted, rejected, overridden"
* suggestionOutcome 0..* BackboneElement "List of suggestions provided by PSS for which feedback is given"
  * suggestionId 0..1 string "The suggestion ID - or 'other' if the prescriber preferred another option"
// this can be the action linkId. or the request identifier. but action.linkedId will be used by tooling
// or both:
//  * suggestionLinkId would be useful if we wanted to link to plandef. but we can do that indirectly
  * outcome 1..1 code "accepted or overridden"
  * overrideReason 0..1 CodeableConcept "The reason for overriding - code or text"
// there may be a taxonomy.
// https://cdsic.ahrq.gov/cdsic/override-taxonomy
// https://cdsic.ahrq.gov/sites/default/files/2024-07/SRF_Taxonomy%20of%20PC%20CDS%20Override%20Recommendations_508_0.pdf
  * otherOptionSelected 0..1 string "A brief description of another option selected by the prescriber. Only present if the suggestionId is 'other'."

  
Logical: PSSConsentModel
Id: PSSConsentModel
Title: "PSS Consent"
Description: "Consent statement about using PSS and agreeing with (or opting out of) the Terms and Conditions."

* HCP-ID 1..1 string  "The anonymised ID of the healthcare professional"
* recordedDate 1..1 date "Date on which the information was recorded"
* instruction 1..1 string "The instruction to the HCP"
* termsConditions 1..1 BackboneElement "Terms and Conditions"
  * policy 1..1 uri "Link to the Terms and Conditions"
  * version 1..1 string "Version of the Terms and Conditions"
* consent 1..1 code "accepted, rejected"
* provision 0..1 BackboneElement "Provision of the consent"
  * provisionType 1..1 code "opt-in, opt-out"
  * provisionStatus 1..1 code "accepted, rejected"


