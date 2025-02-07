Extension: CPGRatingCoded
Id: cpg-rating-coded
Title: "CPG Rating Extension"
Description: "A clinician-friendly rating, or score, for the recommendation; patient-friendly if the recommendation is patient-facing."
Context: Resource, PlanDefinition.action
* ^experimental = false
* . ^short = "CPG Rating Extension"
* . ^definition = "A clinician-friendly rating, or score, for the recommendation; patient-friendly if the recommendation is patient-facing."
* value[x] only Quantity or Range or Ratio or CodeableConcept