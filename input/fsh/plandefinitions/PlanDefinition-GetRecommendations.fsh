Instance: GetRecommendations
InstanceOf: PlanDefinition
Description: "Get recommendations for potential treatments based on patient information"

Usage: #example
* url = "http://fhir.org/guides/cqf/cpg/example/PlanDefinition/GetRecommendations"
* type = $plan-definition-type#eca-rule
* status = #active
* action
  * title = "Determine potential treatments given relevant patient information"
  * description = "Given input data, including age, gender, symptoms, diagnoses, and possible orders, determine potential treatments"
  * code.coding[0]
    * system = "http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process-cs"
    * code = #guideline-based-care
  * input[0]
    * type = #Patient
    * mustSupport[0] = "birthDate"
    * mustSupport[+] = "gender"
  * input[+]
    * type = #Observation
    * mustSupport[0] = "category"
    * mustSupport[+] = "code"
    * mustSupport[+] = "value"
    * codeFilter
      * path = "category"
      * code = $observation-category#vital-signs
  * input[+]
    * type = #Condition
    * mustSupport[0] = "category"
    * mustSupport[+] = "code"
    * mustSupport[+] = "clinicalStatus"
    * mustSupport[+] = "verificationStatus"
    * mustSupport[+] = "onset"
    * codeFilter
      * path = "category"
      * code[0] = $condition-category#encounter-diagnosis
      * code[+] = $condition-category#problem-list-item
  * input[+]
    * type = #ServiceRequest
    * mustSupport[0] = "category"
    * mustSupport[+] = "code"
  * output[0]
    * type = #ServiceRequest
    * profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest"
  * output[+]
    * type = #MedicationRequest
    * profile = Canonical(PSSResponseMedicationRequest)
