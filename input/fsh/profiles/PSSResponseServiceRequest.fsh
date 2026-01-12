Profile: PSSResponseServiceRequest
Parent: CPGServiceRequest
Title: "PSS Response Service Request"
Description: "The PSS Response Service Request is used when the PSS system returns a ServiceRequest"
* subject 1..1
* subject only Reference(PSSPatient)
* intent = #proposal
// * extension contains
//   // http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rating named cpg-rating 0..1 and
//   // PSSCodedRating named coded-rating 0..1 and
//   PSSStructuredRating named structured-rating 0..*
* code ^binding.description = "Codes for tests or services that can be carried out"

* priority MS
