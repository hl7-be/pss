Profile: BeAntiMicroGuidanceBundle
Parent: Bundle
Id: be-antimicro-guidance-bundle
Title: "Antimicrobial Response Bundle"
Description: "Profile for antimicrobial response with slicing based on entry.resource types."

* type = #collection

// Slice Bundle.entry based on the type of the resource in each entry
* entry ^slicing.discriminator.type = #type
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry ^slicing.discriminator.path = "resource"
* entry contains guidance 1..1 MS and parameters 1..1 MS and outcome 1..1 MS

// Define entry slices for specific resource types
* entry[guidance].resource only BeAntiMicroGuidanceResponse

* entry[parameters].resource only BeAntiMicroSupportParameters

* entry[outcome].resource only BeAntiMicroOutcome
