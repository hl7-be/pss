Instance: PSSProviderCapabilityStatement
InstanceOf: CapabilityStatement
Title: "PSS Provider System Capability Statement"
Description: "CapabilityStatement for PSS provider systems."
Usage: #definition

* status = #active
* date = "2025-05-22"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* format = #xml
* rest[0]
  * mode = #server
  * resource[0]
    * type = #PlanDefinition
    * operation[0].name = "$apply"
    * operation[0].definition = "http://hl7.org/fhir/uv/cpg/OperationDefinition/PlanDefinition-apply"

  * resource[1].type = #Consent
  * resource[1].interaction[0].code = #create

  * resource[2].type = #Bundle
  * resource[2].interaction[0].code = #read
