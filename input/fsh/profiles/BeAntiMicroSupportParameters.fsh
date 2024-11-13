Profile: BeAntiMicroSupportParameters
Parent: Parameters
Id: be-antimicro-support-parameters
Title: "Antimicrobial Parameters"
Description: "Profile for Parameters with slices based on parameter.name and parameter.part.name."

* parameter ^slicing.discriminator[0].path = "name"
* parameter ^slicing.discriminator[0].type = #value
* parameter ^slicing.ordered = false
* parameter ^slicing.rules = #open
* parameter contains supportOptions 1..1

// supportOptions slice: contains parts with specific names
* parameter[supportOptions].name = "supportOptions"
* parameter[supportOptions].part ^slicing.discriminator[0].path = "name"
* parameter[supportOptions].part ^slicing.discriminator[0].type = #value
* parameter[supportOptions].part ^slicing.ordered = false
* parameter[supportOptions].part ^slicing.rules = #open

* parameter[supportOptions].part contains option 0..*
* parameter[supportOptions].part[option].name = "option"
* parameter[supportOptions].part[option].part ^slicing.discriminator[0].path = "name"
* parameter[supportOptions].part[option].part ^slicing.discriminator[0].type = #value
* parameter[supportOptions].part[option].part ^slicing.ordered = false
* parameter[supportOptions].part[option].part ^slicing.rules = #open

// Define sub-slices within each option for the part elements
* parameter[supportOptions].part[option].part contains isIntended 1..1 MS and score 1..1 MS and instruction 1..1 MS and evidenceSummary 1..1 MS

// Constraints for each sub-slice in option
* parameter[supportOptions].part[option].part[isIntended].name = "isIntended"
* parameter[supportOptions].part[option].part[isIntended].valueBoolean 1..1 MS 

* parameter[supportOptions].part[option].part[score].name = "score"
* parameter[supportOptions].part[option].part[score].valueInteger 1..1 MS 

* parameter[supportOptions].part[option].part[instruction].name = "instruction"
* parameter[supportOptions].part[option].part[instruction].part ^slicing.discriminator[0].path = "name"
* parameter[supportOptions].part[option].part[instruction].part ^slicing.discriminator[0].type = #value
* parameter[supportOptions].part[option].part[instruction].part ^slicing.ordered = false
* parameter[supportOptions].part[option].part[instruction].part ^slicing.rules = #open
* parameter[supportOptions].part[option].part[instruction].part contains NL 0..1 MS and FR 0..1 MS
* parameter[supportOptions].part[option].part[instruction].part[NL].name = "NL"
* parameter[supportOptions].part[option].part[instruction].part[NL].valueString 1..1 MS
* parameter[supportOptions].part[option].part[instruction].part[FR].name = "FR" 
* parameter[supportOptions].part[option].part[instruction].part[FR].valueString 1..1 MS 

* parameter[supportOptions].part[option].part[evidenceSummary].name = "evidenceSummary"
* parameter[supportOptions].part[option].part[evidenceSummary].part ^slicing.discriminator[0].path = "name"
* parameter[supportOptions].part[option].part[evidenceSummary].part ^slicing.discriminator[0].type = #value
* parameter[supportOptions].part[option].part[evidenceSummary].part ^slicing.ordered = false
* parameter[supportOptions].part[option].part[evidenceSummary].part ^slicing.rules = #open
* parameter[supportOptions].part[option].part[evidenceSummary].part contains NL 0..1 MS and FR 0..1 MS
* parameter[supportOptions].part[option].part[evidenceSummary].part[NL].valueString 1..1 MS 
* parameter[supportOptions].part[option].part[evidenceSummary].part[NL].name = "NL" 
* parameter[supportOptions].part[option].part[evidenceSummary].part[FR].valueString 1..1 MS 
* parameter[supportOptions].part[option].part[evidenceSummary].part[FR].name = "FR"
