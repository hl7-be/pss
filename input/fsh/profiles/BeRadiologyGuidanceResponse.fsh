Profile: BeRadiologyGuidanceResponse
Parent: GuidanceResponse
Id: be-radiology-guidance-response
Title: "Radiology Guidance Response"
Description: "A profile for a GuidanceResponse resource used for radiology indication."

* moduleUri 1..1 MS  // Must include a moduleUri
* moduleUri = "/radioGuidanceRequest" // Fixed to a specific URI for radiology guidance
* reasonCode 1..1 MS  // Reason code for the guidance, such as the condition being evaluated
* reasonCode.coding.system = $qsi-indications // Bound to the QSI indications system
* outputParameters 1..1 MS  // Must link to output Parameters
* outputParameters only Reference(BeRadiologySupportParameters) // Restricted to the Parameters profile defined below
