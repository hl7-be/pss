Profile: BeRadiologyGuidanceBundle
Parent: Bundle
Id: be-radiology-guidance-bundle
Title: "Radiology Response Bundle"
Description: "A profile for a Bundle that contains radiology guidance and parameters."

* type = #collection (exactly) // Bundle type is 'collection'
* entry 1..* MS  // Bundle must have at least one entry
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains guidance 1..1 MS and parameters 1..1 MS 

// Define constraints for entries within the Bundle
* entry[guidance].resource 1..1 MS  // The first entry must reference a GuidanceResponse resource
* entry[guidance].resource only BeRadiologyGuidanceResponse // Must be a RadiologyGuidanceResponse instance

* entry[parameters].resource 1..1 MS  // The second entry must reference a Parameters resource
* entry[parameters].resource only BeRadiologySupportParameters // Must be a RadiologySupportParameters instance
