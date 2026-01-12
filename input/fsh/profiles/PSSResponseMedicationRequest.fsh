Profile: PSSResponseMedicationRequest
Title: "PSS Response Medication Request"
Description: "The PSS Response Medication Request is used when the PSS system returns a MedicationRequest"
Parent: CPGMedicationRequest
* subject 1..1
* subject only Reference(PSSPatient)
* intent = #proposal
// * extension contains
//   PSSStructuredRating named structured-rating 0..*

* priority MS
