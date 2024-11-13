Profile: BeAntiMicroGuidanceResponse
Parent: GuidanceResponse
Id: be-antimicro-guidance-response
Title: "Antimicrobial Guidance Response"
Description: "Profile for GuidanceResponse with specific constraints for antimicrobial guidance response."

* moduleUri = "/antimicroGuidanceRequest" 
* reasonCode.coding 1..1 MS 
* reasonCode.coding.system = "http://snomed.info/sct" (exactly)
* outputParameters only Reference(BeAntiMicroSupportParameters)
* evaluationMessage only Reference(BeAntiMicroOutcome)
