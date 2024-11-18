Profile: BeAntiMicroGetIndicationsInput
Parent: Parameters
Id: be-antimicro-get-indications-input
Title: "Antimicrobial Request Data"
Description: "A Parameters profile that defines the required data for an antimicrobial request."

* parameter ^slicing.discriminator.type = #value // Slice based on the value of `parameter.name`
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.ordered = false
* parameter ^slicing.rules = #open // Allow additional elements not explicitly sliced

// Define slices for each `parameter` based on `parameter.name`
* parameter contains age 1..1 MS and indication 1..1 MS and intolerances 0..* MS and intention 1..1 MS

// Define constraints for each slice

// Age slice: includes a valueAge with age-specific constraints
* parameter[age].name = "age"
* parameter[age].valueAge 1..1 MS 
* parameter[age].valueAge.value 1..1 MS  // Mandatory age value
* parameter[age].valueAge.system = "http://unitsofmeasure.org" (exactly) // Fixed system for age unit

// Indication slice: includes a valueCodeableConcept with SNOMED coding for indication
* parameter[indication].name = "indication"
* parameter[indication].valueCodeableConcept 1..1 MS 
* parameter[indication].valueCodeableConcept.coding 1..1 MS 
* parameter[indication].valueCodeableConcept.coding.system = "http://snomed.info/sct" (exactly) // Fixed system for SNOMED

// intolerances slice: includes a valueCoding with SNOMED codes for intolerances
* parameter[intolerances].name = "intolerances"
* parameter[intolerances].valueCoding 1..1 MS 
* parameter[intolerances].valueCoding.system = "http://snomed.info/sct" (exactly) // Fixed system for SNOMED

// intention slice: includes a valueCoding with ATC code for antimicrobial drug
* parameter[intention].name = "intention"
* parameter[intention].valueCoding 1..1 MS 
* parameter[intention].valueCoding.system = "http://www.whocc.no/atc" (exactly) // Fixed system for ATC
