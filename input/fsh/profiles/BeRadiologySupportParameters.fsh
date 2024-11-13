Profile: BeRadiologySupportParameters
Parent: Parameters
Id: be-radiology-support-parameters
Title: "Radiology Support Options Parameters"
Description: "A profile for a Parameters resource providing radiology support options."
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter contains supportOptions 1..1 MS 
* parameter[supportOptions] 1..1 MS  // Must include at least one parameter
* parameter[supportOptions].name = "supportOptions" // Sets the parameter name to 'supportOptions'

// Define an 'option' structure with metadata
* parameter[supportOptions].part 1..* MS  // Each option must have at least one part
* parameter[supportOptions].part ^slicing.discriminator.type = #value
* parameter[supportOptions].part ^slicing.discriminator.path = "name"
* parameter[supportOptions].part ^slicing.rules = #open
* parameter[supportOptions].part contains option 1..* MS 
// Each part within the 'option' structure
* parameter[supportOptions].part[option].name = "option"  
* parameter[supportOptions].part[option].part ^slicing.discriminator.type = #value
* parameter[supportOptions].part[option].part ^slicing.discriminator.path = "name"
* parameter[supportOptions].part[option].part ^slicing.rules = #open
* parameter[supportOptions].part[option].part contains score 1..1 MS and 
    instruction 1..1 MS and
    supportOptionMetadata 1..1 MS
* parameter[supportOptions].part[option].part[score].name = "score"  // Numerical score required
* parameter[supportOptions].part[option].part[score].value[x] only integer
* parameter[supportOptions].part[option].part[score].valueInteger 1..1 MS 

* parameter[supportOptions].part[option].part[instruction].name = "instruction"  // Instruction string required  
* parameter[supportOptions].part[option].part[instruction].part ^slicing.discriminator.type = #value
* parameter[supportOptions].part[option].part[instruction].part ^slicing.discriminator.path = "name"
* parameter[supportOptions].part[option].part[instruction].part ^slicing.rules = #open
* parameter[supportOptions].part[option].part[instruction].part contains NL 0..1 MS
    and FR 0..1 MS
* parameter[supportOptions].part[option].part[instruction].part[NL].name = "NL"  // Language is 'NL'
* parameter[supportOptions].part[option].part[instruction].part[NL].value[x] only string
* parameter[supportOptions].part[option].part[instruction].part[NL].valueString 1..1 MS
* parameter[supportOptions].part[option].part[instruction].part[FR].name = "FR"  // Language is 'FR'
* parameter[supportOptions].part[option].part[instruction].part[FR].value[x] only string
* parameter[supportOptions].part[option].part[instruction].part[FR].valueString 1..1 MS 

* parameter[supportOptions].part[option].part[supportOptionMetadata].name = "supportOptionMetadata"  // Metadata for each option
* parameter[supportOptions].part[option].part[supportOptionMetadata].part ^slicing.discriminator.type = #value
* parameter[supportOptions].part[option].part[supportOptionMetadata].part ^slicing.discriminator.path = "name"
* parameter[supportOptions].part[option].part[supportOptionMetadata].part ^slicing.rules = #open
* parameter[supportOptions].part[option].part[supportOptionMetadata].part contains RelativeCost 1..1 MS
    and RadiationLevel 1..1 MS
    and IsIntended 1..1 MS
* parameter[supportOptions].part[option].part[supportOptionMetadata].part[RelativeCost].name = "RelativeCost" // Cost indication
* parameter[supportOptions].part[option].part[supportOptionMetadata].part[RelativeCost].value[x] only string
* parameter[supportOptions].part[option].part[supportOptionMetadata].part[RelativeCost].valueString 1..1 MS 
* parameter[supportOptions].part[option].part[supportOptionMetadata].part[RadiationLevel].name = "RadiationLevel"  // Radiation level as integer
* parameter[supportOptions].part[option].part[supportOptionMetadata].part[RadiationLevel].value[x] only integer
* parameter[supportOptions].part[option].part[supportOptionMetadata].part[RadiationLevel].valueInteger 1..1 MS 
* parameter[supportOptions].part[option].part[supportOptionMetadata].part[IsIntended].name = "IsIntended" // Intended status as Boolean
* parameter[supportOptions].part[option].part[supportOptionMetadata].part[IsIntended].value[x] only boolean
* parameter[supportOptions].part[option].part[supportOptionMetadata].part[IsIntended].valueBoolean 1..1 MS 
